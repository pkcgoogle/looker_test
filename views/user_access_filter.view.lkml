view: user_access_filter {
  sql_table_name: PUBLIC.USER_ACCESS_FILTER ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: dictionary {
    type: string
    sql: ${TABLE}.DICTIONARY ;;
  }

  dimension: field {
    type: string
    sql: ${TABLE}.FIELD ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.USER_ID ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}."VALUE" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user.dev_branch_name, user.dev_mode_user_id, user.last_name, user.first_name]
  }
}
