view: session {
  sql_table_name: PUBLIC.SESSION ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: access_token_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ACCESS_TOKEN_ID ;;
  }

  dimension: browser {
    type: string
    sql: ${TABLE}.BROWSER ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.CITY ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.COUNTRY ;;
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

  dimension: credentials_type {
    type: string
    sql: ${TABLE}.CREDENTIALS_TYPE ;;
  }

  dimension_group: expires_at {
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

  dimension_group: extended {
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
    sql: ${TABLE}.EXTENDED_AT ;;
  }

  dimension: extended_count {
    type: number
    sql: ${TABLE}.EXTENDED_COUNT ;;
  }

  dimension_group: inactivity_expires {
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
    sql: ${TABLE}.INACTIVITY_EXPIRES_AT ;;
  }

  dimension: ip_address {
    type: string
    sql: ${TABLE}.IP_ADDRESS ;;
  }

  dimension: operating_system {
    type: string
    sql: ${TABLE}.OPERATING_SYSTEM ;;
  }

  dimension: outgoing_access_token_id {
    type: number
    sql: ${TABLE}.OUTGOING_ACCESS_TOKEN_ID ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
  }

  dimension: sudo_url {
    type: string
    sql: ${TABLE}.SUDO_URL ;;
  }

  dimension: sudo_user_id {
    type: number
    sql: ${TABLE}.SUDO_USER_ID ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}.TOKEN ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.USER_ID ;;
  }

  dimension: user_overrides_workspace {
    type: yesno
    sql: ${TABLE}.USER_OVERRIDES_WORKSPACE ;;
  }

  dimension: workspace_id {
    type: string
    sql: ${TABLE}.WORKSPACE_ID ;;
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
      access_token.id,
      access_token.count
    ]
  }
}
