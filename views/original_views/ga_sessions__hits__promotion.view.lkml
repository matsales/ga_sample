view: ga_sessions__hits__promotion {
  dimension: promo_creative {
    type: string
    sql: ${TABLE}.promoCreative ;;
  }

  dimension: promo_id {
    type: string
    sql: ${TABLE}.promoId ;;
  }

  dimension: promo_name {
    type: string
    sql: ${TABLE}.promoName ;;
  }

  dimension: promo_position {
    type: string
    sql: ${TABLE}.promoPosition ;;
  }
}
