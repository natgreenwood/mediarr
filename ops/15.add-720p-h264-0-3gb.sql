-- Custom format: 720p H264 releases of 3GB or less
-- All three conditions are required. Reuses the H264 regex from op 7.

INSERT INTO custom_formats (name, description, include_in_rename)
VALUES ('720p H264 0-3GB', '720p H264/AVC releases with a size of 3GB or less.', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p H264 0-3GB', 'H264', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
VALUES ('720p H264 0-3GB', 'H264', 'H264');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p H264 0-3GB', '720p', 'resolution', 'all', 0, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('720p H264 0-3GB', '720p', '720p');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p H264 0-3GB', '0-3GB', 'size', 'all', 0, 1);
INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes)
VALUES ('720p H264 0-3GB', '0-3GB', NULL, 3221225472);

-- Score in Nat's Balanced
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES ('Nat''s Balanced', '720p H264 0-3GB', 'all', 25);
