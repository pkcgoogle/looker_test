view: maestro_state_store_state {
  sql_table_name: PUBLIC.MAESTRO_STATE_STORE_STATE ;;
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

  dimension: stage {
    type: string
    sql: ${TABLE}.STAGE ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
