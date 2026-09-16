-- SELECT id, visit_date, people
-- FROM (
--     SELECT *,
--            LAG(people, 1) OVER (ORDER BY visit_date) AS prev_people,
--            LEAD(people, 1) OVER (ORDER BY visit_date) AS next_people
--     FROM Stadium
-- ) t
-- WHERE people >= 100
--   AND (
--       (prev_people >= 100 AND next_people >= 100)
--       OR
--       (prev_people >= 100 AND id + 1 = id)
--   )
-- ORDER BY visit_date;


-- SELECT id, visit_date, people
-- FROM Stadium
-- WHERE id IN (
--     SELECT id - 1
--     FROM Stadium
--     WHERE people >= 100
-- )
-- AND people >= 100

-- UNION

-- SELECT id, visit_date, people
-- FROM Stadium
-- WHERE id IN (
--     SELECT id + 1
--     FROM Stadium
--     WHERE people >= 100
-- )
-- AND people >= 100

-- UNION

-- SELECT id, visit_date, people
-- FROM Stadium
-- WHERE id IN (
--     SELECT id
--     FROM Stadium
--     WHERE people >= 100
-- )

-- AND people >= 100
-- ORDER BY visit_date;



WITH high_traffic AS (
    SELECT *,
           id - ROW_NUMBER() OVER (ORDER BY id) AS grp
    FROM Stadium
    WHERE people >= 100
),
valid_groups AS (
    SELECT grp
    FROM high_traffic
    GROUP BY grp
    HAVING COUNT(*) >= 3
)
SELECT id, visit_date, people
FROM high_traffic
WHERE grp IN (SELECT grp FROM valid_groups)
ORDER BY visit_date;