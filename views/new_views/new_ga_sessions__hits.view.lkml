include: "/views/original_views/ga_sessions__hits.view.lkml"

view: new_ga_sessions__hits {
  extension: required
  extends: [ga_sessions__hits]



  ### NEW DIMENSIONS

  dimension: type {
    label: "Hit Type"
    description: "The type of hit: PAGE or EVENT"
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: page_path {
    group_label: "Page"
    label: "Page (with Parameters)"
    description: "A page on the website specified by path and/or query parameters. Use this with hostname to get the page's full URL."
    sql: ${TABLE}.page.pagePath ;;
  }

  dimension: page_title {
    group_label: "Page"
    description: "The page's title. Multiple pages might have the same page title."
    sql: ${TABLE}.page.pageTitle ;;
    drill_fields: [page_path]
  }

  dimension: id {
    primary_key: yes
    label: "Hit ID"
    description: "Unique Session ID | Hit Number"
    sql: CONCAT(${ga_sessions.id},'|',FORMAT('%05d',${hit_number})) ;;
  }

  dimension: page_path_formatted {
    group_label: "Page"
    label: "Page"
    description: "The url of the page."
    type: string
    sql: SPLIT(${page_path}, '?')[OFFSET(0)];;
    full_suggestions: yes
    suggest_persist_for: "24 hours"
  }

  dimension: event_category {
    group_label: "Event Tracking"
    description: "The event category"
    type: string
    sql: ${TABLE}.eventInfo.eventCategory ;;
    full_suggestions: yes
    suggest_persist_for: "24 hours"
    drill_fields: [event_action, event_label]
  }

  dimension: event_action {
    group_label: "Event Tracking"
    description: "Action tied to event"
    type: string
    sql: ${TABLE}.eventInfo.eventAction ;;
    full_suggestions: yes
    suggest_persist_for: "24 hours"
    drill_fields: [event_category, event_label]
  }

  dimension: event_label {
    group_label: "Event Tracking"
    description: "Label tied to event"
    type: string
    sql: ${TABLE}.eventInfo.eventLabel ;;
    full_suggestions: yes
    suggest_persist_for: "24 hours"
    drill_fields: [event_action, event_category]
  }

  dimension: full_event {
    group_label: "Event Tracking"
    description: "Concatenation of Event Category, Event Label, Event Action, and Page. Each are only included if there is a value."
    type: string
    sql: CONCAT(
          IF(${event_category} IS NOT NULL, CONCAT(${event_category}, ": "), ""),
          IF(${event_action} IS NOT NULL, CONCAT(${event_action}, " "), ""),
          IF(${event_label} IS NOT NULL, CONCAT(${event_label}, " "), ""),
          IF(${page_path_formatted} IS NOT NULL, CONCAT("on ", ${page_path_formatted}), "")
        );;
  }



  ### NEW MEASURES

  measure: page_count {
    group_label: "Pages"
    label: "Pageviews"
    description: "The total number of pageviews for the property."
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${id} ;;
    value_format_name: formatted_number
    drill_fields: [ga_sessions.visit_start_date, unique_page_count, time_on_page.average_time_on_page]
    filters: {
      field: type
      value: "PAGE"
    }
  }

  measure: unique_page_count {
    group_label: "Pages"
    label: "Unique Pageviews"
    description: "Unique Pageviews are the number of sessions during which the specified page was viewed at least once. A unique pageview is counted for each page URL + page title combination."
    type: count_distinct
    allow_approximate_optimization: yes
    sql: CONCAT(${ga_sessions.id}, ${page_path}, ${page_title});;
    value_format_name: formatted_number
    drill_fields: [event_category, event_action, event_label, event_count, unique_event_count]
    filters: {
      field: type
      value: "PAGE"
    }
  }

  measure: event_count {
    group_label: "Events"
    label: "Total Events"
    description: "The total number of web events for the event."
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${id} ;;
    value_format_name: formatted_number
    drill_fields: [event_category, event_action, event_label, event_count, unique_event_count]
    filters: {
      field: type
      value: "EVENT"
    }
  }

  measure: unique_event_count {
    group_label: "Events"
    label: "Unique Events"
    description: "Unique Events are interactions with content by a single user within a single session that can be tracked separately from pageviews or screenviews."
    type: count_distinct
    allow_approximate_optimization: yes
    sql: CONCAT(${ga_sessions.id}, COALESCE(${event_action},""), COALESCE(${event_category},""), COALESCE(${event_label},"")) ;;
    value_format_name: formatted_number
    filters: {
      field: type
      value: "EVENT"
    }
  }
}
