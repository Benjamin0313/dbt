{% snapshot sample_snapshot %}

{{
  config(
    target_database='D_HARATO_DB',
    target_schema='DBT',
    unique_key='id',
    strategy='timestamp',
    updated_at='updated_at',
  )
}}

select * from {{ source('SAMPLE_DATA', 'SNAPSHOT_TEST') }}

{% endsnapshot %}