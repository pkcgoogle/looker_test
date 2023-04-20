view: content_repo {
  sql_table_name: PUBLIC.CONTENT_REPO ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: deploy_secret {
    type: string
    sql: ${TABLE}.DEPLOY_SECRET ;;
  }

  dimension: git_password {
    type: string
    sql: ${TABLE}.GIT_PASSWORD ;;
  }

  dimension: git_server_port {
    type: number
    sql: ${TABLE}.GIT_SERVER_PORT ;;
  }

  dimension: git_server_scheme {
    type: string
    sql: ${TABLE}.GIT_SERVER_SCHEME ;;
  }

  dimension: git_service_name {
    type: string
    sql: ${TABLE}.GIT_SERVICE_NAME ;;
  }

  dimension: git_username {
    type: string
    sql: ${TABLE}.GIT_USERNAME ;;
  }

  dimension: instance_name {
    type: string
    sql: ${TABLE}.INSTANCE_NAME ;;
  }

  dimension: repo_url {
    type: string
    sql: ${TABLE}.REPO_URL ;;
  }

  dimension: use_git_cookie_auth {
    type: yesno
    sql: ${TABLE}.USE_GIT_COOKIE_AUTH ;;
  }

  measure: count {
    type: count
    drill_fields: [id, instance_name, git_service_name, git_username]
  }
}
