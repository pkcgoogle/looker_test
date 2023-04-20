view: query_metrics {
  sql_table_name: PUBLIC.QUERY_METRICS ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: acquire_connection {
    type: number
    sql: ${TABLE}.ACQUIRE_CONNECTION ;;
  }

  dimension: artifact_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ARTIFACT_ID ;;
  }

  dimension: artifact_type {
    type: string
    sql: ${TABLE}.ARTIFACT_TYPE ;;
  }

  dimension: async_processing {
    type: number
    sql: ${TABLE}.ASYNC_PROCESSING ;;
  }

  dimension: cache_load {
    type: number
    sql: ${TABLE}.CACHE_LOAD ;;
  }

  dimension: connection_held {
    type: number
    sql: ${TABLE}.CONNECTION_HELD ;;
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

  dimension: execute_extents_query {
    type: number
    sql: ${TABLE}.EXECUTE_EXTENTS_QUERY ;;
  }

  dimension: execute_fill_max_query {
    type: number
    sql: ${TABLE}.EXECUTE_FILL_MAX_QUERY ;;
  }

  dimension: execute_fill_min_query {
    type: number
    sql: ${TABLE}.EXECUTE_FILL_MIN_QUERY ;;
  }

  dimension: execute_fill_pivot_max_query {
    type: number
    sql: ${TABLE}.EXECUTE_FILL_PIVOT_MAX_QUERY ;;
  }

  dimension: execute_fill_pivot_min_query {
    type: number
    sql: ${TABLE}.EXECUTE_FILL_PIVOT_MIN_QUERY ;;
  }

  dimension: execute_grand_totals_query {
    type: number
    sql: ${TABLE}.EXECUTE_GRAND_TOTALS_QUERY ;;
  }

  dimension: execute_main_query {
    type: number
    sql: ${TABLE}.EXECUTE_MAIN_QUERY ;;
  }

  dimension: execute_row_totals_query {
    type: number
    sql: ${TABLE}.EXECUTE_ROW_TOTALS_QUERY ;;
  }

  dimension: execute_sql {
    type: number
    sql: ${TABLE}.EXECUTE_SQL ;;
  }

  dimension: execute_totals_query {
    type: number
    sql: ${TABLE}.EXECUTE_TOTALS_QUERY ;;
  }

  dimension: explore_init {
    type: number
    sql: ${TABLE}.EXPLORE_INIT ;;
  }

  dimension: explore_init_mode {
    type: string
    sql: ${TABLE}.EXPLORE_INIT_MODE ;;
  }

  dimension: extra_fields_json {
    type: string
    sql: ${TABLE}.EXTRA_FIELDS_JSON ;;
  }

  dimension: history_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.HISTORY_ID ;;
  }

  dimension: load_extents_query_in_memory {
    type: number
    sql: ${TABLE}.LOAD_EXTENTS_QUERY_IN_MEMORY ;;
  }

  dimension: load_fill_max_query_in_memory {
    type: number
    sql: ${TABLE}.LOAD_FILL_MAX_QUERY_IN_MEMORY ;;
  }

  dimension: load_fill_min_query_in_memory {
    type: number
    sql: ${TABLE}.LOAD_FILL_MIN_QUERY_IN_MEMORY ;;
  }

  dimension: load_fill_pivot_max_query_in_memory {
    type: number
    sql: ${TABLE}.LOAD_FILL_PIVOT_MAX_QUERY_IN_MEMORY ;;
  }

  dimension: load_fill_pivot_min_query_in_memory {
    type: number
    sql: ${TABLE}.LOAD_FILL_PIVOT_MIN_QUERY_IN_MEMORY ;;
  }

  dimension: load_grand_totals_query_in_memory {
    type: number
    sql: ${TABLE}.LOAD_GRAND_TOTALS_QUERY_IN_MEMORY ;;
  }

  dimension: load_main_query_in_memory {
    type: number
    sql: ${TABLE}.LOAD_MAIN_QUERY_IN_MEMORY ;;
  }

  dimension: load_process_and_stream_main_query {
    type: number
    sql: ${TABLE}.LOAD_PROCESS_AND_STREAM_MAIN_QUERY ;;
  }

  dimension: load_row_totals_query_in_memory {
    type: number
    sql: ${TABLE}.LOAD_ROW_TOTALS_QUERY_IN_MEMORY ;;
  }

  dimension: load_totals_query_in_memory {
    type: number
    sql: ${TABLE}.LOAD_TOTALS_QUERY_IN_MEMORY ;;
  }

  dimension: model_init {
    type: number
    sql: ${TABLE}.MODEL_INIT ;;
  }

  dimension: model_init_mode {
    type: string
    sql: ${TABLE}.MODEL_INIT_MODE ;;
  }

  dimension: pdt {
    type: number
    sql: ${TABLE}.PDT ;;
  }

  dimension: per_user_throttler {
    type: number
    sql: ${TABLE}.PER_USER_THROTTLER ;;
  }

  dimension: post_processing {
    type: number
    sql: ${TABLE}.POST_PROCESSING ;;
  }

  dimension: prepare {
    type: number
    sql: ${TABLE}."PREPARE" ;;
  }

  dimension: project_init {
    type: number
    sql: ${TABLE}.PROJECT_INIT ;;
  }

  dimension: query_task_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.QUERY_TASK_ID ;;
  }

  dimension: queued {
    type: number
    sql: ${TABLE}.QUEUED ;;
  }

  dimension: stream_to_cache {
    type: number
    sql: ${TABLE}.STREAM_TO_CACHE ;;
  }

  dimension: temporary_dt {
    type: number
    sql: ${TABLE}.TEMPORARY_DT ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      history.connection_name,
      history.id,
      artifact.id,
      query_task.connection_name,
      query_task.id
    ]
  }
}
