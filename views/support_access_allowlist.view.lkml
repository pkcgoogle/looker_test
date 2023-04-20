view: support_access_allowlist {
  sql_table_name: PUBLIC.SUPPORT_ACCESS_ALLOWLIST ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: added_by_admin_user_id {
    type: number
    sql: ${TABLE}.ADDED_BY_ADMIN_USER_ID ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.CREATED_DATE ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.EMAIL ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}.FULL_NAME ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}.REASON ;;
  }

  measure: count {
    type: count
    drill_fields: [id, full_name]
  }
}
