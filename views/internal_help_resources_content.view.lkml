view: internal_help_resources_content {
  sql_table_name: PUBLIC.INTERNAL_HELP_RESOURCES_CONTENT ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
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

  dimension: markdown_content {
    type: string
    sql: ${TABLE}.MARKDOWN_CONTENT ;;
  }

  dimension: menu_item_text {
    type: string
    sql: ${TABLE}.MENU_ITEM_TEXT ;;
  }

  dimension: organization_name {
    type: string
    sql: ${TABLE}.ORGANIZATION_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [id, organization_name]
  }
}
