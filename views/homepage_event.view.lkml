view: homepage_event {
  sql_table_name: PUBLIC.HOMEPAGE_EVENT ;;
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

  dimension: event_type {
    type: string
    sql: ${TABLE}.EVENT_TYPE ;;
  }

  dimension: homepage_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.HOMEPAGE_ID ;;
  }

  dimension: homepage_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.HOMEPAGE_ITEM_ID ;;
  }

  dimension: homepage_section_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.HOMEPAGE_SECTION_ID ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.USER_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      user.dev_branch_name,
      user.dev_mode_user_id,
      user.last_name,
      user.first_name,
      homepage.id,
      homepage_section.id,
      homepage_item.id
    ]
  }
}
