-- Quality profile: Nat's Balanced (1GB)
-- Copy of Nat's Balanced (3GB) that only scores custom formats capped at 1GB or less.
-- Same quality list and profile settings; scores match the 3GB profile.
-- H264 0-1GB formats are added and scored in ops 28-31.

INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('Nat''s Balanced (1GB)', 'Balanced profile allowing every quality except Remux, Unknown, Raw-HD, BR-DISK and pre-releases, scoring only releases of 1GB or less.', 1, 5, 80, 10);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (1GB)', 'Remux-2160p', NULL, 1, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (1GB)', 'Bluray-2160p', NULL, 2, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (1GB)', 'WEBDL-2160p', NULL, 3, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (1GB)', 'WEBRip-2160p', NULL, 4, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (1GB)', 'HDTV-2160p', NULL, 5, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (1GB)', 'Remux-1080p', NULL, 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (1GB)', 'Bluray-1080p', NULL, 7, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (1GB)', 'WEBDL-1080p', NULL, 8, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (1GB)', 'WEBRip-1080p', NULL, 9, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (1GB)', 'HDTV-1080p', NULL, 10, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (1GB)', 'Bluray-720p', NULL, 11, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (1GB)', 'WEBDL-720p', NULL, 12, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (1GB)', 'WEBRip-720p', NULL, 13, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (1GB)', 'HDTV-720p', NULL, 14, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (1GB)', 'Bluray-576p', NULL, 15, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (1GB)', 'Bluray-480p', NULL, 16, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (1GB)', 'WEBDL-480p', NULL, 17, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (1GB)', 'WEBRip-480p', NULL, 18, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (1GB)', 'HDTV-480p', NULL, 19, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (1GB)', 'DVD-R', NULL, 20, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (1GB)', 'DVD', NULL, 21, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (1GB)', 'SDTV', NULL, 22, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (1GB)', 'REGIONAL', NULL, 23, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (1GB)', 'DVDSCR', NULL, 24, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (1GB)', 'TELECINE', NULL, 25, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (1GB)', 'TELESYNC', NULL, 26, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (1GB)', 'CAM', NULL, 27, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (1GB)', 'WORKPRINT', NULL, 28, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (1GB)', 'Unknown', NULL, 29, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (1GB)', 'Raw-HD', NULL, 30, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced (1GB)', 'BR-DISK', NULL, 31, 0, 0);

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (1GB)', '2160p H265 Under 1GB', 'all', 80);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (1GB)', '1080p H265 Under 1GB', 'all', 60);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (1GB)', '720p H265 Under 1GB', 'all', 40);
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Nat''s Balanced (1GB)', '480p H265 Under 1GB', 'all', 20);
