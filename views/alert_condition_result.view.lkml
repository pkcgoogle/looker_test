view: alert_condition_result {
  sql_table_name: PUBLIC.ALERT_CONDITION_RESULT ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: alert_condition_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ALERT_CONDITION_ID ;;
  }

  dimension: alert_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ALERT_ID ;;
  }

  dimension: condition_met {
    type: yesno
    sql: ${TABLE}.CONDITION_MET ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.MESSAGE ;;
  }

  dimension: notification_sent {
    type: yesno
    sql: ${TABLE}.NOTIFICATION_SENT ;;
  }

  dimension: query_history_id {
    type: string
    sql: ${TABLE}.QUERY_HISTORY_ID ;;
  }

  dimension_group: query_ran {
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
    sql: ${TABLE}.QUERY_RAN_AT ;;
  }

  dimension_group: ran_at {
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
    sql: ${TABLE}.RAN_AT ;;
  }

  dimension: runtime {
    type: number
    sql: ${TABLE}.RUNTIME ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: template_data {
    type: string
    sql: ${TABLE}.TEMPLATE_DATA ;;
  }

  dimension: threshold_value {
    type: number
    sql: ${TABLE}.THRESHOLD_VALUE ;;
  }

  measure: count {
    type: count
    drill_fields: [id, alert_condition.field_name, alert_condition.id, alert.id, alert_notification.count]
  }
}
