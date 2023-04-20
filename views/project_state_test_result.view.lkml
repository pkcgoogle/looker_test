view: project_state_test_result {
  sql_table_name: PUBLIC.PROJECT_STATE_TEST_RESULT ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: project_state_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.PROJECT_STATE_ID ;;
  }

  dimension: test_name {
    type: string
    sql: ${TABLE}.TEST_NAME ;;
  }

  dimension: test_name_hash {
    type: string
    sql: ${TABLE}.TEST_NAME_HASH ;;
  }

  dimension: test_result {
    type: string
    sql: ${TABLE}.TEST_RESULT ;;
  }

  measure: count {
    type: count
    drill_fields: [id, test_name, project_state.name, project_state.id]
  }
}
