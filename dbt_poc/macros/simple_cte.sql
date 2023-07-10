{% macro simple_cte(tuple_list) %}

WITH{% for cte_ref in tuple_list %} {{cte_ref[0]}} AS (

    SELECT * 
    FROM {{ dbt_unit_testing.ref(cte_ref[1]) }}

)
    {%- if not loop.last -%}
    ,
    {%- endif -%}
    
    {%- endfor -%}

{%- endmacro %}
