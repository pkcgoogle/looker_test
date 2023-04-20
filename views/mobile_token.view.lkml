view: mobile_token {
  sql_table_name: PUBLIC.MOBILE_TOKEN ;;
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

  dimension: device_id {
    type: string
    sql: ${TABLE}.DEVICE_ID ;;
  }

  dimension_group: device_id_updated {
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
    sql: ${TABLE}.DEVICE_ID_UPDATED_AT ;;
  }

  dimension_group: device_token_updated {
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
    sql: ${TABLE}.DEVICE_TOKEN_UPDATED_AT ;;
  }

  dimension: device_type {
    type: string
    sql: ${TABLE}.DEVICE_TYPE ;;
  }

  dimension: encrypted_device_token {
    type: string
    sql: ${TABLE}.ENCRYPTED_DEVICE_TOKEN ;;
  }

  dimension: push_enabled {
    type: yesno
    sql: ${TABLE}.PUSH_ENABLED ;;
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
