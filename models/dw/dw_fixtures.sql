SELECT
    "Wk"    AS round
    ,"Day" AS day
    ,"Date" AS date
    ,"Home" AS home_team
    ,"xG"   AS home_team_expected_goals
    ,COALESCE("Score", "0")   AS score
    ,"xG_2" AS away_team_expected_goals
    ,"Away" AS away_team
    ,"Attendance"   AS attenance
    ,"Venue" as stadium
    ,"Referee" as referee
FROM
    {{ source('epl' ,'fixtures') }} 
WHERE
    "Wk" is not NULL