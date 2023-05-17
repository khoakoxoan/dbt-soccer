
{{ config(alias='player_stats') }}


with
    source as(
        SELECT * FROM {{source('epl', 'player_stat')}}
    ),

    renamed as (
        SELECT
            "Player" AS player
            ,LEFT("Nation" , strpos( "Nation", ' ') - 1 ) as nation_id
            ,LEFT("Pos", 2)  AS position
            ,"Squad"  AS squad
            ,CAST(LEFT("Age", 2) AS INT) as age
            ,"Born" AS born
            ,"MP" AS matched_played
            ,"Starts"   AS starts
            ,"Min"  AS  minutes_played
            ,"90s"  AS minutes_div_90
            ,"Gls"  AS goals
            ,"Ast"  AS assists
            ,"G+A"  AS goals_assists
            ,"G-PK" AS non_penalty_goals
            ,"PK"   AS penalty_goal
            ,"PKatt" AS penalty_attemps
            ,"CrdY" AS yellow_cards
            ,"CrdR" AS red_cards
        FROM source
    )

select * from renamed