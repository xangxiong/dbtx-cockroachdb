{% macro cockroachdb__current_timestamp() -%}
    now()
{%- endmacro %}

{% macro cockroachdb__snapshot_string_as_time(timestamp) -%}
    {%- set result = "'" ~ timestamp ~ "'::timestamp without time zone" -%}
    {{ return(result) }}
{%- endmacro %}

{% macro cockroachdb__snapshot_get_time() -%}
  {{ current_timestamp() }}::timestamp without time zone
{%- endmacro %}

{% macro cockroachdb__current_timestamp_backcompat() %}
    current_timestamp::{{ type_timestamp() }}
{% endmacro %}

{% macro cockroachdb__current_timestamp_in_utc_backcompat() %}
    (current_timestamp at time zone 'utc')::{{ type_timestamp() }}
{% endmacro %}
