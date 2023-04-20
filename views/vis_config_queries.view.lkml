view: vis_config_queries {
  sql_table_name: PUBLIC.VIS_CONFIG_QUERIES ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: result_maker_slug {
    type: string
    sql: ${TABLE}.RESULT_MAKER_SLUG ;;
  }

  dimension: vis_config_slug {
    type: string
    sql: ${TABLE}.VIS_CONFIG_SLUG ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
