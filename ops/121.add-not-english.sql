-- Custom format: releases that are not in English
-- A single negated language condition: matches when the release's languages don't include English.
-- Negating the condition (rather than except_language) means multi-language releases that include English aren't matched.
-- Scored -1000 in every Nat's Balanced profile.

INSERT INTO custom_formats (name, description, include_in_rename)
VALUES ('Not English', 'Releases whose languages do not include English.', 0);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Not English', 'English', 'language', 'all', 1, 1);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language)
VALUES ('Not English', 'English', 'English', 0);

-- Score in each Nat's Balanced profile
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (1GB)', 'Not English', 'all', -1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (2GB)', 'Not English', 'all', -1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (3GB)', 'Not English', 'all', -1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (4GB)', 'Not English', 'all', -1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (5GB)', 'Not English', 'all', -1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (7GB)', 'Not English', 'all', -1000);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (10GB)', 'Not English', 'all', -1000);
