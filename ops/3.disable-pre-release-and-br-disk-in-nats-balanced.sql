-- Nat's Balanced: disable BR-DISK and pre-release qualities
-- Each update is guarded on the previous value (enabled = 1).

UPDATE quality_profile_qualities SET enabled = 0 WHERE quality_profile_name = 'Nat''s Balanced' AND quality_name = 'BR-DISK' AND enabled = 1;
UPDATE quality_profile_qualities SET enabled = 0 WHERE quality_profile_name = 'Nat''s Balanced' AND quality_name = 'TELECINE' AND enabled = 1;
UPDATE quality_profile_qualities SET enabled = 0 WHERE quality_profile_name = 'Nat''s Balanced' AND quality_name = 'TELESYNC' AND enabled = 1;
UPDATE quality_profile_qualities SET enabled = 0 WHERE quality_profile_name = 'Nat''s Balanced' AND quality_name = 'CAM' AND enabled = 1;
UPDATE quality_profile_qualities SET enabled = 0 WHERE quality_profile_name = 'Nat''s Balanced' AND quality_name = 'WORKPRINT' AND enabled = 1;
UPDATE quality_profile_qualities SET enabled = 0 WHERE quality_profile_name = 'Nat''s Balanced' AND quality_name = 'REGIONAL' AND enabled = 1;
UPDATE quality_profile_qualities SET enabled = 0 WHERE quality_profile_name = 'Nat''s Balanced' AND quality_name = 'DVDSCR' AND enabled = 1;
