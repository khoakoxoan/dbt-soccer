SELECT
    "Player"   as player
    ,"Nation"   as nation
    ,"Pos"  as position
    ,"Squad" as squad
    ,"Age"  as age
    ,"Born" born
    ,"Cmp"  as passes_completed
    ,"Att"  as passes_attempted
    ,"Cmp_percentage"   as pass_completed_percentage
    ,"TotDist"  as total_passing_distance
    ,"PrgDist"  as progressive_passing_distance
    ,"short_Cmp"    as short_passes_completed
    ,"short_Att"    as short_passes_attempted
    ,"short_Cmp_percentage" as short_passes_completed_percentage
    ,"medium_Cmp" as medium_passes_completed
    ,"medium_Att" as medium_passes_attempted 
    ,"medium_Cmp_percentage"as medium_passes_completed_percentage
    ,"Long_Cmp" as long_passes_completed
    ,"Long_Att" as long_passes_attempted
    ,"Long_Cmp_percentage"  as long_passes_completed_percentage
    ,"Ast"  as assists
    ,"KP"   as key_passes
    ,"1/3"  as final_third_passses
    ,"PPA"  as passes_into_penalty_area
    ,"CrsPA"    as crosses_into_penalty_area
    ,"PrgP" as progressive_passes

FROM    
    {{source('epl', 'passing')}}