-- Adds an idx_name_first index to the names table,
-- built on the leading character of the name column.
CREATE INDEX idx_name_first ON names (name(1));
