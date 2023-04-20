view: event {
  sql_table_name: PUBLIC.EVENT ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.CATEGORY ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CREATED_AT ;;
  }

  dimension: is_admin {
    type: yesno
    sql: ${TABLE}.IS_ADMIN ;;
  }

  dimension: is_api_call {
    type: yesno
    sql: ${TABLE}.IS_API_CALL ;;
  }

  dimension: is_looker_employee {
    type: yesno
    sql: ${TABLE}.IS_LOOKER_EMPLOYEE ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: sudo_user_id {
    type: number
    sql: ${TABLE}.SUDO_USER_ID ;;
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
      name,
      user.dev_branch_name,
      user.dev_mode_user_id,
      user.last_name,
      user.first_name,
      event_attribute.count
    ]
  }
}
