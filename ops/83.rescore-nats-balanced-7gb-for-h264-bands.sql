-- Nat's Balanced (7GB): rescore for 1GB H264 bands
-- Replaces the single H264 0-7GB format per resolution with 1GB H264 bands, so smaller H264 releases score higher.
-- Scores step down by 5 from 280 to 5: per resolution, H265 bands smallest first, then H264 bands smallest first.
-- The H264 0-7GB formats are only used by this profile, so they are deleted (conditions and scores cascade).
-- H264 0-1GB is reused as the bottom band; H264 1-2GB and up are added and scored in ops 85-120.

DELETE FROM custom_formats WHERE name = '2160p H264 0-7GB';
DELETE FROM custom_formats WHERE name = '1080p H264 0-7GB';
DELETE FROM custom_formats WHERE name = '720p H264 0-7GB';
DELETE FROM custom_formats WHERE name = '480p H264 0-7GB';

UPDATE quality_profiles SET upgrade_until_score = 280 WHERE name = 'Nat''s Balanced (7GB)' AND upgrade_until_score = 160;

UPDATE quality_profile_custom_formats SET score = 280 WHERE quality_profile_name = 'Nat''s Balanced (7GB)' AND custom_format_name = '2160p H265 Under 1GB' AND arr_type = 'all' AND score = 160;
UPDATE quality_profile_custom_formats SET score = 275 WHERE quality_profile_name = 'Nat''s Balanced (7GB)' AND custom_format_name = '2160p H265 1-2GB' AND arr_type = 'all' AND score = 155;
UPDATE quality_profile_custom_formats SET score = 270 WHERE quality_profile_name = 'Nat''s Balanced (7GB)' AND custom_format_name = '2160p H265 2-3GB' AND arr_type = 'all' AND score = 150;
UPDATE quality_profile_custom_formats SET score = 265 WHERE quality_profile_name = 'Nat''s Balanced (7GB)' AND custom_format_name = '2160p H265 3-4GB' AND arr_type = 'all' AND score = 145;
UPDATE quality_profile_custom_formats SET score = 260 WHERE quality_profile_name = 'Nat''s Balanced (7GB)' AND custom_format_name = '2160p H265 4-5GB' AND arr_type = 'all' AND score = 140;
UPDATE quality_profile_custom_formats SET score = 255 WHERE quality_profile_name = 'Nat''s Balanced (7GB)' AND custom_format_name = '2160p H265 5-6GB' AND arr_type = 'all' AND score = 135;
UPDATE quality_profile_custom_formats SET score = 250 WHERE quality_profile_name = 'Nat''s Balanced (7GB)' AND custom_format_name = '2160p H265 6-7GB' AND arr_type = 'all' AND score = 130;
UPDATE quality_profile_custom_formats SET score = 210 WHERE quality_profile_name = 'Nat''s Balanced (7GB)' AND custom_format_name = '1080p H265 Under 1GB' AND arr_type = 'all' AND score = 120;
UPDATE quality_profile_custom_formats SET score = 205 WHERE quality_profile_name = 'Nat''s Balanced (7GB)' AND custom_format_name = '1080p H265 1-2GB' AND arr_type = 'all' AND score = 115;
UPDATE quality_profile_custom_formats SET score = 200 WHERE quality_profile_name = 'Nat''s Balanced (7GB)' AND custom_format_name = '1080p H265 2-3GB' AND arr_type = 'all' AND score = 110;
UPDATE quality_profile_custom_formats SET score = 195 WHERE quality_profile_name = 'Nat''s Balanced (7GB)' AND custom_format_name = '1080p H265 3-4GB' AND arr_type = 'all' AND score = 105;
UPDATE quality_profile_custom_formats SET score = 190 WHERE quality_profile_name = 'Nat''s Balanced (7GB)' AND custom_format_name = '1080p H265 4-5GB' AND arr_type = 'all' AND score = 100;
UPDATE quality_profile_custom_formats SET score = 185 WHERE quality_profile_name = 'Nat''s Balanced (7GB)' AND custom_format_name = '1080p H265 5-6GB' AND arr_type = 'all' AND score = 95;
UPDATE quality_profile_custom_formats SET score = 180 WHERE quality_profile_name = 'Nat''s Balanced (7GB)' AND custom_format_name = '1080p H265 6-7GB' AND arr_type = 'all' AND score = 90;
UPDATE quality_profile_custom_formats SET score = 140 WHERE quality_profile_name = 'Nat''s Balanced (7GB)' AND custom_format_name = '720p H265 Under 1GB' AND arr_type = 'all' AND score = 80;
UPDATE quality_profile_custom_formats SET score = 135 WHERE quality_profile_name = 'Nat''s Balanced (7GB)' AND custom_format_name = '720p H265 1-2GB' AND arr_type = 'all' AND score = 75;
UPDATE quality_profile_custom_formats SET score = 130 WHERE quality_profile_name = 'Nat''s Balanced (7GB)' AND custom_format_name = '720p H265 2-3GB' AND arr_type = 'all' AND score = 70;
UPDATE quality_profile_custom_formats SET score = 125 WHERE quality_profile_name = 'Nat''s Balanced (7GB)' AND custom_format_name = '720p H265 3-4GB' AND arr_type = 'all' AND score = 65;
UPDATE quality_profile_custom_formats SET score = 120 WHERE quality_profile_name = 'Nat''s Balanced (7GB)' AND custom_format_name = '720p H265 4-5GB' AND arr_type = 'all' AND score = 60;
UPDATE quality_profile_custom_formats SET score = 115 WHERE quality_profile_name = 'Nat''s Balanced (7GB)' AND custom_format_name = '720p H265 5-6GB' AND arr_type = 'all' AND score = 55;
UPDATE quality_profile_custom_formats SET score = 110 WHERE quality_profile_name = 'Nat''s Balanced (7GB)' AND custom_format_name = '720p H265 6-7GB' AND arr_type = 'all' AND score = 50;
UPDATE quality_profile_custom_formats SET score = 70 WHERE quality_profile_name = 'Nat''s Balanced (7GB)' AND custom_format_name = '480p H265 Under 1GB' AND arr_type = 'all' AND score = 40;
UPDATE quality_profile_custom_formats SET score = 65 WHERE quality_profile_name = 'Nat''s Balanced (7GB)' AND custom_format_name = '480p H265 1-2GB' AND arr_type = 'all' AND score = 35;
UPDATE quality_profile_custom_formats SET score = 60 WHERE quality_profile_name = 'Nat''s Balanced (7GB)' AND custom_format_name = '480p H265 2-3GB' AND arr_type = 'all' AND score = 30;
UPDATE quality_profile_custom_formats SET score = 55 WHERE quality_profile_name = 'Nat''s Balanced (7GB)' AND custom_format_name = '480p H265 3-4GB' AND arr_type = 'all' AND score = 25;
UPDATE quality_profile_custom_formats SET score = 50 WHERE quality_profile_name = 'Nat''s Balanced (7GB)' AND custom_format_name = '480p H265 4-5GB' AND arr_type = 'all' AND score = 20;
UPDATE quality_profile_custom_formats SET score = 45 WHERE quality_profile_name = 'Nat''s Balanced (7GB)' AND custom_format_name = '480p H265 5-6GB' AND arr_type = 'all' AND score = 15;
UPDATE quality_profile_custom_formats SET score = 40 WHERE quality_profile_name = 'Nat''s Balanced (7GB)' AND custom_format_name = '480p H265 6-7GB' AND arr_type = 'all' AND score = 10;

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (7GB)', '2160p H264 0-1GB', 'all', 245);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (7GB)', '1080p H264 0-1GB', 'all', 175);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (7GB)', '720p H264 0-1GB', 'all', 105);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (7GB)', '480p H264 0-1GB', 'all', 35);
