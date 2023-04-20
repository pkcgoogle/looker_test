view: alert_condition {
  sql_table_name: PUBLIC.ALERT_CONDITION ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: applied_dashboard_filters {
    type: string
    sql: ${TABLE}.APPLIED_DASHBOARD_FILTERS ;;
  }

  dimension: base_query_id {
    type: number
    sql: ${TABLE}.BASE_QUERY_ID ;;
  }

  dimension: condition_query_id {
    type: number
    sql: ${TABLE}.CONDITION_QUERY_ID ;;
  }

  dimension: condition_strategy {
    type: string
    sql: ${TABLE}.CONDITION_STRATEGY ;;
  }

  dimension: condition_type {
    type: string
    sql: ${TABLE}.CONDITION_TYPE ;;
  }

  dimension: field_name {
    type: string
    sql: ${TABLE}.FIELD_NAME ;;
  }

  dimension: field_selection_filters {
    type: string
    sql: ${TABLE}.FIELD_SELECTION_FILTERS ;;
  }

  dimension: field_title {
    type: string
    sql: ${TABLE}.FIELD_TITLE ;;
  }

  dimension: threshold_value {
    type: string
    sql: ${TABLE}.THRESHOLD_VALUE ;;
  }

  dimension: time_series_dimension {
    type: string
    sql: ${TABLE}.TIME_SERIES_DIMENSION ;;
  }

  measure: count {
    type: count
    drill_fields: [id, field_name, alert.count, alert_condition_result.count, alert_time_series_condition_state.count]
  }
}
