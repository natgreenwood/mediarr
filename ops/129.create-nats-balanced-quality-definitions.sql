-- Nat's Balanced: quality definitions with a minimum size to reject samples
-- Sizes are MB per minute of runtime. A max or preferred size of 0 means unlimited.

INSERT INTO sonarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size) VALUES
  ('Nat''s Balanced', 'Bluray-2160p', 8, 0, 0),
  ('Nat''s Balanced', 'WEBDL-2160p', 8, 0, 0),
  ('Nat''s Balanced', 'WEBRip-2160p', 8, 0, 0),
  ('Nat''s Balanced', 'HDTV-2160p', 8, 0, 0),
  ('Nat''s Balanced', 'Bluray-1080p', 4, 0, 0),
  ('Nat''s Balanced', 'WEBDL-1080p', 4, 0, 0),
  ('Nat''s Balanced', 'WEBRip-1080p', 4, 0, 0),
  ('Nat''s Balanced', 'HDTV-1080p', 4, 0, 0),
  ('Nat''s Balanced', 'Bluray-720p', 3, 0, 0),
  ('Nat''s Balanced', 'WEBDL-720p', 3, 0, 0),
  ('Nat''s Balanced', 'WEBRip-720p', 3, 0, 0),
  ('Nat''s Balanced', 'HDTV-720p', 3, 0, 0),
  ('Nat''s Balanced', 'Bluray-576p', 2, 0, 0),
  ('Nat''s Balanced', 'Bluray-480p', 2, 0, 0),
  ('Nat''s Balanced', 'WEBDL-480p', 2, 0, 0),
  ('Nat''s Balanced', 'WEBRip-480p', 2, 0, 0),
  ('Nat''s Balanced', 'DVD', 2, 0, 0),
  ('Nat''s Balanced', 'SDTV', 2, 0, 0);
