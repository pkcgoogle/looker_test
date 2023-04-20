view: content_metadata {
  sql_table_name: PUBLIC.CONTENT_METADATA ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: content_id {
    type: number
    sql: ${TABLE}.CONTENT_ID ;;
  }

  dimension: content_type {
    type: string
    sql: ${TABLE}.CONTENT_TYPE ;;
  }

  dimension: dashboard_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DASHBOARD_ID ;;
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

  dimension: inheriting_id {
    type: number
    sql: ${TABLE}.INHERITING_ID ;;
  }

  dimension: look_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.LOOK_ID ;;
  }

  dimension: lookml_dashboard_id {
    type: number
    sql: ${TABLE}.LOOKML_DASHBOARD_ID ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.PARENT_ID ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.SLUG ;;
  }

  dimension: space_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SPACE_ID ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.TITLE ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      dashboard.id,
      look.id,
      homepage.id,
      space.name,
      space.id,
      content_favorite.count,
      content_metadata_group_user.count,
      content_view.count,
      dashboard.count,
      homepage.count,
      homepage_item.count,
      look.count,
      lookml_dashboard_metadata.count,
      lookml_dashboard_metadata_v2.count,
      space.count
    ]
  }
}
