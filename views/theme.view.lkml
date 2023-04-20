view: theme {
  sql_table_name: PUBLIC.THEME ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension_group: begin {
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
    sql: ${TABLE}.BEGIN_AT ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.END_AT ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: name_key {
    type: string
    sql: ${TABLE}.NAME_KEY ;;
  }

  dimension: settings_json {
    type: string
    sql: ${TABLE}.SETTINGS_JSON ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
