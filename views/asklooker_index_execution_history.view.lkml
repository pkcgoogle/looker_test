view: asklooker_index_execution_history {
  sql_table_name: PUBLIC.ASKLOOKER_INDEX_EXECUTION_HISTORY ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: asklooker_index_config_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ASKLOOKER_INDEX_CONFIG_ID ;;
  }

  dimension: chunk_id {
    type: string
    sql: ${TABLE}.CHUNK_ID ;;
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

  dimension: message {
    type: string
    sql: ${TABLE}.MESSAGE ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.UPDATED_AT ;;
  }

  measure: count {
    type: count
    drill_fields: [id, asklooker_index_config.id]
  }
}
