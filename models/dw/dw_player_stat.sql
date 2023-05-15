SELECT
    "Player" AS player
    ,"Nation" AS nation
    ,"Pos"  AS position
    ,"Squad"  AS squad
    ,"Age"  AS age
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
FROM 
    {{ source('epl' ,'player_stat') }} 