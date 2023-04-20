view: repository_credential {
  sql_table_name: PUBLIC.REPOSITORY_CREDENTIAL ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: git_password {
    type: string
    sql: ${TABLE}.GIT_PASSWORD ;;
  }

  dimension: git_username {
    type: string
    sql: ${TABLE}.GIT_USERNAME ;;
  }

  dimension: remote_url {
    type: string
    sql: ${TABLE}.REMOTE_URL ;;
  }

  dimension: root_project_id {
    type: string
    sql: ${TABLE}.ROOT_PROJECT_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, git_username]
  }
}
