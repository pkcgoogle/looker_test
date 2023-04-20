view: look_json {
  sql_table_name: PUBLIC.LOOK_JSON ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: json_description {
    type: string
    sql: ${TABLE}.JSON_DESCRIPTION ;;
  }

  dimension: look_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.LOOK_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, look.id]
  }
}
