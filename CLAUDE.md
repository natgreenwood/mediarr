# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Mediarr is a **Profilarr Compliant Database (PCD)** - a Git-based configuration repository for managing quality profiles, custom formats, regex patterns, and settings for Sonarr. It follows Profilarr's DB-first architecture where all configuration changes are stored as append-only SQL operations and synced to live *arr instances.

## Dependencies

- **Profilarr**: v2.0.0 minimum required
- **Schema**: Dictionarry-Hub/schema v1.1.0 (base schema applied to all PCDs)

## PCD Structure

```
├── pcd.json      # Database manifest (identity, arr types, schema dependency, min version)
├── ops/          # Append-only SQL operations that build configuration state
└── tweaks/       # Optional local SQL adjustments applied after base ops
```

## How PCDs Work

A PCD describes the database as a **sequence of operations**, not final state. The schema (DDL, languages, canonical qualities) comes from the schema dependency declared in pcd.json. This repo's `ops/` directory adds data on top.

**Compilation order:**
1. Schema layer (from deps/schema/ops)
2. Base ops (this repo's published operations)
3. Tweaks layer (optional adjustments)
4. User ops (local overrides, never exported)

Operations are **immutable once published** (pushed to `main`); see Writing Ops.

## Configuration Types

PCDs can contain:
- **Quality Profiles**: Define quality preferences (e.g., "1080p Balanced", "2160p Quality")
- **Custom Formats**: Scoring rules using regex patterns to identify release attributes
- **Regex Patterns**: Patterns for matching release groups, sources, codecs, etc.
- **Delay Profiles**: Timing rules for upgrades
- **Media Management**: Naming and organization settings

## Writing Ops

- **File naming**: `ops/<n>.<slug>.sql`, numbered sequentially (Profilarr's exporter uses this format). Profilarr applies ops in **numeric** order, so `10` comes after `9`; a plain shell glob sorts them wrongly.
- **Published ops are never edited.** An op is published once it's on `main` on GitHub. To change published state, add a new op. Uncommitted or unpushed ops can still be edited in place.
- **Name-based keys**: tables reference each other by name (`custom_format_name`, `quality_profile_name`, `regular_expression_name`), not numeric ID. Insert parents before children. Escape apostrophes as `''`, e.g. `'Nat''s Balanced (3GB)'`.
- **Value guards**: `UPDATE`s include the expected old value in `WHERE` (e.g. `AND enabled = 1`) so upstream conflicts are detected.
- **Renames**: a single `UPDATE quality_profiles SET name = ...`. Foreign keys cascade the new name to child rows.
- **Deletes**: `DELETE FROM custom_formats WHERE name = ...` cascades to its conditions, their detail rows and its profile scores. Check that no other profile still uses the format first.
- **One op per format** (formats with their profile score in the same op), and one op per profile. A rescore of a profile is one op: guarded `UPDATE`s for every changed score plus the profile's new `upgrade_until_score`.
- **Bulk changes**: when a change touches dozens of ops (e.g. ops 80–120), generate them with a throwaway script in the scratchpad rather than by hand. Read the current scores from a replayed DB for the value guards, then check the final scores against the intended scheme.

### Custom format conditions

The schema doesn't constrain `custom_format_conditions.type`. The values Profilarr's sync recognises (from `src/lib/server/sync/customFormats/transformer.ts`) are:

| type | detail table | notes |
|---|---|---|
| `release_title`, `release_group`, `edition` | `condition_patterns` | references a `regular_expressions` row by name |
| `resolution` | `condition_resolutions` | `360p` `480p` `540p` `576p` `720p` `1080p` `2160p` |
| `size` | `condition_sizes` | bytes (1GB = 1073741824); sent to Sonarr as GB. Sonarr's range excludes the min and includes the max |
| `source`, `language`, `indexer_flag`, `release_type`, `year` | `condition_<type>s` | `release_type` is Sonarr-only |
| `quality_modifier` | `condition_quality_modifiers` | Radarr-only, skipped for Sonarr |

All conditions in this repo use `arr_type = 'all'`, `required = 1`, and `negate = 0` except `Not English`.

`language` conditions have two ways to invert: `negate = 1` matches when the release's languages **don't include** the language, and `except_language = 1` (sent to Sonarr as `exceptLanguage`) matches when the release has **any other** language. A multi-language release that includes English matches the second but not the first.

### Validating ops

Replay the schema plus all ops into a scratch SQLite DB with foreign keys on. The `0.schema.sql`–`3.*.sql` files come from a clone of `Dictionarry-Hub/schema` at tag `1.1.0`. This must run in zsh, where `ls` may be aliased, so use `command ls` and a `while read` loop:

```sh
# once: git clone -q --depth 1 --branch 1.1.0 https://github.com/Dictionarry-Hub/schema <scratch>/schema
SCHEMA=/path/to/schema/ops DB=/tmp/pcd-test.db; rm -f $DB
(echo "PRAGMA foreign_keys=ON;"
 for f in 0.schema 1.languages 2.qualities 3.quality-group-member-position; do cat $SCHEMA/$f.sql; done
 command ls ops/*.sql | sort -t/ -k2 -n | while read -r f; do cat "$f"; done
 echo "PRAGMA foreign_key_check;") | sqlite3 -bail $DB && echo "LOADED OK"
```

## Current Contents

**Regexes**: `H265` (`[xh][ .]?265|\bHEVC(\b|\d)`) and `H264` (`[xh][ .]?264|\bAVC(\b|\d)`).

**Size-band custom formats** are named `<res> <codec> <size band>`, e.g. `2160p H265 1-2GB` or `1080p H264 2-3GB`. Each requires a codec regex, a resolution and a size. Resolutions: 2160p, 1080p, 720p, 480p. Bands:
- H265: `Under 1GB`, then 1GB steps up to `9-10GB`.
- H264: `0-1GB`, then 1GB steps up to `9-10GB`, used by the 3GB profile and up. The 2GB profile still uses a single `0-2GB` band.

**Quality profiles**: Nat's Balanced (1GB), (2GB), (3GB), (4GB), (5GB), (7GB) and (10GB). Each one:
- uses the same quality list: everything enabled except Remux, Unknown, Raw-HD, BR-DISK and the pre-release qualities. The cutoff (`upgrade_until`) is `Bluray-2160p`.
- only scores formats whose max size is at or below the profile's cap: the H265 and H264 bands up to the cap. The 1GB and 2GB profiles use `H264 0-1GB` and `H264 0-2GB`.
- is scored in steps of 5. The order goes resolution (high to low), then H265 bands smallest first, then H264 bands smallest first. The lowest score is 5.
- has minimum score 5 and upgrade score increment 10.
- scores `Not English` at -1000.
- has an upgrade-until score that equals its top format's score (40 × the cap in GB, e.g. 400 for 10GB), except the 1GB and 2GB profiles, which use 80. Those two predate the rescaling and keep the original scores (80…5).

**Not English** (op 121): a single negated `language` condition on English. It matches releases whose languages don't include English, so multi-language releases with English aren't matched. It's scored -1000 in every profile. The penalty must outweigh the highest top score (currently 400), so every non-English release ends up below the minimum of 5. If a profile's top score ever goes above 995, make the penalty bigger.

When adding a new size-capped profile, copy the quality list and settings from the previous one, add the new H265 and H264 1GB bands per resolution, and rescale scores so they step by 5 and end at 5. Also score `Not English` at -1000.

## Sonarr / Profilarr Behaviour

- Profilarr matches profiles in Sonarr **by name**. Renaming a profile creates a new one in Sonarr on the next sync; the old one stays, and series must be moved manually.
- Sonarr **adds up** the scores of every format a release matches. So size bands for the same codec and resolution must not overlap (that's why the old `H264 0-<cap>GB` formats were replaced rather than kept alongside the 1GB bands).
- The minimum score of 5 means releases matching no format are rejected, e.g. no H264/H265 tag, over the profile's size cap, or 576p. Non-English releases are rejected because of the -1000.
- Formats deleted from the PCD may be left in Sonarr unused after a sync (e.g. the old `H264 0-3GB` to `0-10GB`); delete them in Sonarr by hand.
- Pre-release qualities, BR-DISK, CAM, etc. are Radarr-only (no Sonarr API mapping), so toggling them has no effect in Sonarr.

## Git Workflow

- Commit directly to `main`; no feature branches or PRs. Commit only when asked, and only push when told to push. The user often says "commit only".
- `git fetch` before committing or pushing, because PRs are occasionally merged on GitHub.
- `gh` is installed and authenticated as natgreenwood; use it for PRs, issues and checking CI.

## External Resources

- Documentation: https://v2.dictionarry.dev/
- Profilarr: https://github.com/Dictionarry-Hub/profilarr
- Schema: https://github.com/Dictionarry-Hub/schema
- Architecture: https://github.com/Dictionarry-Hub/profilarr/blob/develop/docs/ARCHITECTURE.md
- Project Issues: https://github.com/users/natgreenwood/projects/4/views/1
