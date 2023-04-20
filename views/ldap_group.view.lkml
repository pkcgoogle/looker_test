view: ldap_group {
  sql_table_name: PUBLIC.LDAP_GROUP ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.GROUP_ID ;;
  }

  dimension: ldap_config_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.LDAP_CONFIG_ID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: proposed_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.PROPOSED_GROUP_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      proposed_group.id,
      proposed_group.name,
      group.name,
      group.id,
      ldap_config.encrypted_auth_username,
      ldap_config.id,
      ldap_config.user_attribute_map_last_name,
      ldap_config.user_attribute_map_first_name,
      ldap_group_role.count
    ]
  }
}
