-- Custom format: 1080p H264 releases of 5GB or less
-- All three conditions are required. Reuses the H264 regex from op 7.

INSERT INTO custom_formats (name, description, include_in_rename)
VALUES ('1080p H264 0-5GB', '1080p H264/AVC releases with a size of 5GB or less.', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p H264 0-5GB', 'H264', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
VALUES ('1080p H264 0-5GB', 'H264', 'H264');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p H264 0-5GB', '1080p', 'resolution', 'all', 0, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('1080p H264 0-5GB', '1080p', '1080p');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p H264 0-5GB', '0-5GB', 'size', 'all', 0, 1);
INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes)
VALUES ('1080p H264 0-5GB', '0-5GB', NULL, 5368709120);

-- Score in Nat's Balanced (5GB)
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES ('Nat''s Balanced (5GB)', '1080p H264 0-5GB', 'all', 65);
