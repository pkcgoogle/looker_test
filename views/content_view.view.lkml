view: content_view {
  sql_table_name: PUBLIC.CONTENT_VIEW ;;
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

  dimension: content_metadata_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CONTENT_METADATA_ID ;;
  }

  dimension: content_type {
    type: string
    sql: ${TABLE}.CONTENT_TYPE ;;
  }

  dimension: favorite_count {
    type: number
    sql: ${TABLE}.FAVORITE_COUNT ;;
  }

  dimension: group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.GROUP_ID ;;
  }

  dimension: is_generic {
    type: yesno
    sql: ${TABLE}.IS_GENERIC ;;
  }

  dimension_group: last_viewed {
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
    sql: ${TABLE}.LAST_VIEWED_AT ;;
  }

  dimension_group: start_of_week {
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
    sql: ${TABLE}.START_OF_WEEK_DATE ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.USER_ID ;;
  }

  dimension: view_count {
    type: number
    sql: ${TABLE}.VIEW_COUNT ;;
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
      group.name,
      group.id,
      content_metadata.id
    ]
  }
}
