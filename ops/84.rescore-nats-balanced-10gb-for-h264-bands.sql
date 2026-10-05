-- Nat's Balanced (10GB): rescore for 1GB H264 bands
-- Replaces the single H264 0-10GB format per resolution with 1GB H264 bands, so smaller H264 releases score higher.
-- Scores step down by 5 from 400 to 5: per resolution, H265 bands smallest first, then H264 bands smallest first.
-- The H264 0-10GB formats are only used by this profile, so they are deleted (conditions and scores cascade).
-- H264 0-1GB is reused as the bottom band; H264 1-2GB and up are added and scored in ops 85-120.

DELETE FROM custom_formats WHERE name = '2160p H264 0-10GB';
DELETE FROM custom_formats WHERE name = '1080p H264 0-10GB';
DELETE FROM custom_formats WHERE name = '720p H264 0-10GB';
DELETE FROM custom_formats WHERE name = '480p H264 0-10GB';

UPDATE quality_profiles SET upgrade_until_score = 400 WHERE name = 'Nat''s Balanced (10GB)' AND upgrade_until_score = 220;

UPDATE quality_profile_custom_formats SET score = 400 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '2160p H265 Under 1GB' AND arr_type = 'all' AND score = 220;
UPDATE quality_profile_custom_formats SET score = 395 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '2160p H265 1-2GB' AND arr_type = 'all' AND score = 215;
UPDATE quality_profile_custom_formats SET score = 390 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '2160p H265 2-3GB' AND arr_type = 'all' AND score = 210;
UPDATE quality_profile_custom_formats SET score = 385 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '2160p H265 3-4GB' AND arr_type = 'all' AND score = 205;
UPDATE quality_profile_custom_formats SET score = 380 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '2160p H265 4-5GB' AND arr_type = 'all' AND score = 200;
UPDATE quality_profile_custom_formats SET score = 375 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '2160p H265 5-6GB' AND arr_type = 'all' AND score = 195;
UPDATE quality_profile_custom_formats SET score = 370 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '2160p H265 6-7GB' AND arr_type = 'all' AND score = 190;
UPDATE quality_profile_custom_formats SET score = 365 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '2160p H265 7-8GB' AND arr_type = 'all' AND score = 185;
UPDATE quality_profile_custom_formats SET score = 360 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '2160p H265 8-9GB' AND arr_type = 'all' AND score = 180;
UPDATE quality_profile_custom_formats SET score = 355 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '2160p H265 9-10GB' AND arr_type = 'all' AND score = 175;
UPDATE quality_profile_custom_formats SET score = 300 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '1080p H265 Under 1GB' AND arr_type = 'all' AND score = 165;
UPDATE quality_profile_custom_formats SET score = 295 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '1080p H265 1-2GB' AND arr_type = 'all' AND score = 160;
UPDATE quality_profile_custom_formats SET score = 290 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '1080p H265 2-3GB' AND arr_type = 'all' AND score = 155;
UPDATE quality_profile_custom_formats SET score = 285 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '1080p H265 3-4GB' AND arr_type = 'all' AND score = 150;
UPDATE quality_profile_custom_formats SET score = 280 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '1080p H265 4-5GB' AND arr_type = 'all' AND score = 145;
UPDATE quality_profile_custom_formats SET score = 275 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '1080p H265 5-6GB' AND arr_type = 'all' AND score = 140;
UPDATE quality_profile_custom_formats SET score = 270 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '1080p H265 6-7GB' AND arr_type = 'all' AND score = 135;
UPDATE quality_profile_custom_formats SET score = 265 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '1080p H265 7-8GB' AND arr_type = 'all' AND score = 130;
UPDATE quality_profile_custom_formats SET score = 260 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '1080p H265 8-9GB' AND arr_type = 'all' AND score = 125;
UPDATE quality_profile_custom_formats SET score = 255 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '1080p H265 9-10GB' AND arr_type = 'all' AND score = 120;
UPDATE quality_profile_custom_formats SET score = 200 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '720p H265 Under 1GB' AND arr_type = 'all' AND score = 110;
UPDATE quality_profile_custom_formats SET score = 195 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '720p H265 1-2GB' AND arr_type = 'all' AND score = 105;
UPDATE quality_profile_custom_formats SET score = 190 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '720p H265 2-3GB' AND arr_type = 'all' AND score = 100;
UPDATE quality_profile_custom_formats SET score = 185 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '720p H265 3-4GB' AND arr_type = 'all' AND score = 95;
UPDATE quality_profile_custom_formats SET score = 180 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '720p H265 4-5GB' AND arr_type = 'all' AND score = 90;
UPDATE quality_profile_custom_formats SET score = 175 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '720p H265 5-6GB' AND arr_type = 'all' AND score = 85;
UPDATE quality_profile_custom_formats SET score = 170 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '720p H265 6-7GB' AND arr_type = 'all' AND score = 80;
UPDATE quality_profile_custom_formats SET score = 165 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '720p H265 7-8GB' AND arr_type = 'all' AND score = 75;
UPDATE quality_profile_custom_formats SET score = 160 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '720p H265 8-9GB' AND arr_type = 'all' AND score = 70;
UPDATE quality_profile_custom_formats SET score = 155 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '720p H265 9-10GB' AND arr_type = 'all' AND score = 65;
UPDATE quality_profile_custom_formats SET score = 100 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '480p H265 Under 1GB' AND arr_type = 'all' AND score = 55;
UPDATE quality_profile_custom_formats SET score = 95 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '480p H265 1-2GB' AND arr_type = 'all' AND score = 50;
UPDATE quality_profile_custom_formats SET score = 90 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '480p H265 2-3GB' AND arr_type = 'all' AND score = 45;
UPDATE quality_profile_custom_formats SET score = 85 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '480p H265 3-4GB' AND arr_type = 'all' AND score = 40;
UPDATE quality_profile_custom_formats SET score = 80 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '480p H265 4-5GB' AND arr_type = 'all' AND score = 35;
UPDATE quality_profile_custom_formats SET score = 75 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '480p H265 5-6GB' AND arr_type = 'all' AND score = 30;
UPDATE quality_profile_custom_formats SET score = 70 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '480p H265 6-7GB' AND arr_type = 'all' AND score = 25;
UPDATE quality_profile_custom_formats SET score = 65 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '480p H265 7-8GB' AND arr_type = 'all' AND score = 20;
UPDATE quality_profile_custom_formats SET score = 60 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '480p H265 8-9GB' AND arr_type = 'all' AND score = 15;
UPDATE quality_profile_custom_formats SET score = 55 WHERE quality_profile_name = 'Nat''s Balanced (10GB)' AND custom_format_name = '480p H265 9-10GB' AND arr_type = 'all' AND score = 10;

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (10GB)', '2160p H264 0-1GB', 'all', 350);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (10GB)', '1080p H264 0-1GB', 'all', 250);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (10GB)', '720p H264 0-1GB', 'all', 150);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (10GB)', '480p H264 0-1GB', 'all', 50);
