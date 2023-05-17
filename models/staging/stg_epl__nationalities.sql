{{ config(alias='nationalities') }}


with
    source as(
        SELECT * FROM {{source('epl', 'Nationalities')}}  
    ),

    renamed as (
        SELECT
            LEFT("Nation" , strpos( "Nation", ' ') - 1 ) as nation_id
            ,RIGHT("Nation" ,	LENGTH("Nation") - LENGTH(left("Nation" , strpos("Nation", ' '))))
            ,"# Players"    as num_players
            ,"Min"  as num_played
        FROM source
    )

select * from renamed
