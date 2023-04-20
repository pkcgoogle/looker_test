view: maestro_state_store_child {
  sql_table_name: PUBLIC.MAESTRO_STATE_STORE_CHILD ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: child_id {
    type: string
    sql: ${TABLE}.CHILD_ID ;;
  }

  dimension: child_signature {
    type: string
    sql: ${TABLE}.CHILD_SIGNATURE ;;
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

  dimension: job_id {
    type: string
    sql: ${TABLE}.JOB_ID ;;
  }

  dimension: org {
    type: string
    sql: ${TABLE}.ORG ;;
  }

  dimension: signature {
    type: string
    sql: ${TABLE}.SIGNATURE ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
