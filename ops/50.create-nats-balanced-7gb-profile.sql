-- Quality profile: Nat's Balanced (7GB)
-- Copy of Nat's Balanced (5GB)'s quality list and settings, scoring custom formats capped at 7GB or less.
-- Scores step down by 5 from 160 to 5; upgrade until score is 160 to match the top format.
-- H265 5-6GB, H265 6-7GB and H264 0-7GB formats are added and scored in ops 51-62.

INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('Nat''s Balanced (7GB)', 'Balanced profile allowing every quality except Remux, Unknown, Raw-HD, BR-DISK and pre-releases, scoring only releases of 7GB or less.', 1, 5, 160, 10);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (7GB)', 'Remux-2160p', NULL, 1, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (7GB)', 'Bluray-2160p', NULL, 2, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (7GB)', 'WEBDL-2160p', NULL, 3, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (7GB)', 'WEBRip-2160p', NULL, 4, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (7GB)', 'HDTV-2160p', NULL, 5, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (7GB)', 'Remux-1080p', NULL, 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (7GB)', 'Bluray-1080p', NULL, 7, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (7GB)', 'WEBDL-1080p', NULL, 8, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (7GB)', 'WEBRip-1080p', NULL, 9, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (7GB)', 'HDTV-1080p', NULL, 10, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (7GB)', 'Bluray-720p', NULL, 11, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (7GB)', 'WEBDL-720p', NULL, 12, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (7GB)', 'WEBRip-720p', NULL, 13, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (7GB)', 'HDTV-720p', NULL, 14, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (7GB)', 'Bluray-576p', NULL, 15, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (7GB)', 'Bluray-480p', NULL, 16, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (7GB)', 'WEBDL-480p', NULL, 17, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (7GB)', 'WEBRip-480p', NULL, 18, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (7GB)', 'HDTV-480p', NULL, 19, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (7GB)', 'DVD-R', NULL, 20, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (7GB)', 'DVD', NULL, 21, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (7GB)', 'SDTV', NULL, 22, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (7GB)', 'REGIONAL', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (7GB)', 'DVDSCR', NULL, 24, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (7GB)', 'TELECINE', NULL, 25, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (7GB)', 'TELESYNC', NULL, 26, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (7GB)', 'CAM', NULL, 27, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (7GB)', 'WORKPRINT', NULL, 28, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (7GB)', 'Unknown', NULL, 29, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (7GB)', 'Raw-HD', NULL, 30, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (7GB)', 'BR-DISK', NULL, 31, 0, 0);

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (7GB)', '2160p H265 Under 1GB', 'all', 160);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (7GB)', '2160p H265 1-2GB', 'all', 155);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (7GB)', '2160p H265 2-3GB', 'all', 150);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (7GB)', '2160p H265 3-4GB', 'all', 145);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (7GB)', '2160p H265 4-5GB', 'all', 140);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (7GB)', '1080p H265 Under 1GB', 'all', 120);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (7GB)', '1080p H265 1-2GB', 'all', 115);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (7GB)', '1080p H265 2-3GB', 'all', 110);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (7GB)', '1080p H265 3-4GB', 'all', 105);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (7GB)', '1080p H265 4-5GB', 'all', 100);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (7GB)', '720p H265 Under 1GB', 'all', 80);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (7GB)', '720p H265 1-2GB', 'all', 75);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (7GB)', '720p H265 2-3GB', 'all', 70);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (7GB)', '720p H265 3-4GB', 'all', 65);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (7GB)', '720p H265 4-5GB', 'all', 60);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (7GB)', '480p H265 Under 1GB', 'all', 40);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (7GB)', '480p H265 1-2GB', 'all', 35);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (7GB)', '480p H265 2-3GB', 'all', 30);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (7GB)', '480p H265 3-4GB', 'all', 25);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (7GB)', '480p H265 4-5GB', 'all', 20);
