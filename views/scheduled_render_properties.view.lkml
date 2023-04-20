view: scheduled_render_properties {
  sql_table_name: PUBLIC.SCHEDULED_RENDER_PROPERTIES ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: color_theme {
    type: string
    sql: ${TABLE}.COLOR_THEME ;;
  }

  dimension: embed {
    type: yesno
    sql: ${TABLE}.EMBED ;;
  }

  dimension: inline_table_width {
    type: number
    sql: ${TABLE}.INLINE_TABLE_WIDTH ;;
  }

  dimension: long_tables {
    type: yesno
    sql: ${TABLE}.LONG_TABLES ;;
  }

  dimension: properties_version {
    type: number
    sql: ${TABLE}.PROPERTIES_VERSION ;;
  }

  dimension: scheduled_plan_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SCHEDULED_PLAN_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, scheduled_plan.name, scheduled_plan.id, scheduled_job.count]
  }
}
