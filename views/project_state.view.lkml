view: project_state {
  sql_table_name: PUBLIC.PROJECT_STATE ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: all_unit_tests {
    type: string
    sql: ${TABLE}.ALL_UNIT_TESTS ;;
  }

  dimension: children {
    type: string
    sql: ${TABLE}.CHILDREN ;;
  }

  dimension: git_status {
    type: string
    sql: ${TABLE}.GIT_STATUS ;;
  }

  dimension: invalid_at {
    type: number
    sql: ${TABLE}.INVALID_AT ;;
  }

  dimension: invalid_flag {
    type: string
    sql: ${TABLE}.INVALID_FLAG ;;
  }

  dimension: last_prototype_resolution {
    type: string
    sql: ${TABLE}.LAST_PROTOTYPE_RESOLUTION ;;
  }

  dimension: manifest {
    type: string
    sql: ${TABLE}.MANIFEST ;;
  }

  dimension: manifest_lockfile {
    type: string
    sql: ${TABLE}.MANIFEST_LOCKFILE ;;
  }

  dimension: manifest_unlocked {
    type: string
    sql: ${TABLE}.MANIFEST_UNLOCKED ;;
  }

  dimension: manifest_without_provided_constants {
    type: string
    sql: ${TABLE}.MANIFEST_WITHOUT_PROVIDED_CONSTANTS ;;
  }

  dimension: marketplace_installation_metadata {
    type: string
    sql: ${TABLE}.MARKETPLACE_INSTALLATION_METADATA ;;
  }

  dimension: marketplace_lockfile {
    type: string
    sql: ${TABLE}.MARKETPLACE_LOCKFILE ;;
  }

  dimension: marketplace_package_metadata {
    type: string
    sql: ${TABLE}.MARKETPLACE_PACKAGE_METADATA ;;
  }

  dimension: model_names {
    type: string
    sql: ${TABLE}.MODEL_NAMES ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: name_hash {
    type: string
    sql: ${TABLE}.NAME_HASH ;;
  }

  dimension: project_digest {
    type: string
    sql: ${TABLE}.PROJECT_DIGEST ;;
  }

  dimension: project_spec {
    type: string
    sql: ${TABLE}.PROJECT_SPEC ;;
  }

  dimension: prototype_file_names {
    type: string
    sql: ${TABLE}.PROTOTYPE_FILE_NAMES ;;
  }

  dimension: root_project_id {
    type: string
    sql: ${TABLE}.ROOT_PROJECT_ID ;;
  }

  dimension: source_digest {
    type: string
    sql: ${TABLE}.SOURCE_DIGEST ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.VERSION ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, project_state_test_result.count]
  }
}
