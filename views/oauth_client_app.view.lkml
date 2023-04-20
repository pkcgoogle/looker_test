view: oauth_client_app {
  sql_table_name: PUBLIC.OAUTH_CLIENT_APP ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: client_guid {
    type: string
    sql: ${TABLE}.CLIENT_GUID ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.DISPLAY_NAME ;;
  }

  dimension: enabled {
    type: yesno
    sql: ${TABLE}.ENABLED ;;
  }

  dimension: encrypted_client_secret {
    type: string
    sql: ${TABLE}.ENCRYPTED_CLIENT_SECRET ;;
  }

  dimension: global {
    type: yesno
    sql: ${TABLE}."GLOBAL" ;;
  }

  dimension: group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.GROUP_ID ;;
  }

  dimension: public {
    type: yesno
    sql: ${TABLE}.PUBLIC ;;
  }

  dimension: redirect_uri {
    type: string
    sql: ${TABLE}.REDIRECT_URI ;;
  }

  dimension_group: tokens_invalid_before {
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
    sql: ${TABLE}.TOKENS_INVALID_BEFORE ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      display_name,
      group.name,
      group.id,
      access_token.count,
      oauth_client_app_user_activation.count
    ]
  }
}
