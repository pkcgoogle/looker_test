view: prod_pdt_metadata {
  sql_table_name: PUBLIC.PROD_PDT_METADATA ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: connection {
    type: string
    sql: ${TABLE}.CONNECTION ;;
  }

  dimension: increment_key {
    type: string
    sql: ${TABLE}.INCREMENT_KEY ;;
  }

  dimension: increment_offset {
    type: number
    sql: ${TABLE}.INCREMENT_OFFSET ;;
  }

  dimension: is_incremental {
    type: yesno
    sql: ${TABLE}.IS_INCREMENTAL ;;
  }

  dimension: is_materialized_view {
    type: yesno
    sql: ${TABLE}.IS_MATERIALIZED_VIEW ;;
  }

  dimension: key {
    type: string
    sql: ${TABLE}.KEY ;;
  }

  dimension: models {
    type: string
    sql: ${TABLE}.MODELS ;;
  }

  dimension: pdt_type {
    type: string
    sql: ${TABLE}.PDT_TYPE ;;
  }

  dimension: persistence_str {
    type: string
    sql: ${TABLE}.PERSISTENCE_STR ;;
  }

  dimension: project {
    type: string
    sql: ${TABLE}.PROJECT ;;
  }

  dimension: publish_as_db_view {
    type: yesno
    sql: ${TABLE}.PUBLISH_AS_DB_VIEW ;;
  }

  dimension: source_url {
    type: string
    sql: ${TABLE}.SOURCE_URL ;;
  }

  dimension: structure {
    type: string
    sql: ${TABLE}.STRUCTURE ;;
  }

  dimension: view {
    type: string
    sql: ${TABLE}.VIEW ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
