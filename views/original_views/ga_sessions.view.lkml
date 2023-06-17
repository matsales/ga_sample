include: "/views/new_views/new_ga_sessions.view.lkml"

view: ga_sessions {
  sql_table_name: `google_analytics_sample.ga_sessions`  ;;
  extends: [new_ga_sessions]



  ### ORIGINAL DIMENSIONS

  dimension_group: _partitiondate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONDATE ;;
  }

  dimension_group: _partitiontime {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONTIME ;;
  }

  dimension: client_id {
    type: string
    sql: ${TABLE}.clientId ;;
  }

  dimension: custom_dimensions {
    hidden: yes
    sql: ${TABLE}.customDimensions ;;
  }

  dimension: device__browser {
    type: string
    sql: ${TABLE}.device.browser ;;
    group_label: "Device"
    group_item_label: "Browser"
  }

  dimension: device__browser_size {
    type: string
    sql: ${TABLE}.device.browserSize ;;
    group_label: "Device"
    group_item_label: "Browser Size"
  }

  dimension: device__browser_version {
    type: string
    sql: ${TABLE}.device.browserVersion ;;
    group_label: "Device"
    group_item_label: "Browser Version"
  }

  dimension: device__device_category {
    type: string
    sql: ${TABLE}.device.deviceCategory ;;
    group_label: "Device"
    group_item_label: "Device Category"
  }

  dimension: device__flash_version {
    type: string
    sql: ${TABLE}.device.flashVersion ;;
    group_label: "Device"
    group_item_label: "Flash Version"
  }

  dimension: device__is_mobile {
    type: yesno
    sql: ${TABLE}.device.isMobile ;;
    group_label: "Device"
    group_item_label: "Is Mobile"
  }

  dimension: device__java_enabled {
    type: yesno
    sql: ${TABLE}.device.javaEnabled ;;
    group_label: "Device"
    group_item_label: "Java Enabled"
  }

  dimension: device__language {
    type: string
    sql: ${TABLE}.device.language ;;
    group_label: "Device"
    group_item_label: "Language"
  }

  dimension: device__mobile_device_branding {
    type: string
    sql: ${TABLE}.device.mobileDeviceBranding ;;
    group_label: "Device"
    group_item_label: "Mobile Device Branding"
  }

  dimension: device__mobile_device_info {
    type: string
    sql: ${TABLE}.device.mobileDeviceInfo ;;
    group_label: "Device"
    group_item_label: "Mobile Device Info"
  }

  dimension: device__mobile_device_marketing_name {
    type: string
    sql: ${TABLE}.device.mobileDeviceMarketingName ;;
    group_label: "Device"
    group_item_label: "Mobile Device Marketing Name"
  }

  dimension: device__mobile_device_model {
    type: string
    sql: ${TABLE}.device.mobileDeviceModel ;;
    group_label: "Device"
    group_item_label: "Mobile Device Model"
  }

  dimension: device__mobile_input_selector {
    type: string
    sql: ${TABLE}.device.mobileInputSelector ;;
    group_label: "Device"
    group_item_label: "Mobile Input Selector"
  }

  dimension: device__operating_system {
    type: string
    sql: ${TABLE}.device.operatingSystem ;;
    group_label: "Device"
    group_item_label: "Operating System"
  }

  dimension: device__operating_system_version {
    type: string
    sql: ${TABLE}.device.operatingSystemVersion ;;
    group_label: "Device"
    group_item_label: "Operating System Version"
  }

  dimension: device__screen_colors {
    type: string
    sql: ${TABLE}.device.screenColors ;;
    group_label: "Device"
    group_item_label: "Screen Colors"
  }

  dimension: device__screen_resolution {
    type: string
    sql: ${TABLE}.device.screenResolution ;;
    group_label: "Device"
    group_item_label: "Screen Resolution"
  }

  dimension: full_visitor_id {
    type: string
    sql: ${TABLE}.fullVisitorId ;;
  }

  dimension: geo_network__city_id {
    type: string
    sql: ${TABLE}.geoNetwork.cityId ;;
    group_label: "Geo Network"
    group_item_label: "City ID"
  }

  dimension: geo_network__latitude {
    type: string
    sql: ${TABLE}.geoNetwork.latitude ;;
    group_label: "Geo Network"
    group_item_label: "Latitude"
  }

  dimension: geo_network__longitude {
    type: string
    sql: ${TABLE}.geoNetwork.longitude ;;
    group_label: "Geo Network"
    group_item_label: "Longitude"
  }

  dimension: geo_network__metro {
    type: string
    sql: ${TABLE}.geoNetwork.metro ;;
    group_label: "Geo Network"
    group_item_label: "Metro"
  }

  dimension: geo_network__network_domain {
    type: string
    sql: ${TABLE}.geoNetwork.networkDomain ;;
    group_label: "Geo Network"
    group_item_label: "Network Domain"
  }

  dimension: geo_network__network_location {
    type: string
    sql: ${TABLE}.geoNetwork.networkLocation ;;
    group_label: "Geo Network"
    group_item_label: "Network Location"
  }

  dimension: hits {
    hidden: yes
    sql: ${TABLE}.hits ;;
  }

  dimension: social_engagement_type {
    type: string
    sql: ${TABLE}.socialEngagementType ;;
  }

  dimension: totals__bounces {
    type: number
    sql: ${TABLE}.totals.bounces ;;
    group_label: "Totals"
    group_item_label: "Bounces"
  }

  dimension: totals__hits {
    type: number
    sql: ${TABLE}.totals.hits ;;
    group_label: "Totals"
    group_item_label: "Hits"
  }

  dimension: totals__new_visits {
    type: number
    sql: ${TABLE}.totals.newVisits ;;
    group_label: "Totals"
    group_item_label: "New Visits"
  }

  dimension: totals__pageviews {
    type: number
    sql: ${TABLE}.totals.pageviews ;;
    group_label: "Totals"
    group_item_label: "Pageviews"
  }

  dimension: totals__screenviews {
    type: number
    sql: ${TABLE}.totals.screenviews ;;
    group_label: "Totals"
    group_item_label: "Screenviews"
  }

  dimension: totals__session_quality_dim {
    type: number
    sql: ${TABLE}.totals.sessionQualityDim ;;
    group_label: "Totals"
    group_item_label: "Session Quality Dim"
  }

  dimension: totals__time_on_screen {
    type: number
    sql: ${TABLE}.totals.timeOnScreen ;;
    group_label: "Totals"
    group_item_label: "Time on Screen"
  }

  dimension: totals__time_on_site {
    type: number
    sql: ${TABLE}.totals.timeOnSite ;;
    group_label: "Totals"
    group_item_label: "Time on Site"
  }

  dimension: totals__total_transaction_revenue {
    type: number
    sql: ${TABLE}.totals.totalTransactionRevenue ;;
    group_label: "Totals"
    group_item_label: "Total Transaction Revenue"
  }

  dimension: totals__transaction_revenue {
    type: number
    sql: ${TABLE}.totals.transactionRevenue ;;
    group_label: "Totals"
    group_item_label: "Transaction Revenue"
  }

  dimension: totals__transactions {
    type: number
    sql: ${TABLE}.totals.transactions ;;
    group_label: "Totals"
    group_item_label: "Transactions"
  }

  dimension: totals__unique_screenviews {
    type: number
    sql: ${TABLE}.totals.uniqueScreenviews ;;
    group_label: "Totals"
    group_item_label: "Unique Screenviews"
  }

  dimension: totals__visits {
    type: number
    sql: ${TABLE}.totals.visits ;;
    group_label: "Totals"
    group_item_label: "Visits"
  }

  dimension: traffic_source__ad_content {
    type: string
    sql: ${TABLE}.trafficSource.adContent ;;
    group_label: "Traffic Source"
    group_item_label: "Ad Content"
  }

  dimension: traffic_source__adwords_click_info__ad_group_id {
    type: number
    sql: ${TABLE}.trafficSource.adwordsClickInfo.adGroupId ;;
    group_label: "Traffic Source Adwords Click Info"
    group_item_label: "Ad Group ID"
  }

  dimension: traffic_source__adwords_click_info__ad_network_type {
    type: string
    sql: ${TABLE}.trafficSource.adwordsClickInfo.adNetworkType ;;
    group_label: "Traffic Source Adwords Click Info"
    group_item_label: "Ad Network Type"
  }

  dimension: traffic_source__adwords_click_info__campaign_id {
    type: number
    sql: ${TABLE}.trafficSource.adwordsClickInfo.campaignId ;;
    group_label: "Traffic Source Adwords Click Info"
    group_item_label: "Campaign ID"
  }

  dimension: traffic_source__adwords_click_info__creative_id {
    type: number
    sql: ${TABLE}.trafficSource.adwordsClickInfo.creativeId ;;
    group_label: "Traffic Source Adwords Click Info"
    group_item_label: "Creative ID"
  }

  dimension: traffic_source__adwords_click_info__criteria_id {
    type: number
    sql: ${TABLE}.trafficSource.adwordsClickInfo.criteriaId ;;
    group_label: "Traffic Source Adwords Click Info"
    group_item_label: "Criteria ID"
  }

  dimension: traffic_source__adwords_click_info__criteria_parameters {
    type: string
    sql: ${TABLE}.trafficSource.adwordsClickInfo.criteriaParameters ;;
    group_label: "Traffic Source Adwords Click Info"
    group_item_label: "Criteria Parameters"
  }

  dimension: traffic_source__adwords_click_info__customer_id {
    type: number
    sql: ${TABLE}.trafficSource.adwordsClickInfo.customerId ;;
    group_label: "Traffic Source Adwords Click Info"
    group_item_label: "Customer ID"
  }

  dimension: traffic_source__adwords_click_info__gcl_id {
    type: string
    sql: ${TABLE}.trafficSource.adwordsClickInfo.gclId ;;
    group_label: "Traffic Source Adwords Click Info"
    group_item_label: "Gcl ID"
  }

  dimension: traffic_source__adwords_click_info__is_video_ad {
    type: yesno
    sql: ${TABLE}.trafficSource.adwordsClickInfo.isVideoAd ;;
    group_label: "Traffic Source Adwords Click Info"
    group_item_label: "Is Video Ad"
  }

  dimension: traffic_source__adwords_click_info__page {
    type: number
    sql: ${TABLE}.trafficSource.adwordsClickInfo.page ;;
    group_label: "Traffic Source Adwords Click Info"
    group_item_label: "Page"
  }

  dimension: traffic_source__adwords_click_info__slot {
    type: string
    sql: ${TABLE}.trafficSource.adwordsClickInfo.slot ;;
    group_label: "Traffic Source Adwords Click Info"
    group_item_label: "Slot"
  }

  dimension: traffic_source__adwords_click_info__targeting_criteria__boom_userlist_id {
    type: number
    sql: ${TABLE}.trafficSource.adwordsClickInfo.targetingCriteria.boomUserlistId ;;
    group_label: "Traffic Source Adwords Click Info Targeting Criteria"
    group_item_label: "Boom Userlist ID"
  }

  dimension: traffic_source__campaign {
    type: string
    sql: ${TABLE}.trafficSource.campaign ;;
    group_label: "Traffic Source"
    group_item_label: "Campaign"
  }

  dimension: traffic_source__campaign_code {
    type: string
    sql: ${TABLE}.trafficSource.campaignCode ;;
    group_label: "Traffic Source"
    group_item_label: "Campaign Code"
  }

  dimension: traffic_source__is_true_direct {
    type: yesno
    sql: ${TABLE}.trafficSource.isTrueDirect ;;
    group_label: "Traffic Source"
    group_item_label: "Is True Direct"
  }

  dimension: traffic_source__keyword {
    type: string
    sql: ${TABLE}.trafficSource.keyword ;;
    group_label: "Traffic Source"
    group_item_label: "Keyword"
  }

  dimension: traffic_source__medium {
    type: string
    sql: ${TABLE}.trafficSource.medium ;;
    group_label: "Traffic Source"
    group_item_label: "Medium"
  }

  dimension: traffic_source__referral_path {
    type: string
    sql: ${TABLE}.trafficSource.referralPath ;;
    group_label: "Traffic Source"
    group_item_label: "Referral Path"
  }

  dimension: traffic_source__source {
    type: string
    sql: ${TABLE}.trafficSource.source ;;
    group_label: "Traffic Source"
    group_item_label: "Source"
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.userId ;;
  }

  dimension: visit_id {
    type: number
    sql: ${TABLE}.visitId ;;
  }

  dimension: visit_number {
    type: number
    sql: ${TABLE}.visitNumber ;;
  }

  dimension: visit_start_time {
    hidden: yes
    type: number
    sql: ${TABLE}.visitStartTime ;;
  }

  dimension: visitor_id {
    type: number
    sql: ${TABLE}.visitorId ;;
  }



  ### ORIGINAL MEASURES

  measure: count {
    type: count
    drill_fields: [device__mobile_device_marketing_name]
  }
}
