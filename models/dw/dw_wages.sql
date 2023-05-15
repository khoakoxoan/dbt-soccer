SELECT
    "Player" as player
    ,"Nation" as nation
    ,"Pos"   as pos
    ,"Squad" as squad
    ,"Age"   as age
    ,"Weekly Wages"  as weekly_wages
    ,"Annual Wages"  as annual_wages
FROM
    {{source('epl', 'wages')}}