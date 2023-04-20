view: user_direct_role {
  sql_table_name: PUBLIC.USER_DIRECT_ROLE ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: role_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ROLE_ID ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.USER_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      user.dev_branch_name,
      user.dev_mode_user_id,
      user.last_name,
      user.first_name,
      role.id,
      role.name
    ]
  }
}
