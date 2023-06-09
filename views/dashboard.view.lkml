view: dashboard {
  sql_table_name: PUBLIC.DASHBOARD ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: alert_sync_with_dashboard_filter_enabled {
    type: yesno
    sql: ${TABLE}.ALERT_SYNC_WITH_DASHBOARD_FILTER_ENABLED ;;
  }

  dimension: appearance {
    type: string
    sql: ${TABLE}.APPEARANCE ;;
  }

  dimension: background_color {
    type: string
    sql: ${TABLE}.BACKGROUND_COLOR ;;
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

  dimension: crossfilter_enabled {
    type: yesno
    sql: ${TABLE}.CROSSFILTER_ENABLED ;;
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

  dimension: deleter_id {
    type: number
    sql: ${TABLE}.DELETER_ID ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: enable_viz_full_screen {
    type: yesno
    sql: ${TABLE}.ENABLE_VIZ_FULL_SCREEN ;;
  }

  dimension: filter_lookml {
    type: string
    sql: ${TABLE}.FILTER_LOOKML ;;
  }

  dimension: filters_bar_collapsed {
    type: yesno
    sql: ${TABLE}.FILTERS_BAR_COLLAPSED ;;
  }

  dimension: filters_location_top {
    type: yesno
    sql: ${TABLE}.FILTERS_LOCATION_TOP ;;
  }

  dimension: hidden {
    type: yesno
    sql: ${TABLE}.HIDDEN ;;
  }

  dimension_group: indexed {
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
    sql: ${TABLE}.INDEXED_AT ;;
  }

  dimension: last_updater_id {
    type: number
    sql: ${TABLE}.LAST_UPDATER_ID ;;
  }

  dimension: load_configuration {
    type: string
    sql: ${TABLE}.LOAD_CONFIGURATION ;;
  }

  dimension: lookml_link_id {
    type: string
    sql: ${TABLE}.LOOKML_LINK_ID ;;
  }

  dimension: preferred_viewer {
    type: string
    sql: ${TABLE}.PREFERRED_VIEWER ;;
  }

  dimension: query_timezone {
    type: string
    sql: ${TABLE}.QUERY_TIMEZONE ;;
  }

  dimension: refresh_interval {
    type: string
    sql: ${TABLE}.REFRESH_INTERVAL ;;
  }

  dimension: show_filters_bar {
    type: yesno
    sql: ${TABLE}.SHOW_FILTERS_BAR ;;
  }

  dimension: show_tile_shadow {
    type: yesno
    sql: ${TABLE}.SHOW_TILE_SHADOW ;;
  }

  dimension: show_title {
    type: yesno
    sql: ${TABLE}.SHOW_TITLE ;;
  }

  dimension: space_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SPACE_ID ;;
  }

  dimension: text_tile_text_color {
    type: string
    sql: ${TABLE}.TEXT_TILE_TEXT_COLOR ;;
  }

  dimension: tile_background_color {
    type: string
    sql: ${TABLE}.TILE_BACKGROUND_COLOR ;;
  }

  dimension: tile_border_radius {
    type: number
    sql: ${TABLE}.TILE_BORDER_RADIUS ;;
  }

  dimension: tile_separator_color {
    type: string
    sql: ${TABLE}.TILE_SEPARATOR_COLOR ;;
  }

  dimension: tile_text_color {
    type: string
    sql: ${TABLE}.TILE_TEXT_COLOR ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.TITLE ;;
  }

  dimension: title_color {
    type: string
    sql: ${TABLE}.TITLE_COLOR ;;
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
      space.name,
      space.id,
      user.dev_branch_name,
      user.dev_mode_user_id,
      user.last_name,
      user.first_name,
      content_favorite.count,
      content_metadata.count,
      dashboard_element.count,
      dashboard_filter.count,
      dashboard_json.count,
      dashboard_layout.count,
      history.count,
      homepage_item.count,
      query_task.count,
      scheduled_job.count,
      scheduled_plan.count,
      thumbnail_image.count
    ]
  }
}
