view: proxy_nonce {
  sql_table_name: PUBLIC.PROXY_NONCE ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: created_at {
    type: number
    sql: ${TABLE}.CREATED_AT ;;
  }

  dimension: expires_at {
    type: number
    sql: ${TABLE}.EXPIRES_AT ;;
  }

  dimension: nonce {
    type: string
    sql: ${TABLE}.NONCE ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.USER_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user.dev_branch_name, user.dev_mode_user_id, user.last_name, user.first_name]
  }
}
