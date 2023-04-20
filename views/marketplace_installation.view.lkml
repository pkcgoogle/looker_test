view: marketplace_installation {
  sql_table_name: PUBLIC.MARKETPLACE_INSTALLATION ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: accepted_entitlement_ids {
    type: string
    sql: ${TABLE}.ACCEPTED_ENTITLEMENT_IDS ;;
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

  dimension_group: entitlements_accepted {
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
    sql: ${TABLE}.ENTITLEMENTS_ACCEPTED_AT ;;
  }

  dimension: entitlements_accepted_by_user_id {
    type: number
    sql: ${TABLE}.ENTITLEMENTS_ACCEPTED_BY_USER_ID ;;
  }

  dimension: git_sha {
    type: string
    sql: ${TABLE}.GIT_SHA ;;
  }

  dimension: git_uri {
    type: string
    sql: ${TABLE}.GIT_URI ;;
  }

  dimension_group: license_accepted {
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
    sql: ${TABLE}.LICENSE_ACCEPTED_AT ;;
  }

  dimension: license_accepted_by_user_id {
    type: number
    sql: ${TABLE}.LICENSE_ACCEPTED_BY_USER_ID ;;
  }

  dimension: license_accepted_hash {
    type: string
    sql: ${TABLE}.LICENSE_ACCEPTED_HASH ;;
  }

  dimension: marketplace_listing_id {
    type: string
    sql: ${TABLE}.MARKETPLACE_LISTING_ID ;;
  }

  dimension: package_metadata {
    type: string
    sql: ${TABLE}.PACKAGE_METADATA ;;
  }

  dimension: project_id {
    type: string
    sql: ${TABLE}.PROJECT_ID ;;
  }

  dimension: update_version_status {
    type: string
    sql: ${TABLE}.UPDATE_VERSION_STATUS ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.VERSION ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
