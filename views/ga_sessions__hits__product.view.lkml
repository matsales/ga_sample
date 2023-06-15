view: ga_sessions__hits__product {
  dimension: custom_dimensions {
    hidden: yes
    sql: ${TABLE}.customDimensions ;;
  }

  dimension: custom_metrics {
    hidden: yes
    sql: ${TABLE}.customMetrics ;;
  }

  dimension: is_click {
    type: yesno
    sql: ${TABLE}.isClick ;;
  }

  dimension: is_impression {
    type: yesno
    sql: ${TABLE}.isImpression ;;
  }

  dimension: local_product_price {
    type: number
    sql: ${TABLE}.localProductPrice ;;
  }

  dimension: local_product_refund_amount {
    type: number
    sql: ${TABLE}.localProductRefundAmount ;;
  }

  dimension: local_product_revenue {
    type: number
    sql: ${TABLE}.localProductRevenue ;;
  }

  dimension: product_brand {
    type: string
    sql: ${TABLE}.productBrand ;;
  }

  dimension: product_coupon_code {
    type: string
    sql: ${TABLE}.productCouponCode ;;
  }

  dimension: product_list_name {
    type: string
    sql: ${TABLE}.productListName ;;
  }

  dimension: product_list_position {
    type: number
    sql: ${TABLE}.productListPosition ;;
  }

  dimension: product_price {
    type: number
    sql: ${TABLE}.productPrice ;;
  }

  dimension: product_quantity {
    type: number
    sql: ${TABLE}.productQuantity ;;
  }

  dimension: product_refund_amount {
    type: number
    sql: ${TABLE}.productRefundAmount ;;
  }

  dimension: product_revenue {
    type: number
    sql: ${TABLE}.productRevenue ;;
  }

  dimension: product_sku {
    type: string
    sql: ${TABLE}.productSKU ;;
  }

  dimension: product_variant {
    type: string
    sql: ${TABLE}.productVariant ;;
  }

  dimension: v2_product_category {
    type: string
    sql: ${TABLE}.v2ProductCategory ;;
  }

  dimension: v2_product_name {
    type: string
    sql: ${TABLE}.v2ProductName ;;
  }
}
