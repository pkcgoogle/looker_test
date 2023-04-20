view: ip_whitelist_rule {
  sql_table_name: PUBLIC.IP_WHITELIST_RULE ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: allow_core_api_traffic {
    type: yesno
    sql: ${TABLE}.ALLOW_CORE_API_TRAFFIC ;;
  }

  dimension: allow_internal_api_traffic {
    type: yesno
    sql: ${TABLE}.ALLOW_INTERNAL_API_TRAFFIC ;;
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

  dimension: delete_on_disable_support_access {
    type: yesno
    sql: ${TABLE}.DELETE_ON_DISABLE_SUPPORT_ACCESS ;;
  }

  dimension: enabled {
    type: yesno
    sql: ${TABLE}.ENABLED ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.IP ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.LABEL ;;
  }

  dimension: subnet_mask {
    type: string
    sql: ${TABLE}.SUBNET_MASK ;;
  }

  dimension: whitelists_bastion {
    type: yesno
    sql: ${TABLE}.WHITELISTS_BASTION ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
