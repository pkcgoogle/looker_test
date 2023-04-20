view: credentials_email {
  sql_table_name: PUBLIC.CREDENTIALS_EMAIL ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
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

  dimension: email {
    type: string
    sql: ${TABLE}.EMAIL ;;
  }

  dimension: encrypted_password {
    type: string
    sql: ${TABLE}.ENCRYPTED_PASSWORD ;;
  }

  dimension: encrypted_password_reset_token {
    type: string
    sql: ${TABLE}.ENCRYPTED_PASSWORD_RESET_TOKEN ;;
  }

  dimension: encrypted_password_reset_token2 {
    type: string
    sql: ${TABLE}.ENCRYPTED_PASSWORD_RESET_TOKEN2 ;;
  }

  dimension: forced_password_reset_at_next_login {
    type: yesno
    sql: ${TABLE}.FORCED_PASSWORD_RESET_AT_NEXT_LOGIN ;;
  }

  dimension_group: forced_password_reset_session_start {
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
    sql: ${TABLE}.FORCED_PASSWORD_RESET_SESSION_START ;;
  }

  dimension: last_login_attempt_id {
    type: number
    sql: ${TABLE}.LAST_LOGIN_ATTEMPT_ID ;;
  }

  dimension_group: logged_in {
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
    sql: ${TABLE}.LOGGED_IN_AT ;;
  }

  dimension_group: password_reset_sent {
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
    sql: ${TABLE}.PASSWORD_RESET_SENT_AT ;;
  }

  dimension: password_reset_token {
    type: string
    sql: ${TABLE}.PASSWORD_RESET_TOKEN ;;
  }

  dimension: reset_token_lookup_id {
    type: string
    sql: ${TABLE}.RESET_TOKEN_LOOKUP_ID ;;
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
