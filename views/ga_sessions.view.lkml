view: ga_sessions {
  sql_table_name: `google_analytics_sample.ga_sessions`
    ;;



  ### TABLE DIMENSIONS

  dimension_group: partition {
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

  dimension: channel_grouping {
    # view_label: "Acquisition"
    group_label: "Traffic Sources"
    label: "Default Channel"
    # description: "The Channel Group associated with an end user's session for this View (defined by the View's Channel Groupings)."
    sql: ${TABLE}.channelGrouping ;;
  }

  dimension: client_id {
    type: string
    sql: ${TABLE}.clientId ;;
  }

  dimension: custom_dimensions {
    hidden: yes
    sql: ${TABLE}.customDimensions ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
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

  dimension: geo_network__city {
    type: string
    sql: ${TABLE}.geoNetwork.city ;;
    group_label: "Geo Network"
    group_item_label: "City"
  }

  dimension: geo_network__city_id {
    type: string
    sql: ${TABLE}.geoNetwork.cityId ;;
    group_label: "Geo Network"
    group_item_label: "City ID"
  }

  dimension: geo_network__continent {
    type: string
    sql: ${TABLE}.geoNetwork.continent ;;
    group_label: "Geo Network"
    group_item_label: "Continent"
  }

  dimension: geo_network__country {
    type: string
    sql: ${TABLE}.geoNetwork.country ;;
    group_label: "Geo Network"
    group_item_label: "Country"
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

  dimension: geo_network__region {
    type: string
    sql: ${TABLE}.geoNetwork.region ;;
    group_label: "Geo Network"
    group_item_label: "Region"
  }

  dimension: geo_network__sub_continent {
    type: string
    sql: ${TABLE}.geoNetwork.subContinent ;;
    group_label: "Geo Network"
    group_item_label: "Sub Continent"
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



  ### NEW DIMENSIONS

  dimension: id {
    primary_key: yes
    label: "User/Session ID"
    # group_label: "ID"
    # description: "Unique ID for Session: Full User ID | Session ID | Session Start Date"
    sql: CONCAT(
          CAST(${full_visitor_id} AS STRING)
          , '|'
          , COALESCE(CAST(${visit_id} AS STRING),'')
          , '|'
          , CAST(${partition_date} AS STRING)
          --, CAST(PARSE_DATE('%Y%m%d', REGEXP_EXTRACT(_TABLE_SUFFIX,r'^\d\d\d\d\d\d\d\d')) AS STRING)
        ) ;;
  }

  dimension: time_on_site {
    hidden: yes
    sql: ${TABLE}.totals.timeonsite ;;
  }

  dimension_group: visit_start {
    # Dimension(s) are labeled with 'Visit' to match column names in database, but relabeled in Explore to match most recent Google Analytics nomenclature (i.e. 'Session' rather than 'Visit')
    label: "Session Start"
    # description: "Timestamp of the start of the Session. References visitStartTime field. Can differ from 'Date' field based on timezone."
    type: time
    timeframes: [
      raw,
      hour_of_day,
      date,
      day_of_week,
      day_of_week_index,
      day_of_month,
      day_of_year,
      fiscal_quarter,
      fiscal_quarter_of_year,
      week,
      month,
      month_name,
      month_num,
      quarter,
      quarter_of_year,
      week_of_year,
      year
    ]
    sql: TIMESTAMP_SECONDS(${TABLE}.visitStarttime);;
    convert_tz: no
  }

  dimension: time_on_site_tier {
    label: "Session Duration Tiers"
    # description: "The length (returned as a string) of a session measured in seconds and reported in second increments."
    type: tier
    sql: ${time_on_site} ;;
    tiers: [10,30,60,120,180,240,300,600]
    style: integer
  }

  dimension: continent {
    # view_label: "Audience"
    group_label: "Geo"
    # description: "Users' continent, derived from users' IP addresses or Geographical IDs."
    sql: ${TABLE}.geoNetwork.continent ;;
    drill_fields: [subcontinent,country,region,city]
    # drill_fields: [subcontinent,country,region,city,metro,approximate_networkLocation,networkLocation]
  }

  dimension: subcontinent {
    # view_label: "Audience"
    group_label: "Geo"
    # description: "Users' sub-continent, derived from their IP addresses or Geographical IDs. For example, Polynesia or Northern Europe."
    sql: ${TABLE}.geoNetwork.subcontinent ;;
    drill_fields: [country,region,city]
    # drill_fields: [country,region,city,metro,approximate_networkLocation,networkLocation]
  }

  dimension: country {
    # view_label: "Audience"
    group_label: "Geo"
    # description: "Users' country, derived from their IP addresses or Geographical IDs."
    # map_layer_name: countries
    sql: ${TABLE}.geoNetwork.country ;;
    drill_fields: [region,city]
    # drill_fields: [region,metro,city,approximate_networkLocation,networkLocation]
  }

  dimension: region {
    # view_label: "Audience"
    group_label: "Geo"
    # description: "Users' region, derived from their IP addresses or Geographical IDs. In U.S., a region is a state, New York, for example."
    # map_layer_name: us_states
    sql: ${TABLE}.geoNetwork.region ;;
    drill_fields: [city]
    # drill_fields: [metro,city,approximate_networkLocation,networkLocation]
  }

  dimension: city {
    # view_label: "Audience"
    group_label: "Geo"
    # description: "Users' city, derived from their IP addresses or Geographical IDs."
    sql: ${TABLE}.geoNetwork.city ;;
    # drill_fields: [metro,approximate_networkLocation,networkLocation]
  }

  dimension: audience_trait {
    # view_label: "Audience"
    group_label: "Audience Cohorts"
    # description: "Dynamic cohort field based on value set in 'Audience Selector' filter."
    type: string
    sql: CASE
              WHEN {% parameter audience_selector %} = 'Channel' THEN ${channel_grouping}
              WHEN {% parameter audience_selector %} = 'Medium' THEN ${traffic_source__medium}
              WHEN {% parameter audience_selector %} = 'Source' THEN ${traffic_source__source}
              WHEN {% parameter audience_selector %} = 'Source Medium' THEN ${traffic_source__medium}
              WHEN {% parameter audience_selector %} = 'Device' THEN ${device__device_category}
              WHEN {% parameter audience_selector %} = 'Browser' THEN ${device__browser}
              WHEN {% parameter audience_selector %} = 'Metro' THEN ${geo_network__metro}
              WHEN {% parameter audience_selector %} = 'Country' THEN ${country}
              WHEN {% parameter audience_selector %} = 'Continent' THEN ${continent}
              WHEN {% parameter audience_selector %} = 'Language' THEN ${device__language}
              WHEN {% parameter audience_selector %} = 'Operating System' THEN ${device__operating_system}
        END;;
  }

  dimension: source {
    # view_label: "Acquisition"
    group_label: "Traffic Sources"
    # description: "The source of the traffic source. Could be the name of the search engine, the referring hostname, or a value of the utm_source URL parameter."
    type: string
    sql: ${TABLE}.trafficsource.source ;;

    # drill_fields: [ad_content, campaign, keyword, source_medium]
  }

  dimension: medium {
    # view_label: "Acquisition"
    group_label: "Traffic Sources"
    # description: "The medium of the traffic source. Could be 'organic', 'cpc', 'referral', or the value of the utm_medium URL parameter."
    type: string
    sql: ${TABLE}.trafficsource.medium ;;

    # drill_fields: [ad_content, campaign, keyword, source, source_medium]
  }

  dimension: landing_page {
    # view_label: "Behavior"
    # group_label: "Pages (with Parameters)"
    group_label: "Pages"
    label: "Landing Page (with Parameters)"
    # description: "Landing page for session."
    sql: (
          SELECT
            MAX(
              CASE
                WHEN hits.isEntrance AND hits.type = 'PAGE'
                  THEN hits.page.pagePath
              END
            ) as lp
          FROM UNNEST(${TABLE}.hits) as hits
        ) ;;
  }

  dimension: landing_page_formatted {
    # view_label: "Behavior"
    group_label: "Pages"
    label: "Landing Page"
    # description: "Landing page for session without url parameters."
    type: string
    sql: SPLIT(${landing_page}, '?')[OFFSET(0)];;
  }



  ### MEASURES

  measure: count {
    type: count
    drill_fields: [device__mobile_device_marketing_name]
  }

  measure: visits_total {
    group_label: "Session"
    label: "Sessions"
    # description: "Session-level rollup of Sessions."
    type: sum
    sql: ${TABLE}.totals.visits;;

    value_format_name: formatted_number
    drill_fields: [visits_total, hits.page_count]
    # drill_fields: [source_medium, visits_total, new_visits_total, hits.page_count, bounces_rate, timeonsite_average_per_session]
  }

  measure: percent_new_sessions {
    # view_label: "Session"
    group_label: "Session"
    label: "% New Sessions"
    # description: "The percentage of sessions by users who had never visited the property before."
    type: number
    sql: ${first_time_sessions}/NULLIF(${visits_total}, 0) ;;
    value_format_name: percent_1
    drill_fields: [visits_total, percent_new_sessions]
    # drill_fields: [source_medium,first_time_visitors, visits_total, percent_new_sessions]
  }

  measure: first_time_sessions {
    group_label: "Session"
    label: "New Sessions"
    # description: "The total number of sessions for the requested time period where the visitNumber equals 1."
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${id} ;;

    filters: {
      field: visit_number
      value: "1"
    }

    value_format_name: "formatted_number"
    drill_fields: [first_time_sessions]
    # drill_fields: [source_medium, first_time_sessions]
  }

  measure: bounces_total {
    group_label: "Session"
    label: "Bounces"
    type: sum
    sql: ${TABLE}.totals.bounces ;;

    value_format_name: "formatted_number"
  }

  measure: bounce_rate {
    group_label: "Session"
    type:  number
    sql: 1.0 * ${bounces_total} / NULLIF(${visits_total},0) ;;

    value_format_name: percent_2
  }

  measure: timeonsite_total_formatted {
    group_label: "Session"
    label: "Time On Site"
    # description: "Total duration of users' sessions."
    type: sum
    sql: ${time_on_site} / 86400;;

    value_format_name: hour_format
  }

  measure: timeonsite_average_per_session {
    group_label: "Session"
    label: "Avg. Session Duration"
    # description: "Total duration of users' sessions."
    type: number
    sql: (${timeonsite_total_formatted} / NULLIF(${visits_total},0));;

    value_format_name: hour_format
  }

  measure: unique_visitors {
    # view_label: "Audience"
    group_label: "User"
    label: "Users"
    # description: "The total number of users for the requested time period."
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${full_visitor_id} ;;

    value_format_name: formatted_number
    drill_fields: [client_id, account.id, visit_number]
    # drill_fields: [client_id, account.id, visit_number, hits_total, page_views_total, time_on_site_total]
  }

  measure: returning_visitors {
    # view_label: "Audience"
    group_label: "User"
    label: "Returning Users"
    # description: "The total number of users for the requested time period where the visitNumber is not 1."
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${full_visitor_id};;

    filters: {
      field: visit_number
      value: "<> 1"
    }

    value_format_name: formatted_number
    # drill_fields: [source_medium, returning_visitors]
  }

  measure: percent_returning_visitors {
    # view_label: "Audience"
    group_label: "User"
    label: "% Returning Users"
    # description: "The total number of users for the requested time period where the visitNumber is not 1."
    type: number
    sql: ${returning_visitors} / ${unique_visitors};;

    value_format_name: percent_1
    # drill_fields: [source_medium, returning_visitors]
  }



  ### PARAMETERS

  parameter: audience_selector {
    # view_label: "Audience"
    # description: "Use to set 'Audience Trait' field to dynamically choose a user cohort."
    type: string
    allowed_value: {
      value: "Device"
    }
    allowed_value: {
      value: "Operating System"
    }
    allowed_value: {
      value: "Browser"
    }

    allowed_value: {
      value: "Country"
    }
    allowed_value: {
      value: "Continent"
    }
    allowed_value: {
      value: "Metro"
    }
    allowed_value: {
      value: "Language"
    }

    allowed_value: {
      value: "Channel"
    }
    allowed_value: {
      value: "Medium"
    }
    allowed_value: {
      value: "Source"
    }
    allowed_value: {
      value: "Source Medium"
    }
  }
}
