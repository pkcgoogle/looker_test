view: active_pdt_scraper_task {
  sql_table_name: PUBLIC.ACTIVE_PDT_SCRAPER_TASK ;;
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

  dimension: node_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.NODE_ID ;;
  }

  dimension: started_at {
    type: number
    sql: ${TABLE}.STARTED_AT ;;
  }

  measure: count {
    type: count
    drill_fields: [id, node.hostname, node.prev_node_id]
  }
}
