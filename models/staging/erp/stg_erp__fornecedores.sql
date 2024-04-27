with 
    fonte_fornecedores as (
        select
        cast(c1 as int) as pk_fornecedor
        , cast(c2 as varchar) as nm_fornecedor
        , cast(c6 as varchar) as cidade_fornecedor
        , cast(c9 as varchar) as pais_fornencedor
    from {{ source('erp', 'supplier') }}
    where c1 != 'Id'
    )

select * 
from fonte_fornecedores
