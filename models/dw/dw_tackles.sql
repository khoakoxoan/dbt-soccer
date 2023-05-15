SELECT
    "Player"    as player
    ,"Nation"   as nation
    ,"Pos"      as position
    ,"Squad"    as squad
    ,"Age"      as age
    ,"Born"     as born
    ,"Tkl"      as tackles
    ,"TklW"     as tackles_won
    ,"Def 3rd"  as tackles_in_defensive_3rd
    ,"Mid 3rd"  as tackles_in_middle_3rd
    ,"Att 3rd"  as tackles_in_attacking_3rd
    ,"Blocks"   as blocks
    ,"Sh"       as shot_blocks
    ,"Pass"     as pass_blocks
    ,"Int"      as interception
    ,"Clr"      as clearances
    ,"Err"      as errors_to_shots

FROM 
    {{source('epl', 'tackles')}}