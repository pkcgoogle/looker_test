view: login_attempt {
  sql_table_name: PUBLIC.LOGIN_ATTEMPT ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: auth_type {
    type: string
    sql: ${TABLE}.AUTH_TYPE ;;
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

  dimension_group: expires {
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
    sql: ${TABLE}.EXPIRES_AT ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}.FULL_NAME ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.IP ;;
  }

  dimension: key {
    type: string
    sql: ${TABLE}.KEY ;;
  }

  dimension: remote_id {
    type: string
    sql: ${TABLE}.REMOTE_ID ;;
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
      full_name,
      user.dev_branch_name,
      user.dev_mode_user_id,
      user.last_name,
      user.first_name
    ]
  }
}
