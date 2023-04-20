view: proxy_verification_token {
  sql_table_name: PUBLIC.PROXY_VERIFICATION_TOKEN ;;
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

  dimension: encrypted_integration_access_token {
    type: string
    sql: ${TABLE}.ENCRYPTED_INTEGRATION_ACCESS_TOKEN ;;
  }

  dimension: encrypted_verification_token {
    type: string
    sql: ${TABLE}.ENCRYPTED_VERIFICATION_TOKEN ;;
  }

  dimension: install_id {
    type: string
    sql: ${TABLE}.INSTALL_ID ;;
  }

  dimension: install_name {
    type: string
    sql: ${TABLE}.INSTALL_NAME ;;
  }

  dimension: installation_type {
    type: string
    sql: ${TABLE}.INSTALLATION_TYPE ;;
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
    drill_fields: [id, install_name]
  }
}
