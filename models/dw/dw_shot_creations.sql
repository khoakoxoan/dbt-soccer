SELECT
    "Rk" as rank
    ,"Player"   as player
    ,"Nation"   nation
    ,"Pos"  as postion
    ,"Squad"    as squad
    ,"Age"  as age
    ,"Born" as born
    ,"SCA"  as shot_creation_action
    ,"SCA90"    as shot_creation_action_per_90mins
    ,"PassLive" as live_ball_passes_to_goals
    ,"PassDead" as dead_ball_passes_to_goals
    ,"TO"   as take_ons_to_goal
    ,"Sh"   as shots_to_shots
    ,"Fld"  as foul_to_shots
    ,"Def"  as def_to_shots
FROM
    {{source('epl', 'shot_creation')}}