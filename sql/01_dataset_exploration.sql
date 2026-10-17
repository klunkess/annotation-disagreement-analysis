
-- PROJECT: Annotation Disagreement Analysis
-- DATASET: Google DICES-350
-- PURPOSE: Initial dataset exploration


-- Query 1: Count evaluation records

SELECT COUNT(*) AS total_records
FROM annotations;


-- Query 2: Count unique conversations and evaluators

SELECT
    COUNT(DISTINCT item_id) AS conversations,
    COUNT(DISTINCT rater_id) AS evaluators
FROM annotations;


-- Query 3: Explore the distribution of harm types

SELECT
    harm_type,
    COUNT(DISTINCT item_id) AS conversations
FROM annotations
GROUP BY harm_type
ORDER BY conversations DESC;
