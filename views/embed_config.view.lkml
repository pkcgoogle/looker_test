view: embed_config {
  sql_table_name: PUBLIC.EMBED_CONFIG ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: alert_url_allowlist {
    type: string
    sql: ${TABLE}.ALERT_URL_ALLOWLIST ;;
  }

  dimension: alert_url_label {
    type: string
    sql: ${TABLE}.ALERT_URL_LABEL ;;
  }

  dimension: alert_url_param_owner {
    type: string
    sql: ${TABLE}.ALERT_URL_PARAM_OWNER ;;
  }

  dimension: domain_whitelist {
    type: string
    sql: ${TABLE}.DOMAIN_WHITELIST ;;
  }

  dimension: hide_look_navigation {
    type: yesno
    sql: ${TABLE}.HIDE_LOOK_NAVIGATION ;;
  }

  dimension: look_filters {
    type: yesno
    sql: ${TABLE}.LOOK_FILTERS ;;
  }

  dimension: sso_auth_enabled {
    type: yesno
    sql: ${TABLE}.SSO_AUTH_ENABLED ;;
  }

  dimension: strict_sameorigin_for_login {
    type: yesno
    sql: ${TABLE}.STRICT_SAMEORIGIN_FOR_LOGIN ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
