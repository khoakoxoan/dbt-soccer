
{{ config(alias='shot_creation') }}


with
    source as(
        SELECT * FROM {{source('epl', 'shot_creation')}}
    ),

    renamed as (
        SELECT
            "Player" AS player
            ,LEFT("Nation" , strpos( "Nation", ' ') - 1 ) as nation_id
            ,LEFT("Pos", 2)  AS position
            ,"Squad"  AS squad
            ,CAST(LEFT("Age", 2) AS INT) as age
            ,"Born" AS born
            ,"SCA"  as shot_creation_action
            ,"SCA90"    as shot_creation_action_per_90mins
            ,"PassLive" as live_ball_passes_to_goals
            ,"PassDead" as dead_ball_passes_to_goals
            ,"TO"   as take_ons_to_goal
            ,"Sh"   as shots_to_shots
            ,"Fld"  as foul_to_shots
            ,"Def"  as def_to_shots
        FROM source
    )

select * from renamed