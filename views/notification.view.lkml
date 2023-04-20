view: notification {
  sql_table_name: PUBLIC.NOTIFICATION ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.CATEGORY ;;
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

  dimension: metadata {
    type: string
    sql: ${TABLE}.METADATA ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
