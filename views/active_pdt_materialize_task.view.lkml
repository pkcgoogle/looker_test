view: active_pdt_materialize_task {
  sql_table_name: PUBLIC.ACTIVE_PDT_MATERIALIZE_TASK ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: connection {
    type: string
    sql: ${TABLE}.CONNECTION ;;
  }

  dimension: created_at {
    type: number
    sql: ${TABLE}.CREATED_AT ;;
  }

  dimension: finished_at {
    type: number
    sql: ${TABLE}.FINISHED_AT ;;
  }

  dimension: force_full_incremental {
    type: string
    sql: ${TABLE}.FORCE_FULL_INCREMENTAL ;;
  }

  dimension: force_rebuild {
    type: string
    sql: ${TABLE}.FORCE_REBUILD ;;
  }

  dimension: model_name {
    type: string
    sql: ${TABLE}.MODEL_NAME ;;
  }

  dimension: node_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.NODE_ID ;;
  }

  dimension: query_slug {
    type: string
    sql: ${TABLE}.QUERY_SLUG ;;
  }

  dimension: started_at {
    type: number
    sql: ${TABLE}.STARTED_AT ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.STATUS ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.USER_ID ;;
  }

  dimension: view_name {
    type: string
    sql: ${TABLE}.VIEW_NAME ;;
  }

  dimension: workspace {
    type: string
    sql: ${TABLE}.WORKSPACE ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      model_name,
      view_name,
      node.hostname,
      node.prev_node_id,
      user.dev_branch_name,
      user.dev_mode_user_id,
      user.last_name,
      user.first_name
    ]
  }
}
