view: color_palette {
  sql_table_name: PUBLIC.COLOR_PALETTE ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: color_collection_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.COLOR_COLLECTION_ID ;;
  }

  dimension: color_options {
    type: string
    sql: ${TABLE}.COLOR_OPTIONS ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.LABEL ;;
  }

  dimension: order {
    type: number
    sql: ${TABLE}."ORDER" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [id, color_collection.id]
  }
}
