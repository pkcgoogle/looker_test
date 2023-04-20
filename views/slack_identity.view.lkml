view: slack_identity {
  sql_table_name: PUBLIC.SLACK_IDENTITY ;;
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

  dimension: encrypted_user_access_token {
    type: string
    sql: ${TABLE}.ENCRYPTED_USER_ACCESS_TOKEN ;;
  }

  dimension: slack_team_id {
    type: string
    sql: ${TABLE}.SLACK_TEAM_ID ;;
  }

  dimension: slack_user_id {
    type: string
    sql: ${TABLE}.SLACK_USER_ID ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.USER_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user.dev_branch_name, user.dev_mode_user_id, user.last_name, user.first_name]
  }
}
