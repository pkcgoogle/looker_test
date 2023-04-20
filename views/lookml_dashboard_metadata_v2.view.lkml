view: lookml_dashboard_metadata_v2 {
  sql_table_name: PUBLIC.LOOKML_DASHBOARD_METADATA_V2 ;;
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

  dimension: dashboard_name {
    type: string
    sql: ${TABLE}.DASHBOARD_NAME ;;
  }

  dimension: model_name {
    type: string
    sql: ${TABLE}.MODEL_NAME ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}.PROJECT_NAME ;;
  }

  dimension: space_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SPACE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      dashboard_name,
      project_name,
      model_name,
      space.name,
      space.id,
      content_metadata.id
    ]
  }
}
