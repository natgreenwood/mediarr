-- Custom format: 480p H264 releases of 1GB or less
-- All three conditions are required. Reuses the H264 regex from op 7.
-- Scored in Nat's Balanced (1GB) in place of "480p H264 0-3GB".

INSERT INTO custom_formats (name, description, include_in_rename)
VALUES ('480p H264 0-1GB', '480p H264/AVC releases with a size of 1GB or less.', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('480p H264 0-1GB', 'H264', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
VALUES ('480p H264 0-1GB', 'H264', 'H264');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('480p H264 0-1GB', '480p', 'resolution', 'all', 0, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('480p H264 0-1GB', '480p', '480p');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('480p H264 0-1GB', '0-1GB', 'size', 'all', 0, 1);
INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes)
VALUES ('480p H264 0-1GB', '0-1GB', NULL, 1073741824);

-- Score in Nat's Balanced (1GB)
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES ('Nat''s Balanced (1GB)', '480p H264 0-1GB', 'all', 5);
