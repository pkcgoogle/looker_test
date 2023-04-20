view: data_migrations {
  sql_table_name: PUBLIC.DATA_MIGRATIONS ;;

  dimension: filename {
    type: string
    sql: ${TABLE}.FILENAME ;;
  }

  measure: count {
    type: count
    drill_fields: [filename]
  }
}
