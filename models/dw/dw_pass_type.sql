SELECT
    "Player" as player
    ,"Nation"  as nation
    ,"Pos" as position
    ,"Squad"    as squad
    ,"Age"  as age
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
FROM
    {{source('epl' ,'pass_type')}}