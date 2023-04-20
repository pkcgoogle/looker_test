view: alert_destination {
  sql_table_name: PUBLIC.ALERT_DESTINATION ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: alert_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ALERT_ID ;;
  }

  dimension: delivery_channel_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DELIVERY_CHANNEL_ID ;;
  }

  dimension: email_address {
    type: string
    sql: ${TABLE}.EMAIL_ADDRESS ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.SLUG ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.USER_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      delivery_channel.id,
      user.dev_branch_name,
      user.dev_mode_user_id,
      user.last_name,
      user.first_name,
      alert.id
    ]
  }
}
