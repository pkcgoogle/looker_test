view: action_hub_state_authentication {
  sql_table_name: PUBLIC.ACTION_HUB_STATE_AUTHENTICATION ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: created_at {
    type: number
    sql: ${TABLE}.CREATED_AT ;;
  }

  dimension: encrypted_auth_token {
    type: string
    sql: ${TABLE}.ENCRYPTED_AUTH_TOKEN ;;
  }

  dimension: expires_at {
    type: number
    sql: ${TABLE}.EXPIRES_AT ;;
  }

  dimension: lookup_id {
    type: string
    sql: ${TABLE}.LOOKUP_ID ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.USER_ID ;;
  }

  dimension: user_state_id {
    type: number
    sql: ${TABLE}.USER_STATE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user.dev_branch_name, user.dev_mode_user_id, user.last_name, user.first_name]
  }
}
