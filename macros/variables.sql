{% macro learn_variables()%}

{% set my_name_jinga = "mythri" %}

{{ log("Hello "  ~ my_name_jinga , info=True)  }}

{{
    log("Hello dbt user "  ~ var("user_name","default") , info=True)
}}

{% endmacro %}