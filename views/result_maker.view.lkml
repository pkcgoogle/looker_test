view: result_maker {
  sql_table_name: PUBLIC.RESULT_MAKER ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: merge_query_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MERGE_QUERY_ID ;;
  }

  dimension: query_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QUERY_ID ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.SLUG ;;
  }

  dimension: sql_query_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SQL_QUERY_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      query.id,
      merge_query.id,
      sql_query.model_name,
      sql_query.id,
      dashboard_element.count,
      history.count,
      query_task.count,
      slug.count
    ]
  }
}
