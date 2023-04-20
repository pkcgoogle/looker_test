view: scheduled_plan {
  sql_table_name: PUBLIC.SCHEDULED_PLAN ;;
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

  dimension: crontab {
    type: string
    sql: ${TABLE}.CRONTAB ;;
  }

  dimension: custom_url_base {
    type: string
    sql: ${TABLE}.CUSTOM_URL_BASE ;;
  }

  dimension: custom_url_label {
    type: string
    sql: ${TABLE}.CUSTOM_URL_LABEL ;;
  }

  dimension: custom_url_params {
    type: string
    sql: ${TABLE}.CUSTOM_URL_PARAMS ;;
  }

  dimension: dashboard_filters {
    type: string
    sql: ${TABLE}.DASHBOARD_FILTERS ;;
  }

  dimension: dashboard_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DASHBOARD_ID ;;
  }

  dimension: datagroup {
    type: string
    sql: ${TABLE}.DATAGROUP ;;
  }

  dimension: enabled {
    type: yesno
    sql: ${TABLE}.ENABLED ;;
  }

  dimension: filters_string {
    type: string
    sql: ${TABLE}.FILTERS_STRING ;;
  }

  dimension: include_links {
    type: yesno
    sql: ${TABLE}.INCLUDE_LINKS ;;
  }

  dimension: look_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.LOOK_ID ;;
  }

  dimension: lookml_dashboard_id {
    type: string
    sql: ${TABLE}.LOOKML_DASHBOARD_ID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: next_run_at {
    type: number
    sql: ${TABLE}.NEXT_RUN_AT ;;
  }

  dimension: pdf_landscape {
    type: yesno
    sql: ${TABLE}.PDF_LANDSCAPE ;;
  }

  dimension: pdf_paper_size {
    type: string
    sql: ${TABLE}.PDF_PAPER_SIZE ;;
  }

  dimension: prewarm_only {
    type: yesno
    sql: ${TABLE}.PREWARM_ONLY ;;
  }

  dimension: query_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QUERY_ID ;;
  }

  dimension: require_change {
    type: yesno
    sql: ${TABLE}.REQUIRE_CHANGE ;;
  }

  dimension: require_no_results {
    type: yesno
    sql: ${TABLE}.REQUIRE_NO_RESULTS ;;
  }

  dimension: require_results {
    type: yesno
    sql: ${TABLE}.REQUIRE_RESULTS ;;
  }

  dimension: run_as_recipient {
    type: yesno
    sql: ${TABLE}.RUN_AS_RECIPIENT ;;
  }

  dimension: run_once {
    type: yesno
    sql: ${TABLE}.RUN_ONCE ;;
  }

  dimension: send_all_results {
    type: yesno
    sql: ${TABLE}.SEND_ALL_RESULTS ;;
  }

  dimension: show_custom_url {
    type: yesno
    sql: ${TABLE}.SHOW_CUSTOM_URL ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.TIMEZONE ;;
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
      name,
      query.id,
      dashboard.id,
      look.id,
      user.dev_branch_name,
      user.dev_mode_user_id,
      user.last_name,
      user.first_name,
      scheduled_job.count,
      scheduled_plan_destination.count,
      scheduled_render_properties.count
    ]
  }
}
