view: ga_sessions__hits__custom_variables {
  dimension: custom_var_name {
    type: string
    sql: ${TABLE}.customVarName ;;
  }

  dimension: custom_var_value {
    type: string
    sql: ${TABLE}.customVarValue ;;
  }

  dimension: index {
    type: number
    sql: ${TABLE}.index ;;
  }
}
