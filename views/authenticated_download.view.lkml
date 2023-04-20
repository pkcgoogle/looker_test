view: authenticated_download {
  sql_table_name: PUBLIC.AUTHENTICATED_DOWNLOAD ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: apply_formatting {
    type: yesno
    sql: ${TABLE}.APPLY_FORMATTING ;;
  }

  dimension: apply_vis {
    type: yesno
    sql: ${TABLE}.APPLY_VIS ;;
  }

  dimension: created_at {
    type: number
    sql: ${TABLE}.CREATED_AT ;;
  }

  dimension: download_token {
    type: string
    sql: ${TABLE}.DOWNLOAD_TOKEN ;;
  }

  dimension: encrypted_download_token {
    type: string
    sql: ${TABLE}.ENCRYPTED_DOWNLOAD_TOKEN ;;
  }

  dimension: encrypted_download_token2 {
    type: string
    sql: ${TABLE}.ENCRYPTED_DOWNLOAD_TOKEN2 ;;
  }

  dimension: encrypted_query_guid {
    type: string
    sql: ${TABLE}.ENCRYPTED_QUERY_GUID ;;
  }

  dimension: expires_at {
    type: number
    sql: ${TABLE}.EXPIRES_AT ;;
  }

  dimension: format {
    type: string
    sql: ${TABLE}.FORMAT ;;
  }

  dimension: lookup_id {
    type: string
    sql: ${TABLE}.LOOKUP_ID ;;
  }

  dimension: query_guid {
    type: string
    sql: ${TABLE}.QUERY_GUID ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.USER_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user.dev_branch_name, user.dev_mode_user_id, user.last_name, user.first_name]
  }
}
