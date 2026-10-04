-- Quality profile: Nat's Balanced
-- Every quality is enabled except Remux, Unknown and Raw-HD. Position 1 is the most preferred quality.

INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('Nat''s Balanced', 'Balanced profile allowing every quality except Remux, Unknown and Raw-HD.', 1, 0, 80, 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced', 'Remux-2160p', NULL, 1, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced', 'Bluray-2160p', NULL, 2, 1, 1);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced', 'WEBDL-2160p', NULL, 3, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced', 'WEBRip-2160p', NULL, 4, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced', 'HDTV-2160p', NULL, 5, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced', 'Remux-1080p', NULL, 6, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced', 'Bluray-1080p', NULL, 7, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced', 'WEBDL-1080p', NULL, 8, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced', 'WEBRip-1080p', NULL, 9, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced', 'HDTV-1080p', NULL, 10, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced', 'Bluray-720p', NULL, 11, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced', 'WEBDL-720p', NULL, 12, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced', 'WEBRip-720p', NULL, 13, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced', 'HDTV-720p', NULL, 14, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced', 'Bluray-576p', NULL, 15, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced', 'Bluray-480p', NULL, 16, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced', 'WEBDL-480p', NULL, 17, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced', 'WEBRip-480p', NULL, 18, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced', 'HDTV-480p', NULL, 19, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced', 'DVD-R', NULL, 20, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced', 'DVD', NULL, 21, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced', 'SDTV', NULL, 22, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced', 'REGIONAL', NULL, 23, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced', 'DVDSCR', NULL, 24, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced', 'TELECINE', NULL, 25, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced', 'TELESYNC', NULL, 26, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced', 'CAM', NULL, 27, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced', 'WORKPRINT', NULL, 28, 1, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced', 'Unknown', NULL, 29, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced', 'Raw-HD', NULL, 30, 0, 0);
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Nat''s Balanced', 'BR-DISK', NULL, 31, 1, 0);

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES ('Nat''s Balanced', '2160p H265 Under 1GB', 'all', 80);
