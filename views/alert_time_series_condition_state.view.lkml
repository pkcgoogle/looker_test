view: alert_time_series_condition_state {
  sql_table_name: PUBLIC.ALERT_TIME_SERIES_CONDITION_STATE ;;
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

  dimension: condition_met {
    type: yesno
    sql: ${TABLE}.CONDITION_MET ;;
  }

  dimension: latest_time_series_id {
    type: string
    sql: ${TABLE}.LATEST_TIME_SERIES_ID ;;
  }

  dimension: previous_time_series_id {
    type: string
    sql: ${TABLE}.PREVIOUS_TIME_SERIES_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, alert_condition.field_name, alert_condition.id]
  }
}
