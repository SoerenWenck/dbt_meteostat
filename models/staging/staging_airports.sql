WITH airports_regions_join AS (
    SELECT * 
    FROM {{source('s_soerenwenck', 'airports')}}
    LEFT JOIN {{source('s_soerenwenck', 'regions')}}
    USING (country)
)
SELECT * FROM airports_regions_join