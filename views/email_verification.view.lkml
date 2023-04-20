view: email_verification {
  sql_table_name: PUBLIC.EMAIL_VERIFICATION ;;
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

  dimension: encrypted_token {
    type: string
    sql: ${TABLE}.ENCRYPTED_TOKEN ;;
  }

  dimension: expires_at {
    type: number
    sql: ${TABLE}.EXPIRES_AT ;;
  }

  dimension: new_email {
    type: string
    sql: ${TABLE}.NEW_EMAIL ;;
  }

  dimension: previous_email {
    type: string
    sql: ${TABLE}.PREVIOUS_EMAIL ;;
  }

  dimension: secure_identifier {
    type: string
    sql: ${TABLE}.SECURE_IDENTIFIER ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.USER_ID ;;
  }

  dimension: verified_at {
    type: number
    sql: ${TABLE}.VERIFIED_AT ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user.dev_branch_name, user.dev_mode_user_id, user.last_name, user.first_name]
  }
}
