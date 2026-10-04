-- Rename "Nat's Balanced" to "Nat's Balanced (3GB)"
-- Foreign keys cascade the new name to the profile's qualities and scores.

UPDATE quality_profiles SET name = 'Nat''s Balanced (3GB)' WHERE name = 'Nat''s Balanced';
