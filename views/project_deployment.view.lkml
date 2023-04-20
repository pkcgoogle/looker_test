view: project_deployment {
  sql_table_name: PUBLIC.PROJECT_DEPLOYMENT ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: branch_name {
    type: string
    sql: ${TABLE}.BRANCH_NAME ;;
  }

  dimension: commit_sha {
    type: string
    sql: ${TABLE}.COMMIT_SHA ;;
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

  dimension: project_id {
    type: string
    sql: ${TABLE}.PROJECT_ID ;;
  }

  dimension: tag {
    type: string
    sql: ${TABLE}.TAG ;;
  }

  dimension: tag_obj {
    type: string
    sql: ${TABLE}.TAG_OBJ ;;
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
      branch_name,
      user.dev_branch_name,
      user.dev_mode_user_id,
      user.last_name,
      user.first_name
    ]
  }
}
