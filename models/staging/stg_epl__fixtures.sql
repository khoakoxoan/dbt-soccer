{{ config(alias='fixtures') }}

with 
    source as (
        SELECT * FROM {{source('epl' ,'fixtures')}}
    ),

    renamed as (
        SELECT
            --id
            "Wk"    AS round
            ,"Home" AS home_team
            ,"Away" AS away_team
            ,"Day" AS day
            ,"Date" AS date
            
            --string
            ,"Score"   AS score
            ,"Venue" as stadium
            ,"Referee" as referee

            --float`
            ,"xG"   AS home_team_expected_goals
            ,"xG_2" AS away_team_expected_goals

            --INT
            ,"Attendance"   AS attenance
            ,CAST(LEFT("Score", 1) AS INT) AS home_team_score
            ,CAST(RIGHT("Score", 1) AS INT) AS away_team_score
        FROM source
        WHERE
            "Wk" is not NULL
    )

select * from renamed