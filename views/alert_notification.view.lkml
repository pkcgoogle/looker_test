view: alert_notification {
  sql_table_name: PUBLIC.ALERT_NOTIFICATION ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: alert_condition_result_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ALERT_CONDITION_RESULT_ID ;;
  }

  dimension: state {
    type: number
    sql: ${TABLE}.STATE ;;
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
      alert_condition_result.id,
      user.dev_branch_name,
      user.dev_mode_user_id,
      user.last_name,
      user.first_name
    ]
  }
}
