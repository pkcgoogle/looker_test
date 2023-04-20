view: user_attribute {
  sql_table_name: PUBLIC.USER_ATTRIBUTE ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: key {
    type: string
    sql: ${TABLE}.KEY ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.USER_ID ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}."VALUE" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      user.dev_branch_name,
      user.dev_mode_user_id,
      user.last_name,
      user.first_name,
      ldap_user_attribute_attribute.count,
      oidc_user_attribute_attribute.count,
      saml_user_attribute_attribute.count,
      user_attribute_group_value.count,
      user_attribute_user_value.count
    ]
  }
}
