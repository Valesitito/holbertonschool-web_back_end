-- Returns every band whose primary genre is Glam rock,
-- ordered by how long they were active up through 2024.

-- Pick each band's name and compute its lifespan, treating 2024 as ongoing
SELECT band_name, (IFNULL(split, 2024) - formed) AS lifespan
    FROM metal_bands
    WHERE style LIKE '%Glam rock%'
    ORDER BY lifespan DESC;
