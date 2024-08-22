{{
  config(
    materialized = "table"
  )
}}


select
    *
    , {{ sample_dbt_package.check_for_date_column('orders') }} as has_date_column
from {{ ref('orders') }}