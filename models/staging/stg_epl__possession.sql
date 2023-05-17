


{{ config(alias='possession') }}


with
    source as(
        SELECT * FROM {{source('epl', 'possession')}}
    ),

    renamed as (
        SELECT
            "Player"    as player
            ,LEFT("Nation" , strpos( "Nation", ' ') - 1 ) as nation_id
            ,LEFT("Pos", 2) as position
            ,"Squad"    as squad
            ,CAST(LEFT("Age", 2) AS INT) as age
            ,"Born"     as born
            ,"Touches"  as touches
            ,"Def Pen"  as touches_defensive_pen_area
            ,"Def 3rd"  as touches_defensive_3rd_area
            ,"Mid 3rd"  as touches_middle_3rd_area
            ,"Att 3rd"  as touches_attacking_3rd_area
            ,"Att Pen"  as touches_attacking_pen_area
            ,"Live"     as live_ball_touches
            ,"Att"      as take_ons_attempted
            ,"Succ"     as take_ons_successful
            ,"Succ_percentage" as take_ons_successful_percentage
            ,"Tkld" as tackles_during_take_on
            ,"Tkld_percentage" as tackles_during_take_on_percentage
            ,"Carries" as carries
            ,"TotDist"  as carrying_distance_
            ,"PrgDist"  as progressive_carrying_distance
            ,"PrgC" as progressive_carries
            ,"1/3"  as carries_into_final_3rd
            ,"CPA" as carries_into_pen_area
            ,"Mis"  as miscontrols
            ,"Dis"  as dispossessed
            ,"Rec"  as passes_received
            ,"PrgR" as progressive_passes_received
        FROM source
    )

select * from renamed