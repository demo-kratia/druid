SELECT *
    FROM
    ( SELECT SUM(c2) OVER W as sm
      FROM "t_alltype.parquet"
          WINDOW W AS ( PARTITION BY c8 ORDER BY c1 RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING )
    ) subQry
WHERE subQry.sm > 0
