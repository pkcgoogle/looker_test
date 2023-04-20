view: saml_group {
  sql_table_name: PUBLIC.SAML_GROUP ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: proposed_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.PROPOSED_GROUP_ID ;;
  }

  dimension: saml_config_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SAML_CONFIG_ID ;;
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
      saml_config.user_attribute_map_last_name,
      saml_config.user_attribute_map_first_name,
      saml_config.id,
      proposed_group.id,
      proposed_group.name,
      group.name,
      group.id,
      saml_group_role.count
    ]
  }
}
