view: project_configuration {
  sql_table_name: PUBLIC.PROJECT_CONFIGURATION ;;

  dimension: allow_warnings {
    type: yesno
    sql: ${TABLE}.ALLOW_WARNINGS ;;
  }

  dimension: deploy_secret {
    type: string
    sql: ${TABLE}.DEPLOY_SECRET ;;
  }

  dimension: folders_enabled {
    type: yesno
    sql: ${TABLE}.FOLDERS_ENABLED ;;
  }

  dimension: git_application_server_http_port {
    type: number
    sql: ${TABLE}.GIT_APPLICATION_SERVER_HTTP_PORT ;;
  }

  dimension: git_application_server_http_scheme {
    type: string
    sql: ${TABLE}.GIT_APPLICATION_SERVER_HTTP_SCHEME ;;
  }

  dimension: git_auth_cookie {
    type: string
    sql: ${TABLE}.GIT_AUTH_COOKIE ;;
  }

  dimension: git_password {
    type: string
    sql: ${TABLE}.GIT_PASSWORD ;;
  }

  dimension: git_password_user_attribute {
    type: string
    sql: ${TABLE}.GIT_PASSWORD_USER_ATTRIBUTE ;;
  }

  dimension: git_production_branch_name {
    type: string
    sql: ${TABLE}.GIT_PRODUCTION_BRANCH_NAME ;;
  }

  dimension: git_release_mgmt_enabled {
    type: yesno
    sql: ${TABLE}.GIT_RELEASE_MGMT_ENABLED ;;
  }

  dimension: git_service_name {
    type: string
    sql: ${TABLE}.GIT_SERVICE_NAME ;;
  }

  dimension: git_username {
    type: string
    sql: ${TABLE}.GIT_USERNAME ;;
  }

  dimension: git_username_user_attribute {
    type: string
    sql: ${TABLE}.GIT_USERNAME_USER_ATTRIBUTE ;;
  }

  dimension: lookml_type {
    type: string
    sql: ${TABLE}.LOOKML_TYPE ;;
  }

  dimension: managed_by_marketplace {
    type: yesno
    sql: ${TABLE}.MANAGED_BY_MARKETPLACE ;;
  }

  dimension: marketplace_auxiliary_of {
    type: string
    sql: ${TABLE}.MARKETPLACE_AUXILIARY_OF ;;
  }

  dimension: project_id {
    type: string
    sql: ${TABLE}.PROJECT_ID ;;
  }

  dimension: pull_request_mode {
    type: string
    sql: ${TABLE}.PULL_REQUEST_MODE ;;
  }

  dimension: test_state_required_for_deploy {
    type: string
    sql: ${TABLE}.TEST_STATE_REQUIRED_FOR_DEPLOY ;;
  }

  dimension: use_git_cookie_auth {
    type: yesno
    sql: ${TABLE}.USE_GIT_COOKIE_AUTH ;;
  }

  dimension: validation_required {
    type: yesno
    sql: ${TABLE}.VALIDATION_REQUIRED ;;
  }

  measure: count {
    type: count
    drill_fields: [git_service_name, git_username, git_production_branch_name]
  }
}
