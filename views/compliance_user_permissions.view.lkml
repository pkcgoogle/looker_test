view: compliance_user_permissions {
  sql_table_name: PUBLIC.COMPLIANCE_USER_PERMISSIONS ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: access_data {
    type: number
    sql: ${TABLE}.ACCESS_DATA ;;
  }

  dimension: administer {
    type: number
    sql: ${TABLE}.ADMINISTER ;;
  }

  dimension: can_copy_print {
    type: number
    sql: ${TABLE}.CAN_COPY_PRINT ;;
  }

  dimension: can_create_forecast {
    type: number
    sql: ${TABLE}.CAN_CREATE_FORECAST ;;
  }

  dimension: can_override_vis_config {
    type: number
    sql: ${TABLE}.CAN_OVERRIDE_VIS_CONFIG ;;
  }

  dimension: clear_cache_refresh {
    type: number
    sql: ${TABLE}.CLEAR_CACHE_REFRESH ;;
  }

  dimension: create_alerts {
    type: number
    sql: ${TABLE}.CREATE_ALERTS ;;
  }

  dimension: create_custom_fields {
    type: number
    sql: ${TABLE}.CREATE_CUSTOM_FIELDS ;;
  }

  dimension: create_prefetches {
    type: number
    sql: ${TABLE}.CREATE_PREFETCHES ;;
  }

  dimension: create_public_looks {
    type: number
    sql: ${TABLE}.CREATE_PUBLIC_LOOKS ;;
  }

  dimension: create_table_calculations {
    type: number
    sql: ${TABLE}.CREATE_TABLE_CALCULATIONS ;;
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

  dimension: deploy {
    type: number
    sql: ${TABLE}.DEPLOY ;;
  }

  dimension: develop {
    type: number
    sql: ${TABLE}.DEVELOP ;;
  }

  dimension: download_with_limit {
    type: number
    sql: ${TABLE}.DOWNLOAD_WITH_LIMIT ;;
  }

  dimension: download_without_limit {
    type: number
    sql: ${TABLE}.DOWNLOAD_WITHOUT_LIMIT ;;
  }

  dimension: embed {
    type: yesno
    sql: ${TABLE}.EMBED ;;
  }

  dimension: embed_browse_spaces {
    type: number
    sql: ${TABLE}.EMBED_BROWSE_SPACES ;;
  }

  dimension: embed_save_shared_space {
    type: number
    sql: ${TABLE}.EMBED_SAVE_SHARED_SPACE ;;
  }

  dimension: explore {
    type: number
    sql: ${TABLE}.EXPLORE ;;
  }

  dimension: follow_alerts {
    type: number
    sql: ${TABLE}.FOLLOW_ALERTS ;;
  }

  dimension: login_special_email {
    type: number
    sql: ${TABLE}.LOGIN_SPECIAL_EMAIL ;;
  }

  dimension: manage_embed_settings {
    type: number
    sql: ${TABLE}.MANAGE_EMBED_SETTINGS ;;
  }

  dimension: manage_homepage {
    type: number
    sql: ${TABLE}.MANAGE_HOMEPAGE ;;
  }

  dimension: manage_models {
    type: number
    sql: ${TABLE}.MANAGE_MODELS ;;
  }

  dimension: manage_project_connections {
    type: number
    sql: ${TABLE}.MANAGE_PROJECT_CONNECTIONS ;;
  }

  dimension: manage_project_models {
    type: number
    sql: ${TABLE}.MANAGE_PROJECT_MODELS ;;
  }

  dimension: manage_spaces {
    type: number
    sql: ${TABLE}.MANAGE_SPACES ;;
  }

  dimension: manage_stereo {
    type: number
    sql: ${TABLE}.MANAGE_STEREO ;;
  }

  dimension: mobile_app_access {
    type: number
    sql: ${TABLE}.MOBILE_APP_ACCESS ;;
  }

  dimension: permissions {
    type: string
    sql: ${TABLE}.PERMISSIONS ;;
  }

  dimension: save_content {
    type: number
    sql: ${TABLE}.SAVE_CONTENT ;;
  }

  dimension: save_dashboards {
    type: number
    sql: ${TABLE}.SAVE_DASHBOARDS ;;
  }

  dimension: save_looks {
    type: number
    sql: ${TABLE}.SAVE_LOOKS ;;
  }

  dimension: schedule_external_look_emails {
    type: number
    sql: ${TABLE}.SCHEDULE_EXTERNAL_LOOK_EMAILS ;;
  }

  dimension: schedule_look_emails {
    type: number
    sql: ${TABLE}.SCHEDULE_LOOK_EMAILS ;;
  }

  dimension: see_alerts {
    type: number
    sql: ${TABLE}.SEE_ALERTS ;;
  }

  dimension: see_datagroups {
    type: number
    sql: ${TABLE}.SEE_DATAGROUPS ;;
  }

  dimension: see_drill_overlay {
    type: number
    sql: ${TABLE}.SEE_DRILL_OVERLAY ;;
  }

  dimension: see_logs {
    type: number
    sql: ${TABLE}.SEE_LOGS ;;
  }

  dimension: see_lookml {
    type: number
    sql: ${TABLE}.SEE_LOOKML ;;
  }

  dimension: see_lookml_dashboards {
    type: number
    sql: ${TABLE}.SEE_LOOKML_DASHBOARDS ;;
  }

  dimension: see_looks {
    type: number
    sql: ${TABLE}.SEE_LOOKS ;;
  }

  dimension: see_pdts {
    type: number
    sql: ${TABLE}.SEE_PDTS ;;
  }

  dimension: see_queries {
    type: number
    sql: ${TABLE}.SEE_QUERIES ;;
  }

  dimension: see_schedules {
    type: number
    sql: ${TABLE}.SEE_SCHEDULES ;;
  }

  dimension: see_sql {
    type: number
    sql: ${TABLE}.SEE_SQL ;;
  }

  dimension: see_system_activity {
    type: number
    sql: ${TABLE}.SEE_SYSTEM_ACTIVITY ;;
  }

  dimension: see_user_dashboards {
    type: number
    sql: ${TABLE}.SEE_USER_DASHBOARDS ;;
  }

  dimension: see_users {
    type: number
    sql: ${TABLE}.SEE_USERS ;;
  }

  dimension: send_outgoing_webhook {
    type: number
    sql: ${TABLE}.SEND_OUTGOING_WEBHOOK ;;
  }

  dimension: send_to_integration {
    type: number
    sql: ${TABLE}.SEND_TO_INTEGRATION ;;
  }

  dimension: send_to_s3 {
    type: number
    sql: ${TABLE}.SEND_TO_S3 ;;
  }

  dimension: send_to_sftp {
    type: number
    sql: ${TABLE}.SEND_TO_SFTP ;;
  }

  dimension: sudo {
    type: number
    sql: ${TABLE}.SUDO ;;
  }

  dimension: support_access_toggle {
    type: number
    sql: ${TABLE}.SUPPORT_ACCESS_TOGGLE ;;
  }

  dimension: update_datagroups {
    type: number
    sql: ${TABLE}.UPDATE_DATAGROUPS ;;
  }

  dimension: use_global_connections {
    type: number
    sql: ${TABLE}.USE_GLOBAL_CONNECTIONS ;;
  }

  dimension: use_sql_runner {
    type: number
    sql: ${TABLE}.USE_SQL_RUNNER ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
