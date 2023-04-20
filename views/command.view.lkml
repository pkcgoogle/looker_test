view: command {
  sql_table_name: PUBLIC.COMMAND ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: author_id {
    type: number
    sql: ${TABLE}.AUTHOR_ID ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: linked_content_id {
    type: string
    sql: ${TABLE}.LINKED_CONTENT_ID ;;
  }

  dimension: linked_content_type {
    type: string
    sql: ${TABLE}.LINKED_CONTENT_TYPE ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
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
    drill_fields: [id, name]
  }
}
