{% macro cockroachdb__drop_table(relation) -%}
    drop table if exists {{ relation }} cascade
{%- endmacro %}
