view: saml_group_role {
  sql_table_name: PUBLIC.SAML_GROUP_ROLE ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: role_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ROLE_ID ;;
  }

  dimension: saml_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SAML_GROUP_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, saml_group.id, saml_group.name, role.id, role.name]
  }
}
