view: lookml_model_db_connection {
  sql_table_name: PUBLIC.LOOKML_MODEL_DB_CONNECTION ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: db_connection_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DB_CONNECTION_ID ;;
  }

  dimension: lookml_model_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.LOOKML_MODEL_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      lookml_model.id,
      lookml_model.name,
      lookml_model.project_name,
      db_connection.tmp_db_name,
      db_connection.ssh_username,
      db_connection.username,
      db_connection.id,
      db_connection.name
    ]
  }
}
