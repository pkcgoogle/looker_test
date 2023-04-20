view: render_job {
  sql_table_name: PUBLIC.RENDER_JOB ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: caching_node_id {
    type: number
    sql: ${TABLE}.CACHING_NODE_ID ;;
  }

  dimension: caching_runtime {
    type: number
    sql: ${TABLE}.CACHING_RUNTIME ;;
  }

  dimension: caching_thread_id {
    type: number
    sql: ${TABLE}.CACHING_THREAD_ID ;;
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

  dimension_group: finalized {
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
    sql: ${TABLE}.FINALIZED_AT ;;
  }

  dimension: maestro_job_id {
    type: string
    sql: ${TABLE}.MAESTRO_JOB_ID ;;
  }

  dimension: node_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.NODE_ID ;;
  }

  dimension: phantom_runtime {
    type: number
    sql: ${TABLE}.PHANTOM_RUNTIME ;;
  }

  dimension: phantomjs_pid {
    type: number
    value_format_name: id
    sql: ${TABLE}.PHANTOMJS_PID ;;
  }

  dimension: render_node_id {
    type: number
    sql: ${TABLE}.RENDER_NODE_ID ;;
  }

  dimension: render_options {
    type: string
    sql: ${TABLE}.RENDER_OPTIONS ;;
  }

  dimension: render_thread_id {
    type: number
    sql: ${TABLE}.RENDER_THREAD_ID ;;
  }

  dimension: retried_job_id {
    type: number
    sql: ${TABLE}.RETRIED_JOB_ID ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.SLUG ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: status_detail {
    type: string
    sql: ${TABLE}.STATUS_DETAIL ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.USER_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      user.dev_branch_name,
      user.dev_mode_user_id,
      user.last_name,
      user.first_name,
      node.hostname,
      node.prev_node_id
    ]
  }
}
