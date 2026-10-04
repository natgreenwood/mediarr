-- Custom format: 2160p H265 releases under 1GB
-- All three conditions are required, so a release must match every one.

INSERT INTO regular_expressions (name, pattern, description)
VALUES ('H265', '[xh][ .]?265|\bHEVC(\b|\d)', 'Matches x265, h265, H.265 and HEVC video codec tags');

INSERT INTO custom_formats (name, description, include_in_rename)
VALUES ('2160p H265 Under 1GB', '4K (2160p) H265/HEVC releases with a size of 1GB or less.', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p H265 Under 1GB', 'H265', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
VALUES ('2160p H265 Under 1GB', 'H265', 'H265');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p H265 Under 1GB', '2160p', 'resolution', 'all', 0, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('2160p H265 Under 1GB', '2160p', '2160p');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p H265 Under 1GB', 'Under 1GB', 'size', 'all', 0, 1);
INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes)
VALUES ('2160p H265 Under 1GB', 'Under 1GB', NULL, 1073741824);
