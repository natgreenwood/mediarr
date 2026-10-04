-- Nat's Balanced: set upgrade score increment to 10
-- Guarded on the previous value (1).

UPDATE quality_profiles SET upgrade_score_increment = 10 WHERE name = 'Nat''s Balanced' AND upgrade_score_increment = 1;
