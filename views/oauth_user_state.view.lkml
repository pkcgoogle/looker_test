view: oauth_user_state {
  sql_table_name: PUBLIC.OAUTH_USER_STATE ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: access_token_expires_at {
    type: number
    sql: ${TABLE}.ACCESS_TOKEN_EXPIRES_AT ;;
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

  dimension: encrypted_access_token {
    type: string
    sql: ${TABLE}.ENCRYPTED_ACCESS_TOKEN ;;
  }

  dimension: encrypted_refresh_token {
    type: string
    sql: ${TABLE}.ENCRYPTED_REFRESH_TOKEN ;;
  }

  dimension: expiry_last_checked_at {
    type: number
    sql: ${TABLE}.EXPIRY_LAST_CHECKED_AT ;;
  }

  dimension: oauth_application_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OAUTH_APPLICATION_ID ;;
  }

  dimension: refresh_token_expires_at {
    type: number
    sql: ${TABLE}.REFRESH_TOKEN_EXPIRES_AT ;;
  }

  dimension: scope {
    type: string
    sql: ${TABLE}."SCOPE" ;;
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
      oauth_application.name,
      oauth_application.id,
      oauth_request_state.count
    ]
  }
}
