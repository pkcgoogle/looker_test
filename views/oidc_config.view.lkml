view: oidc_config {
  sql_table_name: PUBLIC.OIDC_CONFIG ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.ACTIVE ;;
  }

  dimension: allow_direct_roles {
    type: yesno
    sql: ${TABLE}.ALLOW_DIRECT_ROLES ;;
  }

  dimension: allow_normal_group_membership {
    type: yesno
    sql: ${TABLE}.ALLOW_NORMAL_GROUP_MEMBERSHIP ;;
  }

  dimension: allow_roles_from_normal_groups {
    type: yesno
    sql: ${TABLE}.ALLOW_ROLES_FROM_NORMAL_GROUPS ;;
  }

  dimension: alternate_email_login_allowed {
    type: yesno
    sql: ${TABLE}.ALTERNATE_EMAIL_LOGIN_ALLOWED ;;
  }

  dimension: audience {
    type: string
    sql: ${TABLE}.AUDIENCE ;;
  }

  dimension: auth_requires_role {
    type: yesno
    sql: ${TABLE}.AUTH_REQUIRES_ROLE ;;
  }

  dimension: authorization_endpoint {
    type: string
    sql: ${TABLE}.AUTHORIZATION_ENDPOINT ;;
  }

  dimension: enabled {
    type: yesno
    sql: ${TABLE}.ENABLED ;;
  }

  dimension: encrypted_secret {
    type: string
    sql: ${TABLE}.ENCRYPTED_SECRET ;;
  }

  dimension: groups_attribute {
    type: string
    sql: ${TABLE}.GROUPS_ATTRIBUTE ;;
  }

  dimension: identifier {
    type: string
    sql: ${TABLE}.IDENTIFIER ;;
  }

  dimension: issuer {
    type: string
    sql: ${TABLE}.ISSUER ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}.MODIFIED_AT ;;
  }

  dimension: modified_by {
    type: number
    sql: ${TABLE}.MODIFIED_BY ;;
  }

  dimension: new_user_migration_types {
    type: string
    sql: ${TABLE}.NEW_USER_MIGRATION_TYPES ;;
  }

  dimension: scopes {
    type: string
    sql: ${TABLE}.SCOPES ;;
  }

  dimension: set_roles_from_groups {
    type: yesno
    sql: ${TABLE}.SET_ROLES_FROM_GROUPS ;;
  }

  dimension_group: test_expires {
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
    sql: ${TABLE}.TEST_EXPIRES_AT ;;
  }

  dimension: test_slug {
    type: string
    sql: ${TABLE}.TEST_SLUG ;;
  }

  dimension: token_endpoint {
    type: string
    sql: ${TABLE}.TOKEN_ENDPOINT ;;
  }

  dimension: user_attribute_map_email {
    type: string
    sql: ${TABLE}.USER_ATTRIBUTE_MAP_EMAIL ;;
  }

  dimension: user_attribute_map_first_name {
    type: string
    sql: ${TABLE}.USER_ATTRIBUTE_MAP_FIRST_NAME ;;
  }

  dimension: user_attribute_map_last_name {
    type: string
    sql: ${TABLE}.USER_ATTRIBUTE_MAP_LAST_NAME ;;
  }

  dimension: userinfo_endpoint {
    type: string
    sql: ${TABLE}.USERINFO_ENDPOINT ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      user_attribute_map_last_name,
      user_attribute_map_first_name,
      oidc_config_default_new_user_group.count,
      oidc_config_default_new_user_role.count,
      oidc_group.count,
      oidc_user_attribute.count
    ]
  }
}
