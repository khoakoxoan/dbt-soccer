{{ config(alias='gk_stat') }}


with
    source as(
        SELECT * FROM {{source('epl', 'gk_stat')}}
    ),

    renamed as (
        SELECT

            "Player"   as player
            ,LEFT("Nation" , strpos( "Nation", ' ') - 1 ) as nation_id
            ,"Pos"  as position
            ,"Squad" as squad
            ,CAST(LEFT("Age", 2) AS INT) as age
            ,"Born" as born
            ,"MP" as match_played
            ,"Starts" as starts
            ,"GA" as goal_against
            ,"GA90" as goal_against_90
            ,"SoTA" as shot_on_target_against
            ,"Saves"    as saves
            ,"Save_percentage" as save_percentage
            ,"W"    as wins
            ,"D"    as draws
            ,"L"    as losses
            ,"CS"   as clean_sheets
            ,"CS_percentage" as clean_sheet_percentage
            ,"PKatt"    as penalty_attempted
            ,"PKA"  as penalty_allowed
            ,"PKsv" as penalty_saves
            ,"PKm"  as penalty_misses
            ,"PKSave_percentage" as penalty_saves_percentage
        FROM source
    )

select * from renamed