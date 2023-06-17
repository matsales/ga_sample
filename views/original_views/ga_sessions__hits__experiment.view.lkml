view: ga_sessions__hits__experiment {
  dimension: experiment_id {
    type: string
    sql: ${TABLE}.experimentId ;;
  }

  dimension: experiment_variant {
    type: string
    sql: ${TABLE}.experimentVariant ;;
  }
}
