include: "/views/original_views/ga_sessions.view.lkml"

view: new_ga_sessions {
  extension: required
  extends: [ga_sessions]



  ### NEW DIMENSIONS

  dimension: channel_grouping {
    group_label: "Traffic Source"
    label: "Default Channel"
    description: "The Channel Group associated with an end user's session for this View (defined by the View's Channel Groupings)."
    sql: ${TABLE}.channelGrouping ;;
  }

  dimension: date {
    type: date
    description: "The day the data row was generated in Google Analytics"
    sql: TIMESTAMP(PARSE_DATE('%Y%m%d', ${TABLE}.date)) ;;
  }

  dimension: geo_network__continent {
    description: "Users' continent, derived from users' IP addresses or Geographical IDs."
    type: string
    sql: ${TABLE}.geoNetwork.continent ;;
    group_label: "Geo Network"
    group_item_label: "Continent"
    drill_fields: [geo_network__sub_continent, geo_network__country, geo_network__region, geo_network__city]
  }

  dimension: geo_network__sub_continent {
    description: "Users' sub-continent, derived from their IP addresses or Geographical IDs. For example, Polynesia or Northern Europe."
    type: string
    sql: ${TABLE}.geoNetwork.subContinent ;;
    group_label: "Geo Network"
    group_item_label: "Sub Continent"
    drill_fields: [geo_network__country, geo_network__region, geo_network__city]
  }

  dimension: geo_network__country {
    description: "Users' country, derived from their IP addresses or Geographical IDs."
    type: string
    sql: ${TABLE}.geoNetwork.country ;;
    group_label: "Geo Network"
    group_item_label: "Country"
    drill_fields: [geo_network__region, geo_network__city]
  }

  dimension: geo_network__region {
    description: "Users' region, derived from their IP addresses or Geographical IDs. In U.S., a region is a state, New York, for example."
    type: string
    sql: ${TABLE}.geoNetwork.region ;;
    group_label: "Geo Network"
    group_item_label: "Region"
    drill_fields: [geo_network__city]
  }

  dimension: geo_network__city {
    description: "Users' city, derived from their IP addresses or Geographical IDs."
    type: string
    sql: ${TABLE}.geoNetwork.city ;;
    group_label: "Geo Network"
    group_item_label: "City"
  }

  dimension: id {
    primary_key: yes
    label: "User/Session ID"
    description: "Unique ID for Session: Full User ID | Session ID | Session Start Date"
    sql: CONCAT(CAST(${full_visitor_id} AS STRING), '|', COALESCE(CAST(${visit_id} AS STRING),''), '|', CAST(${_partitiondate_date} AS STRING)) ;;
  }

  dimension: time_on_site {
    hidden: yes
    sql: ${TABLE}.totals.timeonsite ;;
  }

  dimension_group: visit_start {
    label: "Session Start"
    description: "Timestamp of the start of the Session. References visitStartTime field. Can differ from 'Date' field based on timezone."
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
    description: "The length (returned as a string) of a session measured in seconds and reported in second increments."
    type: tier
    sql: ${time_on_site} ;;
    tiers: [10,30,60,120,180,240,300,600]
    style: integer
  }

  dimension: audience_trait {
    description: "Dynamic cohort field based on value set in 'Audience Selector' filter."
    type: string
    sql: CASE
              WHEN {% parameter audience_selector %} = 'Channel' THEN ${channel_grouping}
              WHEN {% parameter audience_selector %} = 'Medium' THEN ${traffic_source__medium}
              WHEN {% parameter audience_selector %} = 'Source' THEN ${traffic_source__source}
              WHEN {% parameter audience_selector %} = 'Source Medium' THEN ${traffic_source__medium}
              WHEN {% parameter audience_selector %} = 'Device' THEN ${device__device_category}
              WHEN {% parameter audience_selector %} = 'Browser' THEN ${device__browser}
              WHEN {% parameter audience_selector %} = 'Metro' THEN ${geo_network__metro}
              WHEN {% parameter audience_selector %} = 'Country' THEN ${geo_network__country}
              WHEN {% parameter audience_selector %} = 'Continent' THEN ${geo_network__continent}
              WHEN {% parameter audience_selector %} = 'Language' THEN ${device__language}
              WHEN {% parameter audience_selector %} = 'Operating System' THEN ${device__operating_system}
        END;;
  }

  dimension: source {
    group_label: "Traffic Source"
    description: "The source of the traffic source. Could be the name of the search engine, the referring hostname, or a value of the utm_source URL parameter."
    type: string
    sql: ${TABLE}.trafficsource.source ;;
  }

  dimension: medium {
    group_label: "Traffic Source"
    description: "The medium of the traffic source. Could be 'organic', 'cpc', 'referral', or the value of the utm_medium URL parameter."
    type: string
    sql: ${TABLE}.trafficsource.medium ;;
    drill_fields: [source]
  }

  dimension: landing_page {
    label: "Landing Page (with Parameters)"
    description: "Landing page for session."
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
    label: "Landing Page"
    description: "Landing page for session without url parameters."
    type: string
    sql: SPLIT(${landing_page}, '?')[OFFSET(0)];;
  }



  ### NEW MEASURES

  measure: visits_total {
    group_label: "Session"
    label: "Sessions"
    description: "Session-level rollup of Sessions."
    type: sum
    sql: ${TABLE}.totals.visits;;
    value_format_name: formatted_number
    drill_fields: [visits_total, hits.page_count, timeonsite_average_per_session]
  }

  measure: percent_new_sessions {
    group_label: "Session"
    label: "% New Sessions"
    description: "The percentage of sessions by users who had never visited the property before."
    type: number
    sql: ${first_time_sessions}/NULLIF(${visits_total}, 0) ;;
    value_format_name: percent_1
    drill_fields: [visits_total, percent_new_sessions]
  }

  measure: first_time_sessions {
    group_label: "Session"
    label: "New Sessions"
    description: "The total number of sessions for the requested time period where the visitNumber equals 1."
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${id} ;;
    value_format_name: "formatted_number"
    drill_fields: [first_time_sessions]
    filters: {
      field: visit_number
      value: "1"
    }
  }

  measure: bounces_total {
    group_label: "Session"
    label: "Bounces"
    description: "The total number of bounces. A bounce is a single-page session on your site."
    type: sum
    sql: ${TABLE}.totals.bounces ;;
    value_format_name: "formatted_number"
  }

  measure: bounce_rate {
    group_label: "Session"
    description: "Bounce rate is single-page sessions divided by all sessions."
    type:  number
    sql: 1.0 * ${bounces_total} / NULLIF(${visits_total},0) ;;
    value_format_name: percent_2
  }

  measure: timeonsite_total_formatted {
    group_label: "Session"
    label: "Time On Site"
    description: "Total duration of users' sessions."
    type: sum
    sql: ${time_on_site} / 86400;;
    value_format_name: hour_format
  }

  measure: timeonsite_average_per_session {
    group_label: "Session"
    label: "Avg. Session Duration"
    description: "Total duration of users' sessions."
    type: number
    sql: (${timeonsite_total_formatted} / NULLIF(${visits_total},0));;
    value_format_name: hour_format
  }

  measure: unique_visitors {
    group_label: "User"
    label: "Users"
    description: "The total number of users for the requested time period."
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${full_visitor_id} ;;
    value_format_name: formatted_number
    drill_fields: [client_id, account.id, visit_number]
  }

  measure: returning_visitors {
    group_label: "User"
    label: "Returning Users"
    description: "The total number of users for the requested time period where the visitNumber is not 1."
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${full_visitor_id};;
    value_format_name: formatted_number
    filters: {
      field: visit_number
      value: "<> 1"
    }
  }

  measure: percent_returning_visitors {
    group_label: "User"
    label: "% Returning Users"
    description: "The total number of users for the requested time period where the visitNumber is not 1."
    type: number
    sql: ${returning_visitors} / ${unique_visitors};;
    value_format_name: percent_1
    drill_fields: [returning_visitors]
  }



  ### PARAMETERS

  parameter: audience_selector {
    description: "Use to set 'Audience Trait' field to dynamically choose a user cohort."
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
