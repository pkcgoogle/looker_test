view: encryption_key {
  sql_table_name: PUBLIC.ENCRYPTION_KEY ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.ACTIVE ;;
  }

  dimension: cmek_key_name_version {
    type: string
    sql: ${TABLE}.CMEK_KEY_NAME_VERSION ;;
  }

  dimension_group: cmek_last_known_transition {
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
    sql: ${TABLE}.CMEK_LAST_KNOWN_TRANSITION ;;
  }

  dimension: cmek_valid {
    type: yesno
    sql: ${TABLE}.CMEK_VALID ;;
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

  dimension: encrypted_key {
    type: string
    sql: ${TABLE}.ENCRYPTED_KEY ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
