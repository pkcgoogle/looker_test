view: query_api_client_context {
  sql_table_name: PUBLIC.QUERY_API_CLIENT_CONTEXT ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: attribute0 {
    type: string
    sql: ${TABLE}.ATTRIBUTE0 ;;
  }

  dimension: attribute1 {
    type: string
    sql: ${TABLE}.ATTRIBUTE1 ;;
  }

  dimension: attribute2 {
    type: string
    sql: ${TABLE}.ATTRIBUTE2 ;;
  }

  dimension: attribute3 {
    type: string
    sql: ${TABLE}.ATTRIBUTE3 ;;
  }

  dimension: attribute4 {
    type: string
    sql: ${TABLE}.ATTRIBUTE4 ;;
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

  dimension: extra_attributes {
    type: string
    sql: ${TABLE}.EXTRA_ATTRIBUTES ;;
  }

  dimension: history_slug {
    type: string
    sql: ${TABLE}.HISTORY_SLUG ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
