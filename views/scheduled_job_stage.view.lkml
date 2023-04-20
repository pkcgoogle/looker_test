view: scheduled_job_stage {
  sql_table_name: PUBLIC.SCHEDULED_JOB_STAGE ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension_group: completed {
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
    sql: ${TABLE}.COMPLETED_AT ;;
  }

  dimension: node_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.NODE_ID ;;
  }

  dimension: scheduled_job_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SCHEDULED_JOB_ID ;;
  }

  dimension: stage {
    type: string
    sql: ${TABLE}.STAGE ;;
  }

  dimension_group: started {
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
    sql: ${TABLE}.STARTED_AT ;;
  }

  dimension: thread_id {
    type: number
    sql: ${TABLE}.THREAD_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, scheduled_job.id, scheduled_job.name, node.hostname, node.prev_node_id]
  }
}
