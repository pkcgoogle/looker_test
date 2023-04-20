view: homepage {
  sql_table_name: PUBLIC.HOMEPAGE ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: content_metadata_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CONTENT_METADATA_ID ;;
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

  dimension: primary_homepage {
    type: yesno
    sql: ${TABLE}.PRIMARY_HOMEPAGE ;;
  }

  dimension: section_order {
    type: string
    sql: ${TABLE}.SECTION_ORDER ;;
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
      content_metadata.id,
      user.dev_branch_name,
      user.dev_mode_user_id,
      user.last_name,
      user.first_name,
      content_metadata.count,
      homepage_event.count,
      homepage_section.count
    ]
  }
}
