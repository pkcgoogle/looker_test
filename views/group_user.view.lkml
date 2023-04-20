view: group_user {
  sql_table_name: PUBLIC.GROUP_USER ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: from_group_id {
    type: number
    sql: ${TABLE}.FROM_GROUP_ID ;;
  }

  dimension: group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.GROUP_ID ;;
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
      group.name,
      group.id
    ]
  }
}
