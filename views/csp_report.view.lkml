view: csp_report {
  sql_table_name: PUBLIC.CSP_REPORT ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: blocked_uri {
    type: string
    sql: ${TABLE}.BLOCKED_URI ;;
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

  dimension: document_uri {
    type: string
    sql: ${TABLE}.DOCUMENT_URI ;;
  }

  dimension: original_policy {
    type: string
    sql: ${TABLE}.ORIGINAL_POLICY ;;
  }

  dimension: referrer {
    type: string
    sql: ${TABLE}.REFERRER ;;
  }

  dimension: violated_directive {
    type: string
    sql: ${TABLE}.VIOLATED_DIRECTIVE ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
