

{{ config(alias='shooting') }}


with
    source as(
        SELECT * FROM {{source('epl', 'shooting')}}
    ),

    renamed as (
        SELECT
            "Player" AS player
            ,LEFT("Nation" , strpos( "Nation", ' ') - 1 ) as nation_id
            ,LEFT("Pos", 2)  AS position
            ,"Squad"  AS squad
            ,CAST(LEFT("Age", 2) AS INT) as age
            ,"Born" AS born
            ,"Gls"  as goals
            ,"Sh"   as total_shots
            ,"SoT"  as shots_on_target
            ,"SoT_percentage"   as shot_on_targets_percentage
            ,"Sh/90"    as total_shots_90min 
            ,"SoT/90"   as shot_on_target_90mins
            ,"G/Sh" as goals_per_shot
            ,"G/SoT"    as goals_per_shot_on_targets
            ,"Dist" as average_shot_distance
            ,"FK"   as shots_from_freekicks
            ,"PK"   as shots_from_penalty
            ,"PKatt"    as penalty_attempted
        FROM source
    )

select * from renamed