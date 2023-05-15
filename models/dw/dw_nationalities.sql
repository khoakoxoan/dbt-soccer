SELECT
    "Nation" as nation
    ,"# Players"    as num_players
    ,"Min"  as num_played
FROM 
    {{source('epl', 'Nationalities')}}