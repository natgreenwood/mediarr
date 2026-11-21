-- Nat's Balanced (10GB): set upgrade score increment to 5, one size band
-- Guarded on the previous value (10).

UPDATE quality_profiles SET upgrade_score_increment = 5 WHERE name = 'Nat''s Balanced (10GB)' AND upgrade_score_increment = 10;
