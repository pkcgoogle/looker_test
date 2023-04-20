view: action_hub_secret_user_state {
  sql_table_name: PUBLIC.ACTION_HUB_SECRET_USER_STATE ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: action_id {
    type: string
    sql: ${TABLE}.ACTION_ID ;;
  }

  dimension: encrypted_action_hub_secret_state {
    type: string
    sql: ${TABLE}.ENCRYPTED_ACTION_HUB_SECRET_STATE ;;
  }

  dimension_group: next_run {
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
    sql: ${TABLE}.NEXT_RUN_AT ;;
  }

  dimension: ttl_seconds {
    type: number
    sql: ${TABLE}.TTL_SECONDS ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.USER_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user.dev_branch_name, user.dev_mode_user_id, user.last_name, user.first_name]
  }
}
