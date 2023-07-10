{{ config(tags=['unit-test']) }}

{% call dbt_unit_testing.test('simple_cte', 'otameshi') %}

  {% call dbt_unit_testing.mock_ref ('source') %}
    select 2 as id
  {% endcall %}

  {% call dbt_unit_testing.expect() %}
    select 1 as id
  {% endcall %}
{% endcall %}
