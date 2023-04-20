view: credentials_api3 {
  sql_table_name: PUBLIC.CREDENTIALS_API3 ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: client_id {
    type: string
    sql: ${TABLE}.CLIENT_ID ;;
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

  dimension: encrypted_client_secret {
    type: string
    sql: ${TABLE}.ENCRYPTED_CLIENT_SECRET ;;
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

  dimension: purpose {
    type: string
    sql: ${TABLE}.PURPOSE ;;
  }

  dimension: unique_client_id {
    type: string
    sql: ${TABLE}.UNIQUE_CLIENT_ID ;;
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
      access_token.count
    ]
  }
}
