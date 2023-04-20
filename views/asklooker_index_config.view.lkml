view: asklooker_index_config {
  sql_table_name: PUBLIC.ASKLOOKER_INDEX_CONFIG ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: cron {
    type: string
    sql: ${TABLE}.CRON ;;
  }

  dimension: metadata_config_id {
    type: string
    sql: ${TABLE}.METADATA_CONFIG_ID ;;
  }

  dimension_group: next_run {
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
    sql: ${TABLE}.NEXT_RUN_AT ;;
  }

  measure: count {
    type: count
    drill_fields: [id, asklooker_index_execution_history.count]
  }
}
