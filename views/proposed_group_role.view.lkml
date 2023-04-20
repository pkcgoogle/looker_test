view: proposed_group_role {
  sql_table_name: PUBLIC.PROPOSED_GROUP_ROLE ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: proposed_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.PROPOSED_GROUP_ID ;;
  }

  dimension: role_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ROLE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, proposed_group.id, proposed_group.name, role.id, role.name]
  }
}
