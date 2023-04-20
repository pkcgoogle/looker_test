view: access_token {
  sql_table_name: PUBLIC.ACCESS_TOKEN ;;
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

  dimension: credentials_api3_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CREDENTIALS_API3_ID ;;
  }

  dimension: encrypted_code {
    type: string
    sql: ${TABLE}.ENCRYPTED_CODE ;;
  }

  dimension: encrypted_token {
    type: string
    sql: ${TABLE}.ENCRYPTED_TOKEN ;;
  }

  dimension: encrypted_token2 {
    type: string
    sql: ${TABLE}.ENCRYPTED_TOKEN2 ;;
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

  dimension: grant_type {
    type: string
    sql: ${TABLE}.GRANT_TYPE ;;
  }

  dimension: lookup_id {
    type: string
    sql: ${TABLE}.LOOKUP_ID ;;
  }

  dimension: oauth_client_app_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OAUTH_CLIENT_APP_ID ;;
  }

  dimension: outgoing_access_token_id {
    type: number
    sql: ${TABLE}.OUTGOING_ACCESS_TOKEN_ID ;;
  }

  dimension: resource_owner_id {
    type: number
    sql: ${TABLE}.RESOURCE_OWNER_ID ;;
  }

  dimension: role_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ROLE_ID ;;
  }

  dimension: session_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SESSION_ID ;;
  }

  dimension: sudo_user_id {
    type: number
    sql: ${TABLE}.SUDO_USER_ID ;;
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
      session.id,
      credentials_api3.id,
      oauth_client_app.id,
      oauth_client_app.display_name,
      user.dev_branch_name,
      user.dev_mode_user_id,
      user.last_name,
      user.first_name,
      role.id,
      role.name,
      session.count
    ]
  }
}
