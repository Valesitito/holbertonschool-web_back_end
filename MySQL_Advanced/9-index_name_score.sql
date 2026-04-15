-- Adds the composite index idx_name_first_score to the names table,
-- covering both the leading character of name and the score column.
CREATE INDEX idx_name_first_score ON names (name(1), score);
