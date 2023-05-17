{{ config(alias='pass_types') }}


with
    source as(
        SELECT * FROM {{source('epl' ,'pass_type')}}
    ),

    renamed as (
        SELECT
            "Player" as player
            ,LEFT("Nation" , strpos( "Nation", ' ') - 1 ) as nation_id
            ,LEFT("Pos", 2) as position
            ,"Squad"    as squad
            ,CAST(LEFT("Age", 2) AS INT) as age
            ,"Born" as born
            ,"90s"  as minutes_div_90
            ,"Att"  as passes_attempted
            ,"Live" as live_ball_passes
            ,"Dead" as dead_ball_passes
            ,"FK"   as free_kick_passes
            ,"TB"   as through_balls
            ,"Sw"   as switches
            ,"Crs"  as crosses
            ,"TI"   as throw_ins
            ,"CK"   as corner_kicks
            ,"In"   as inswing_corners
            ,"Out"  as outswing_corners
            ,"Str"  as straight_coners
            ,"Cmp"  as passes_completed
            ,"Off"  as passes_offside
            ,"Blocks"   as passes_blocked
        FROM source
    )

select * from renamed