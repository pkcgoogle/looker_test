view: dashboard_json {
  sql_table_name: PUBLIC.DASHBOARD_JSON ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: dashboard_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.DASHBOARD_ID ;;
  }

  dimension: json_description {
    type: string
    sql: ${TABLE}.JSON_DESCRIPTION ;;
  }

  measure: count {
    type: count
    drill_fields: [id, dashboard.id]
  }
}
