view: license_validation_response {
  sql_table_name: PUBLIC.LICENSE_VALIDATION_RESPONSE ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: integrity_check {
    type: string
    sql: ${TABLE}.INTEGRITY_CHECK ;;
  }

  dimension: response_code {
    type: number
    sql: ${TABLE}.RESPONSE_CODE ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
  }

  dimension_group: timestamp_completed {
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
    sql: ${TABLE}.TIMESTAMP_COMPLETED ;;
  }

  dimension_group: timestamp_initiated {
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
    sql: ${TABLE}.TIMESTAMP_INITIATED ;;
  }

  dimension: validation_type {
    type: string
    sql: ${TABLE}.VALIDATION_TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
