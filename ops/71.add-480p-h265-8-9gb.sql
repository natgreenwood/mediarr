-- Custom format: 480p H265 releases larger than 8GB and up to 9GB
-- All three conditions are required. Reuses the H265 regex from op 1.
-- Sonarr's size range excludes the minimum and includes the maximum.

INSERT INTO custom_formats (name, description, include_in_rename)
VALUES ('480p H265 8-9GB', '480p H265/HEVC releases larger than 8GB and up to 9GB.', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('480p H265 8-9GB', 'H265', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
VALUES ('480p H265 8-9GB', 'H265', 'H265');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('480p H265 8-9GB', '480p', 'resolution', 'all', 0, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('480p H265 8-9GB', '480p', '480p');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('480p H265 8-9GB', '8-9GB', 'size', 'all', 0, 1);
INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes)
VALUES ('480p H265 8-9GB', '8-9GB', 8589934592, 9663676416);

-- Score in Nat's Balanced (10GB)
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES ('Nat''s Balanced (10GB)', '480p H265 8-9GB', 'all', 15);
