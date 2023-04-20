view: pdt_build_catalog {
  sql_table_name: PUBLIC.PDT_BUILD_CATALOG ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: build_began_at {
    type: number
    sql: ${TABLE}.BUILD_BEGAN_AT ;;
  }

  dimension: build_duration {
    type: number
    sql: ${TABLE}.BUILD_DURATION ;;
  }

  dimension: build_error {
    type: string
    sql: ${TABLE}.BUILD_ERROR ;;
  }

  dimension: build_new_trigger_value {
    type: string
    sql: ${TABLE}.BUILD_NEW_TRIGGER_VALUE ;;
  }

  dimension: build_old_trigger_value {
    type: string
    sql: ${TABLE}.BUILD_OLD_TRIGGER_VALUE ;;
  }

  dimension: build_reason {
    type: string
    sql: ${TABLE}.BUILD_REASON ;;
  }

  dimension: built_at {
    type: number
    sql: ${TABLE}.BUILT_AT ;;
  }

  dimension: key {
    type: string
    sql: ${TABLE}.KEY ;;
  }

  dimension: last_build_sql {
    type: string
    sql: ${TABLE}.LAST_BUILD_SQL ;;
  }

  dimension: num_builds {
    type: number
    sql: ${TABLE}.NUM_BUILDS ;;
  }

  dimension: num_failed {
    type: number
    sql: ${TABLE}.NUM_FAILED ;;
  }

  dimension: record_updated_at {
    type: number
    sql: ${TABLE}.RECORD_UPDATED_AT ;;
  }

  dimension: total_duration {
    type: number
    sql: ${TABLE}.TOTAL_DURATION ;;
  }

  dimension: trigger_at {
    type: number
    sql: ${TABLE}.TRIGGER_AT ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
