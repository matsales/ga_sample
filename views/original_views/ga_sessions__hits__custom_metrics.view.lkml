view: ga_sessions__hits__custom_metrics {
  dimension: index {
    type: number
    sql: ${TABLE}.index ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}
