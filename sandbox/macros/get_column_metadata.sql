{% macro get_column_metadata(source_name, table_name) %}
  {% set source_data = source(source_name, table_name) %}
  {{ log("Source Data: " ~ source_data, info=true) }}

  {% for column in source_data.columns %}
    {{ log("Column: " ~ column.name, info=true) }}
    {% if column.meta.tag is not none %}
      {% for tag in column.meta.tag %}
        {{ log("Tag: " ~ tag, info=true) }}
        {% if tag.type is not none and tag.name is not none and tag.value is not none and tag.quoting is not none %}
          {{ log("Column Name: " ~ column.name, info=true) }}
          {{ log("Type: " ~ tag.type, info=true) }}
          {{ log("Value: " ~ tag.value, info=true) }}
          {{ log("Quoting: " ~ tag.quoting, info=true) }}
        {% endif %}
      {% endfor %}
    {% endif %}
  {% endfor %}
{% endmacro %}