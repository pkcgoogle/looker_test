view: vis_config_defaults {
  sql_table_name: PUBLIC.VIS_CONFIG_DEFAULTS ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CREATED_AT ;;
  }

  dimension: defaults {
    type: string
    sql: ${TABLE}.DEFAULTS ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}.VERSION ;;
  }

  dimension: vis_type {
    type: string
    sql: ${TABLE}.VIS_TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
