
{{ config(alias='standing_table') }}


with
    source as(
        SELECT * FROM {{source('epl', 'standing_table')}}
    ),

    renamed as (
        SELECT
            "Rk" AS rank
            ,"Squad" AS squad
            , "MP" AS match_played
            ,"W"   AS wins 
            ,"D"   AS draws
            ,"L"    AS losses
            ,"GF"   AS goals
            ,"GA"   AS goals_against
            ,"GD"   AS goal_diff
            ,"Pts"  AS points
            ,"Pts/MP" AS points_per_game
        FROM source
    )

select * from renamed