-- Nat's Balanced: set minimum custom format score to 5
-- Guarded on the previous value (0).

UPDATE quality_profiles SET minimum_custom_format_score = 5 WHERE name = 'Nat''s Balanced' AND minimum_custom_format_score = 0;
