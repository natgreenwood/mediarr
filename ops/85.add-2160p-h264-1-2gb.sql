-- Custom format: 2160p H264 releases larger than 1GB and up to 2GB
-- All three conditions are required. Reuses the H264 regex from op 7.
-- Sonarr's size range excludes the minimum and includes the maximum.

INSERT INTO custom_formats (name, description, include_in_rename)
VALUES ('2160p H264 1-2GB', '2160p H264/AVC releases larger than 1GB and up to 2GB.', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p H264 1-2GB', 'H264', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
VALUES ('2160p H264 1-2GB', 'H264', 'H264');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p H264 1-2GB', '2160p', 'resolution', 'all', 0, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('2160p H264 1-2GB', '2160p', '2160p');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p H264 1-2GB', '1-2GB', 'size', 'all', 0, 1);
INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes)
VALUES ('2160p H264 1-2GB', '1-2GB', 1073741824, 2147483648);

-- Score in Nat's Balanced (3GB)
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES ('Nat''s Balanced (3GB)', '2160p H264 1-2GB', 'all', 100);
-- Score in Nat's Balanced (4GB)
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES ('Nat''s Balanced (4GB)', '2160p H264 1-2GB', 'all', 135);
-- Score in Nat's Balanced (5GB)
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES ('Nat''s Balanced (5GB)', '2160p H264 1-2GB', 'all', 170);
-- Score in Nat's Balanced (7GB)
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES ('Nat''s Balanced (7GB)', '2160p H264 1-2GB', 'all', 240);
-- Score in Nat's Balanced (10GB)
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES ('Nat''s Balanced (10GB)', '2160p H264 1-2GB', 'all', 345);
