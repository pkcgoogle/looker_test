view: ldap_config_default_new_user_role {
  sql_table_name: PUBLIC.LDAP_CONFIG_DEFAULT_NEW_USER_ROLE ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: ldap_config_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.LDAP_CONFIG_ID ;;
  }

  dimension: role_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ROLE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      role.id,
      role.name,
      ldap_config.encrypted_auth_username,
      ldap_config.id,
      ldap_config.user_attribute_map_last_name,
      ldap_config.user_attribute_map_first_name
    ]
  }
}
