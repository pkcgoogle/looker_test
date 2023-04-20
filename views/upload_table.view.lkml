view: upload_table {
  sql_table_name: PUBLIC.UPLOAD_TABLE ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: built_at {
    type: number
    sql: ${TABLE}.BUILT_AT ;;
  }

  dimension: created_at {
    type: number
    sql: ${TABLE}.CREATED_AT ;;
  }

  dimension: db_connection_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DB_CONNECTION_ID ;;
  }

  dimension: definition {
    type: string
    sql: ${TABLE}.DEFINITION ;;
  }

  dimension: file_type {
    type: string
    sql: ${TABLE}.FILE_TYPE ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.TABLE_NAME ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.USER_ID ;;
  }

  dimension: view_name {
    type: string
    sql: ${TABLE}.VIEW_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      view_name,
      table_name,
      user.dev_branch_name,
      user.dev_mode_user_id,
      user.last_name,
      user.first_name,
      db_connection.tmp_db_name,
      db_connection.ssh_username,
      db_connection.username,
      db_connection.id,
      db_connection.name
    ]
  }
}
