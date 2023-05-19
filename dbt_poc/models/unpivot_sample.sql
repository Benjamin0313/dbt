with test as (
    
    {{ dbt_utils.unpivot(ref('pivot_sample'), cast_to='integer', exclude=['year', 'code', 'unit', 'target']) }}

)

select * from test