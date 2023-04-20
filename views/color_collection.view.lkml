view: color_collection {
  sql_table_name: PUBLIC.COLOR_COLLECTION ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: is_default {
    type: yesno
    sql: ${TABLE}.IS_DEFAULT ;;
  }

  dimension: is_disabled {
    type: yesno
    sql: ${TABLE}.IS_DISABLED ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.LABEL ;;
  }

  measure: count {
    type: count
    drill_fields: [id, color_palette.count]
  }
}
