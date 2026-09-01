
{% test min_row_count_check(model, min_row_count) %}

{{ config(severity='ERROR') }}

    select *
    from {{ model }}
    where (select count(*) from {{ model }}) < {{ min_row_count }}
{% endtest %}