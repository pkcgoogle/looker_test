view: vis_config {
  sql_table_name: PUBLIC.VIS_CONFIG ;;
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

  dimension: hash {
    type: string
    sql: ${TABLE}.HASH ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.SLUG ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
