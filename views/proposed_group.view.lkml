view: proposed_group {
  sql_table_name: PUBLIC.PROPOSED_GROUP ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: base_group_id {
    type: number
    sql: ${TABLE}.BASE_GROUP_ID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
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
      ldap_group.count,
      oidc_group.count,
      proposed_group_role.count,
      saml_group.count
    ]
  }
}
