view: credentials_totp {
  sql_table_name: PUBLIC.CREDENTIALS_TOTP ;;
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

  dimension: encrypted_secret {
    type: string
    sql: ${TABLE}.ENCRYPTED_SECRET ;;
  }

  dimension: secret {
    type: string
    sql: ${TABLE}.SECRET ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.USER_ID ;;
  }

  dimension: verified {
    type: yesno
    sql: ${TABLE}.VERIFIED ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user.dev_branch_name, user.dev_mode_user_id, user.last_name, user.first_name]
  }
}
