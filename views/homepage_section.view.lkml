view: homepage_section {
  sql_table_name: PUBLIC.HOMEPAGE_SECTION ;;
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

  dimension_group: deleted {
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
    sql: ${TABLE}.DELETED_AT ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: homepage_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.HOMEPAGE_ID ;;
  }

  dimension: item_order {
    type: string
    sql: ${TABLE}.ITEM_ORDER ;;
  }

  dimension: order {
    type: number
    sql: ${TABLE}."ORDER" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.TITLE ;;
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
    drill_fields: [id, homepage.id, homepage_event.count, homepage_item.count]
  }
}
