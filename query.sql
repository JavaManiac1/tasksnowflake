


WITH
allunion AS
(
  SELECT dimension_1,zeroifnull(measure_1) AS measure_1,  0 AS measure_2    
  FROM A 
  UNION ALL
  SELECT dimension_1, 0 AS measure_1, zeroifnull(measure_2) AS measure_2  
  FROM B
),
distinct_map AS 
(
  SELECT DISTINCT dimension_1, correct_dimension_2 FROM MAP
)
  SELECT  allunion.dimension_1, map.correct_dimension_2 AS dimension_2, allunion.measure_1, allunion.measure_2
  FROM distinct_map AS map ,allunion  
  WHERE allunion.dimension_1 = map.dimension_1;