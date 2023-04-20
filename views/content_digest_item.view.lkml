view: content_digest_item {
  sql_table_name: PUBLIC.CONTENT_DIGEST_ITEM ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: content_id {
    type: string
    sql: ${TABLE}.CONTENT_ID ;;
  }

  dimension: content_type {
    type: string
    sql: ${TABLE}.CONTENT_TYPE ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.TITLE ;;
  }

  dimension: user_content_digest_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.USER_CONTENT_DIGEST_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user_content_digest.id]
  }
}
