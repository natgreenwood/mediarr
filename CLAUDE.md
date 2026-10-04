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

## External Resources

- Documentation: https://v2.dictionarry.dev/
- Profilarr: https://github.com/Dictionarry-Hub/profilarr
- Schema: https://github.com/Dictionarry-Hub/schema
- Architecture: https://github.com/Dictionarry-Hub/profilarr/blob/develop/docs/ARCHITECTURE.md
- Project Issues: https://github.com/users/natgreenwood/projects/4/views/1
