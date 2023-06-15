view: ga_sessions__hits__publisher_infos {
  dimension: ads_clicked {
    type: number
    sql: ${TABLE}.adsClicked ;;
  }

  dimension: ads_pages_viewed {
    type: number
    sql: ${TABLE}.adsPagesViewed ;;
  }

  dimension: ads_revenue {
    type: number
    sql: ${TABLE}.adsRevenue ;;
  }

  dimension: ads_units_matched {
    type: number
    sql: ${TABLE}.adsUnitsMatched ;;
  }

  dimension: ads_units_viewed {
    type: number
    sql: ${TABLE}.adsUnitsViewed ;;
  }

  dimension: ads_viewed {
    type: number
    sql: ${TABLE}.adsViewed ;;
  }

  dimension: adsense_backfill_dfp_clicks {
    type: number
    sql: ${TABLE}.adsenseBackfillDfpClicks ;;
  }

  dimension: adsense_backfill_dfp_impressions {
    type: number
    sql: ${TABLE}.adsenseBackfillDfpImpressions ;;
  }

  dimension: adsense_backfill_dfp_matched_queries {
    type: number
    sql: ${TABLE}.adsenseBackfillDfpMatchedQueries ;;
  }

  dimension: adsense_backfill_dfp_measurable_impressions {
    type: number
    sql: ${TABLE}.adsenseBackfillDfpMeasurableImpressions ;;
  }

  dimension: adsense_backfill_dfp_pages_viewed {
    type: number
    sql: ${TABLE}.adsenseBackfillDfpPagesViewed ;;
  }

  dimension: adsense_backfill_dfp_queries {
    type: number
    sql: ${TABLE}.adsenseBackfillDfpQueries ;;
  }

  dimension: adsense_backfill_dfp_revenue_cpc {
    type: number
    sql: ${TABLE}.adsenseBackfillDfpRevenueCpc ;;
  }

  dimension: adsense_backfill_dfp_revenue_cpm {
    type: number
    sql: ${TABLE}.adsenseBackfillDfpRevenueCpm ;;
  }

  dimension: adsense_backfill_dfp_viewable_impressions {
    type: number
    sql: ${TABLE}.adsenseBackfillDfpViewableImpressions ;;
  }

  dimension: adx_backfill_dfp_clicks {
    type: number
    sql: ${TABLE}.adxBackfillDfpClicks ;;
  }

  dimension: adx_backfill_dfp_impressions {
    type: number
    sql: ${TABLE}.adxBackfillDfpImpressions ;;
  }

  dimension: adx_backfill_dfp_matched_queries {
    type: number
    sql: ${TABLE}.adxBackfillDfpMatchedQueries ;;
  }

  dimension: adx_backfill_dfp_measurable_impressions {
    type: number
    sql: ${TABLE}.adxBackfillDfpMeasurableImpressions ;;
  }

  dimension: adx_backfill_dfp_pages_viewed {
    type: number
    sql: ${TABLE}.adxBackfillDfpPagesViewed ;;
  }

  dimension: adx_backfill_dfp_queries {
    type: number
    sql: ${TABLE}.adxBackfillDfpQueries ;;
  }

  dimension: adx_backfill_dfp_revenue_cpc {
    type: number
    sql: ${TABLE}.adxBackfillDfpRevenueCpc ;;
  }

  dimension: adx_backfill_dfp_revenue_cpm {
    type: number
    sql: ${TABLE}.adxBackfillDfpRevenueCpm ;;
  }

  dimension: adx_backfill_dfp_viewable_impressions {
    type: number
    sql: ${TABLE}.adxBackfillDfpViewableImpressions ;;
  }

  dimension: adx_clicks {
    type: number
    sql: ${TABLE}.adxClicks ;;
  }

  dimension: adx_impressions {
    type: number
    sql: ${TABLE}.adxImpressions ;;
  }

  dimension: adx_matched_queries {
    type: number
    sql: ${TABLE}.adxMatchedQueries ;;
  }

  dimension: adx_measurable_impressions {
    type: number
    sql: ${TABLE}.adxMeasurableImpressions ;;
  }

  dimension: adx_pages_viewed {
    type: number
    sql: ${TABLE}.adxPagesViewed ;;
  }

  dimension: adx_queries {
    type: number
    sql: ${TABLE}.adxQueries ;;
  }

  dimension: adx_revenue {
    type: number
    sql: ${TABLE}.adxRevenue ;;
  }

  dimension: adx_viewable_impressions {
    type: number
    sql: ${TABLE}.adxViewableImpressions ;;
  }

  dimension: dfp_ad_group {
    type: string
    sql: ${TABLE}.dfpAdGroup ;;
  }

  dimension: dfp_ad_units {
    type: string
    sql: ${TABLE}.dfpAdUnits ;;
  }

  dimension: dfp_clicks {
    type: number
    sql: ${TABLE}.dfpClicks ;;
  }

  dimension: dfp_impressions {
    type: number
    sql: ${TABLE}.dfpImpressions ;;
  }

  dimension: dfp_matched_queries {
    type: number
    sql: ${TABLE}.dfpMatchedQueries ;;
  }

  dimension: dfp_measurable_impressions {
    type: number
    sql: ${TABLE}.dfpMeasurableImpressions ;;
  }

  dimension: dfp_network_id {
    type: string
    sql: ${TABLE}.dfpNetworkId ;;
  }

  dimension: dfp_pages_viewed {
    type: number
    sql: ${TABLE}.dfpPagesViewed ;;
  }

  dimension: dfp_queries {
    type: number
    sql: ${TABLE}.dfpQueries ;;
  }

  dimension: dfp_revenue_cpc {
    type: number
    sql: ${TABLE}.dfpRevenueCpc ;;
  }

  dimension: dfp_revenue_cpm {
    type: number
    sql: ${TABLE}.dfpRevenueCpm ;;
  }

  dimension: dfp_viewable_impressions {
    type: number
    sql: ${TABLE}.dfpViewableImpressions ;;
  }

  dimension: measurable_ads_viewed {
    type: number
    sql: ${TABLE}.measurableAdsViewed ;;
  }

  dimension: viewable_ads_viewed {
    type: number
    sql: ${TABLE}.viewableAdsViewed ;;
  }
}
