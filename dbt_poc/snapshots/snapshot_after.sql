{# pkとload_time以外を持ってくる #}
{% snapshot snapshot_after %}

{{
  config(
    target_database='D_HARATO_DB',
    target_schema='DBT',
    unique_key='pk',
    strategy='check',
    check_cols=["SUB_CATEGORY"]
  )
}}

select * from {{ source('SAMPLE_DATA', 'sample_data_moto') }}
-- qualify
--     row_number() over (
--         partition by pk
--         order by date desc
--     ) = 1
  
{% endsnapshot %}