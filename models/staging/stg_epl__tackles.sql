




{{ config(alias='tackles') }}


with
    source as(
        SELECT * FROM {{source('epl', 'tackles')}}
    ),

    renamed as (
        SELECT
            "Player" AS player
            ,LEFT("Nation" , strpos( "Nation", ' ') - 1 ) as nation_id
            ,LEFT("Pos", 2)  AS position
            ,"Squad"  AS squad
            ,CAST(LEFT("Age", 2) AS INT) as age
            ,"Born" AS born
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
        FROM source
    )

select * from renamed