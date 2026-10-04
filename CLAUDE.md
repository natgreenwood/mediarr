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

Operations are **immutable once published** - they cannot be modified after commit.

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
- **One op per format** (formats with their profile score in the same op), and one op per profile.

### Custom format conditions

The schema doesn't constrain `custom_format_conditions.type`. The values Profilarr's sync recognises (from `src/lib/server/sync/customFormats/transformer.ts`) are:

| type | detail table | notes |
|---|---|---|
| `release_title`, `release_group`, `edition` | `condition_patterns` | references a `regular_expressions` row by name |
| `resolution` | `condition_resolutions` | `360p` `480p` `540p` `576p` `720p` `1080p` `2160p` |
| `size` | `condition_sizes` | bytes (1GB = 1073741824); sent to Sonarr as GB. Sonarr's range excludes the min and includes the max |
| `source`, `language`, `indexer_flag`, `release_type`, `year` | `condition_<type>s` | `release_type` is Sonarr-only |
| `quality_modifier` | `condition_quality_modifiers` | Radarr-only, skipped for Sonarr |

All conditions in this repo use `arr_type = 'all'`, `required = 1`.

### Validating ops

Replay the schema plus all ops into a scratch SQLite DB with foreign keys on. The `0.schema.sql`–`3.*.sql` files come from a clone of `Dictionarry-Hub/schema` at tag `1.1.0`. This must run in zsh, where `ls` may be aliased, so use `command ls` and a `while read` loop:

```sh
SCHEMA=/path/to/schema/ops DB=/tmp/pcd-test.db; rm -f $DB
(echo "PRAGMA foreign_keys=ON;"
 for f in 0.schema 1.languages 2.qualities 3.quality-group-member-position; do cat $SCHEMA/$f.sql; done
 command ls ops/*.sql | sort -t/ -k2 -n | while read -r f; do cat "$f"; done
 echo "PRAGMA foreign_key_check;") | sqlite3 -bail $DB && echo "LOADED OK"
```

## Current Contents

**Regexes**: `H265` (`[xh][ .]?265|\bHEVC(\b|\d)`) and `H264` (`[xh][ .]?264|\bAVC(\b|\d)`).

**Custom formats** are named `<res> <codec> <size band>`, e.g. `2160p H265 1-2GB` or `1080p H264 0-3GB`. Each requires a codec regex, a resolution and a size. Resolutions: 2160p, 1080p, 720p, 480p. Bands:
- H265: `Under 1GB`, then 1GB steps up to `9-10GB`.
- H264: one band per profile cap: `0-1GB`, `0-2GB`, `0-3GB`, `0-4GB`, `0-5GB`, `0-7GB` and `0-10GB`.

**Quality profiles**: Nat's Balanced (1GB), (2GB), (3GB), (4GB), (5GB), (7GB) and (10GB). Each one:
- uses the same quality list: everything enabled except Remux, Unknown, Raw-HD, BR-DISK and the pre-release qualities. The cutoff (`upgrade_until`) is `Bluray-2160p`.
- only scores formats whose max size is at or below the profile's cap: the H265 bands up to the cap plus the matching `H264 0-<cap>GB`.
- is scored in steps of 5. The order goes resolution (high to low), then H265 bands smallest first, then H264 last. The lowest score is 5.
- has minimum score 5 and upgrade score increment 10.
- has an upgrade-until score that equals its top format's score, except the 1GB, 2GB and 3GB profiles, which use 80. Those three predate the rescaling and keep the original 3GB scores (80…5).

When adding a new size-capped profile, copy the quality list and settings from the previous one, add the new H265 bands and an `H264 0-<cap>GB` format per resolution, and rescale scores so they step by 5 and end at 5.

## Sonarr / Profilarr Behaviour

- Profilarr matches profiles in Sonarr **by name**. Renaming a profile creates a new one in Sonarr on the next sync; the old one stays, and series must be moved manually.
- The minimum score of 5 means releases matching no format are rejected, e.g. no H264/H265 tag, over the profile's size cap, or 576p.
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
