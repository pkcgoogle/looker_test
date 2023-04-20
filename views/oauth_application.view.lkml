view: oauth_application {
  sql_table_name: PUBLIC.OAUTH_APPLICATION ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: auth_request_params {
    type: string
    sql: ${TABLE}.AUTH_REQUEST_PARAMS ;;
  }

  dimension: authorization_endpoint {
    type: string
    sql: ${TABLE}.AUTHORIZATION_ENDPOINT ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.CATEGORY ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: refresh_token_expires_in_default {
    type: number
    sql: ${TABLE}.REFRESH_TOKEN_EXPIRES_IN_DEFAULT ;;
  }

  dimension: refresh_token_returned_only_once {
    type: yesno
    sql: ${TABLE}.REFRESH_TOKEN_RETURNED_ONLY_ONCE ;;
  }

  dimension: token_endpoint {
    type: string
    sql: ${TABLE}.TOKEN_ENDPOINT ;;
  }

  dimension: uses_basic_auth {
    type: yesno
    sql: ${TABLE}.USES_BASIC_AUTH ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, db_connection.count, oauth_user_state.count]
  }
}
