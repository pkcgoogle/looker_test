view: support_access_audit_log {
  sql_table_name: PUBLIC.SUPPORT_ACCESS_AUDIT_LOG ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: action {
    type: string
    sql: ${TABLE}.ACTION ;;
  }

  dimension: action_data {
    type: string
    sql: ${TABLE}.ACTION_DATA ;;
  }

  dimension: admin_user_email {
    type: string
    sql: ${TABLE}.ADMIN_USER_EMAIL ;;
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
    sql: ${TABLE}.CREATED_AT ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
