view: alert {
  sql_table_name: PUBLIC.ALERT ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: alert_condition_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ALERT_CONDITION_ID ;;
  }

  dimension: allow_following_preference {
    type: yesno
    sql: ${TABLE}.ALLOW_FOLLOWING_PREFERENCE ;;
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

  dimension: cron {
    type: string
    sql: ${TABLE}.CRON ;;
  }

  dimension: custom_title {
    type: string
    sql: ${TABLE}.CUSTOM_TITLE ;;
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

  dimension: dashboard_element_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DASHBOARD_ELEMENT_ID ;;
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

  dimension_group: detached {
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
    sql: ${TABLE}.DETACHED_AT ;;
  }

  dimension_group: disabled {
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
    sql: ${TABLE}.DISABLED_DATE ;;
  }

  dimension: disabled_reason {
    type: string
    sql: ${TABLE}.DISABLED_REASON ;;
  }

  dimension: followable {
    type: yesno
    sql: ${TABLE}.FOLLOWABLE ;;
  }

  dimension: investigative_content_id {
    type: string
    sql: ${TABLE}.INVESTIGATIVE_CONTENT_ID ;;
  }

  dimension: investigative_content_type {
    type: string
    sql: ${TABLE}.INVESTIGATIVE_CONTENT_TYPE ;;
  }

  dimension: lookml_dashboard_id {
    type: string
    sql: ${TABLE}.LOOKML_DASHBOARD_ID ;;
  }

  dimension: lookml_link_id {
    type: string
    sql: ${TABLE}.LOOKML_LINK_ID ;;
  }

  dimension_group: next_run {
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
    sql: ${TABLE}.NEXT_RUN ;;
  }

  dimension: owner_user_id {
    type: number
    sql: ${TABLE}.OWNER_USER_ID ;;
  }

  dimension: processing_job_id {
    type: string
    sql: ${TABLE}.PROCESSING_JOB_ID ;;
  }

  dimension_group: processing_start {
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
    sql: ${TABLE}.PROCESSING_START_TIME ;;
  }

  dimension: show_custom_url {
    type: yesno
    sql: ${TABLE}.SHOW_CUSTOM_URL ;;
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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      dashboard_element.id,
      alert_condition.field_name,
      alert_condition.id,
      alert_condition_result.count,
      alert_destination.count,
      alert_sync_history.count
    ]
  }
}
