view: marketplace_auto_installable_listings {
  sql_table_name: PUBLIC.MARKETPLACE_AUTO_INSTALLABLE_LISTINGS ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: can_update {
    type: yesno
    sql: ${TABLE}.CAN_UPDATE ;;
  }

  dimension: listing_id {
    type: string
    sql: ${TABLE}.LISTING_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
