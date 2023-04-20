view: active_pdt_publish_task {
  sql_table_name: PUBLIC.ACTIVE_PDT_PUBLISH_TASK ;;
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

  dimension: key {
    type: string
    sql: ${TABLE}.KEY ;;
  }

  dimension: node_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.NODE_ID ;;
  }

  dimension: started_at {
    type: number
    sql: ${TABLE}.STARTED_AT ;;
  }

  dimension: view_name {
    type: string
    sql: ${TABLE}.VIEW_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [id, view_name, node.hostname, node.prev_node_id]
  }
}
