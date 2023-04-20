view: delivery_channel {
  sql_table_name: PUBLIC.DELIVERY_CHANNEL ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: action_hub_form_params_json {
    type: string
    sql: ${TABLE}.ACTION_HUB_FORM_PARAMS_JSON ;;
  }

  dimension: action_hub_integration_id {
    type: string
    sql: ${TABLE}.ACTION_HUB_INTEGRATION_ID ;;
  }

  dimension: channel_destination_type {
    type: string
    sql: ${TABLE}.CHANNEL_DESTINATION_TYPE ;;
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

  dimension_group: deleted {
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
    sql: ${TABLE}.DELETED_AT ;;
  }

  dimension: owner_user_id {
    type: number
    sql: ${TABLE}.OWNER_USER_ID ;;
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
    drill_fields: [id, alert_destination.count]
  }
}
