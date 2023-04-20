view: customer_artifact_store {
  sql_table_name: PUBLIC.CUSTOMER_ARTIFACT_STORE ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: binary_value {
    type: string
    sql: ${TABLE}.BINARY_VALUE ;;
  }

  dimension: content_type {
    type: string
    sql: ${TABLE}.CONTENT_TYPE ;;
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

  dimension: created_by_userid {
    type: string
    sql: ${TABLE}.CREATED_BY_USERID ;;
  }

  dimension: key {
    type: string
    sql: ${TABLE}.KEY ;;
  }

  dimension: namespace {
    type: string
    sql: ${TABLE}.NAMESPACE ;;
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

  dimension: updated_by_userid {
    type: string
    sql: ${TABLE}.UPDATED_BY_USERID ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}."VALUE" ;;
  }

  dimension: value_size {
    type: number
    sql: ${TABLE}.VALUE_SIZE ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}.VERSION ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
