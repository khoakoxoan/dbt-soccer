
{{ config(alias='wages') }}


with
    source as(
        SELECT * FROM {{source('epl', 'wages')}}
    ),

    renamed as (
        SELECT
            "Player" as player
            ,LEFT("Nation" , strpos( "Nation", ' ') - 1 ) as nation_id
            ,LEFT("Pos", 2)  AS position
            ,"Squad" as squad
            ,CAST("Age" AS INT) as age
	        ,CAST(SPLIT_PART ("Weekly Wages", ' ',  2) as float) as weekly_wages
	        ,CAST(SPLIT_PART ("Annual Wages", ' ',  2) as float) as annual_wages
        FROM source
    )

select * from renamed