view: query_analysis_config {
  sql_table_name: PUBLIC.QUERY_ANALYSIS_CONFIG ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: config {
    type: string
    sql: ${TABLE}.CONFIG ;;
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

  dimension: query_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QUERY_ID ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.UPDATED_AT ;;
  }

  measure: count {
    type: count
    drill_fields: [id, query.id]
  }
}
