# mediarr

A [Profilarr](https://github.com/Dictionarry-Hub/profilarr) database for Sonarr. It provides size-capped quality profiles that prefer high resolution and efficient codecs within a file-size budget.

## Profiles

| Profile | Size cap per file |
|---|---|
| Nat's Balanced (1GB) | 1GB |
| Nat's Balanced (2GB) | 2GB |
| Nat's Balanced (3GB) | 3GB |
| Nat's Balanced (4GB) | 4GB |
| Nat's Balanced (5GB) | 5GB |
| Nat's Balanced (7GB) | 7GB |
| Nat's Balanced (10GB) | 10GB |

All profiles share the same quality list: everything except Remux, Raw-HD, BR-DISK, Unknown and pre-release qualities, with upgrades allowed up to Bluray-2160p.

Within a profile, releases are scored by custom formats:

- **Resolution first.** 2160p beats 1080p, 1080p beats 720p, and 720p beats 480p.
- **Then codec and size.** Within a resolution, H265 beats H264. Within a codec, smaller size bands score higher, so you get the most efficient file at the best resolution that fits the cap.
- **Rejections.** Releases over the profile's cap, without an H264/H265 tag, or at an unscored resolution match no format. They fall below the minimum score of 5 and are rejected.
- **English only.** Releases whose languages don't include English score -1000 and are rejected.

## Usage

Requires Profilarr v2.0.0 or later. In Profilarr, add this repository as a database:

```
https://github.com/natgreenwood/mediarr
```

Then pick the profiles you want and sync them to your Sonarr instance.

## Structure

This follows the Profilarr Compliant Database (PCD) format, built on [Dictionarry-Hub/schema](https://github.com/Dictionarry-Hub/schema) v1.1.0:

- `pcd.json` is the database manifest.
- `ops/` holds append-only SQL operations, applied in numeric order, that build the custom formats, regexes and profiles.

## License

[MIT](LICENSE)
