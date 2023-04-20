view: prototype_resolution {
  sql_table_name: PUBLIC.PROTOTYPE_RESOLUTION ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: prototype_file_names {
    type: string
    sql: ${TABLE}.PROTOTYPE_FILE_NAMES ;;
  }

  dimension: prototype_file_names_json {
    type: string
    sql: ${TABLE}.PROTOTYPE_FILE_NAMES_JSON ;;
  }

  dimension: remote_ref {
    type: string
    sql: ${TABLE}.REMOTE_REF ;;
  }

  dimension: remote_url {
    type: string
    sql: ${TABLE}.REMOTE_URL ;;
  }

  dimension: root_project_id {
    type: string
    sql: ${TABLE}.ROOT_PROJECT_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
