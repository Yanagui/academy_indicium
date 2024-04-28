with
    vendas_em_1997 as (
        select sum(valor_bruto) as total_bruto
        , min(DATA_DO_PEDIDO) as min_dt_pedido
        , max(DATA_DO_PEDIDO) as max_dt_pedido
        from {{ ref('fct_vendas') }}
        where data_do_pedido between '1997-01-01' and '1997-12-31'
    )

select total_bruto
from vendas_em_1997 -- 658388.75
where total_bruto not between 658388 and 658389

