view: alert_sync_history {
  sql_table_name: PUBLIC.ALERT_SYNC_HISTORY ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: action {
    type: string
    sql: ${TABLE}.ACTION ;;
  }

  dimension: alert_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ALERT_ID ;;
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

  dimension: new_alert_condition_id {
    type: number
    sql: ${TABLE}.NEW_ALERT_CONDITION_ID ;;
  }

  dimension_group: notified {
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
    sql: ${TABLE}.NOTIFIED_AT ;;
  }

  dimension: original_alert_condition_id {
    type: number
    sql: ${TABLE}.ORIGINAL_ALERT_CONDITION_ID ;;
  }

  dimension: sync_classification_result {
    type: string
    sql: ${TABLE}.SYNC_CLASSIFICATION_RESULT ;;
  }

  dimension: sync_type {
    type: string
    sql: ${TABLE}.SYNC_TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [id, alert.id]
  }
}
