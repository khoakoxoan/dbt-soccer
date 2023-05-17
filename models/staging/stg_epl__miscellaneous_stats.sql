{{ config(alias='miscellaneous_stats') }}


with
    source as(
        SELECT * FROM {{source('epl', 'miscellaneous_stat')}}  
    ),

    renamed as (
        SELECT
            "Player"  as player_name
            ,LEFT("Nation" , strpos( "Nation", ' ') - 1 ) as nation_id
            ,LEFT("Pos", 2) as position
            ,"Squad"  as squad
            ,CAST(LEFT("Age", 2) AS INT) as age
            ,"Born"   as born
            ,"90s"    as minute_div_90
            ,"CrdY"   as yellow_card
            ,"CrdR"   as red_card
            ,"2CrdY"  as second_yellow_card
            ,"Fls"    as foul_commited
            ,"Fld"    as foul_drawn
            ,"Off"    as offsides
            ,"Crs"    as crosses
            ,"Int"    as interceptions  
            ,"TklW"   as tackles_won
            ,"PKwon"  as pen_won
            ,"PKcon"  as pen_conceded
            ,"OG"     as own_goals
            ,"Recov"  as ball_recoveries
            ,"Won"    as aerial_won
            ,"Lost"   as aerial_lost
            ,"Won_percentage" as aerial_won_percentage
        FROM source
    )

select * from renamed
