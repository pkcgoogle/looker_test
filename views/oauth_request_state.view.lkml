view: oauth_request_state {
  sql_table_name: PUBLIC.OAUTH_REQUEST_STATE ;;
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

  dimension: oauth_user_state_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OAUTH_USER_STATE_ID ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.SLUG ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
  }

  measure: count {
    type: count
    drill_fields: [id, oauth_user_state.id]
  }
}
