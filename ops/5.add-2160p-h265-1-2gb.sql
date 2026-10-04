-- Custom format: 2160p H265 releases between 1GB and 2GB
-- All three conditions are required. Reuses the H265 regex from op 1.
-- Sonarr's size range excludes the minimum and includes the maximum,
-- so exactly 1GB matches "2160p H265 Under 1GB" instead of this format.

INSERT INTO custom_formats (name, description, include_in_rename)
VALUES ('2160p H265 1-2GB', '4K (2160p) H265/HEVC releases larger than 1GB and up to 2GB.', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p H265 1-2GB', 'H265', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
VALUES ('2160p H265 1-2GB', 'H265', 'H265');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p H265 1-2GB', '2160p', 'resolution', 'all', 0, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('2160p H265 1-2GB', '2160p', '2160p');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p H265 1-2GB', '1-2GB', 'size', 'all', 0, 1);
INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes)
VALUES ('2160p H265 1-2GB', '1-2GB', 1073741824, 2147483648);

-- Score in Nat's Balanced
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES ('Nat''s Balanced', '2160p H265 1-2GB', 'all', 75);
