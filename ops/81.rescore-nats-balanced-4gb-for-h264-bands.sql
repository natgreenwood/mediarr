-- Nat's Balanced (4GB): rescore for 1GB H264 bands
-- Replaces the single H264 0-4GB format per resolution with 1GB H264 bands, so smaller H264 releases score higher.
-- Scores step down by 5 from 160 to 5: per resolution, H265 bands smallest first, then H264 bands smallest first.
-- The H264 0-4GB formats are only used by this profile, so they are deleted (conditions and scores cascade).
-- H264 0-1GB is reused as the bottom band; H264 1-2GB and up are added and scored in ops 85-120.

DELETE FROM custom_formats WHERE name = '2160p H264 0-4GB';
DELETE FROM custom_formats WHERE name = '1080p H264 0-4GB';
DELETE FROM custom_formats WHERE name = '720p H264 0-4GB';
DELETE FROM custom_formats WHERE name = '480p H264 0-4GB';

UPDATE quality_profiles SET upgrade_until_score = 160 WHERE name = 'Nat''s Balanced (4GB)' AND upgrade_until_score = 100;

UPDATE quality_profile_custom_formats SET score = 160 WHERE quality_profile_name = 'Nat''s Balanced (4GB)' AND custom_format_name = '2160p H265 Under 1GB' AND arr_type = 'all' AND score = 100;
UPDATE quality_profile_custom_formats SET score = 155 WHERE quality_profile_name = 'Nat''s Balanced (4GB)' AND custom_format_name = '2160p H265 1-2GB' AND arr_type = 'all' AND score = 95;
UPDATE quality_profile_custom_formats SET score = 150 WHERE quality_profile_name = 'Nat''s Balanced (4GB)' AND custom_format_name = '2160p H265 2-3GB' AND arr_type = 'all' AND score = 90;
UPDATE quality_profile_custom_formats SET score = 145 WHERE quality_profile_name = 'Nat''s Balanced (4GB)' AND custom_format_name = '2160p H265 3-4GB' AND arr_type = 'all' AND score = 85;
UPDATE quality_profile_custom_formats SET score = 120 WHERE quality_profile_name = 'Nat''s Balanced (4GB)' AND custom_format_name = '1080p H265 Under 1GB' AND arr_type = 'all' AND score = 75;
UPDATE quality_profile_custom_formats SET score = 115 WHERE quality_profile_name = 'Nat''s Balanced (4GB)' AND custom_format_name = '1080p H265 1-2GB' AND arr_type = 'all' AND score = 70;
UPDATE quality_profile_custom_formats SET score = 110 WHERE quality_profile_name = 'Nat''s Balanced (4GB)' AND custom_format_name = '1080p H265 2-3GB' AND arr_type = 'all' AND score = 65;
UPDATE quality_profile_custom_formats SET score = 105 WHERE quality_profile_name = 'Nat''s Balanced (4GB)' AND custom_format_name = '1080p H265 3-4GB' AND arr_type = 'all' AND score = 60;
UPDATE quality_profile_custom_formats SET score = 80 WHERE quality_profile_name = 'Nat''s Balanced (4GB)' AND custom_format_name = '720p H265 Under 1GB' AND arr_type = 'all' AND score = 50;
UPDATE quality_profile_custom_formats SET score = 75 WHERE quality_profile_name = 'Nat''s Balanced (4GB)' AND custom_format_name = '720p H265 1-2GB' AND arr_type = 'all' AND score = 45;
UPDATE quality_profile_custom_formats SET score = 70 WHERE quality_profile_name = 'Nat''s Balanced (4GB)' AND custom_format_name = '720p H265 2-3GB' AND arr_type = 'all' AND score = 40;
UPDATE quality_profile_custom_formats SET score = 65 WHERE quality_profile_name = 'Nat''s Balanced (4GB)' AND custom_format_name = '720p H265 3-4GB' AND arr_type = 'all' AND score = 35;
UPDATE quality_profile_custom_formats SET score = 40 WHERE quality_profile_name = 'Nat''s Balanced (4GB)' AND custom_format_name = '480p H265 Under 1GB' AND arr_type = 'all' AND score = 25;
UPDATE quality_profile_custom_formats SET score = 35 WHERE quality_profile_name = 'Nat''s Balanced (4GB)' AND custom_format_name = '480p H265 1-2GB' AND arr_type = 'all' AND score = 20;
UPDATE quality_profile_custom_formats SET score = 30 WHERE quality_profile_name = 'Nat''s Balanced (4GB)' AND custom_format_name = '480p H265 2-3GB' AND arr_type = 'all' AND score = 15;
UPDATE quality_profile_custom_formats SET score = 25 WHERE quality_profile_name = 'Nat''s Balanced (4GB)' AND custom_format_name = '480p H265 3-4GB' AND arr_type = 'all' AND score = 10;

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (4GB)', '2160p H264 0-1GB', 'all', 140);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (4GB)', '1080p H264 0-1GB', 'all', 100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (4GB)', '720p H264 0-1GB', 'all', 60);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (4GB)', '480p H264 0-1GB', 'all', 20);
