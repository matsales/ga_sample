connection: "google_analytics_sample"

# include all the views
include: "/views/**/*.view"

datagroup: ga_sample_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ga_sample_default_datagroup

explore: ga_sessions {
  join: ga_sessions__hits {
    view_label: "Ga Sessions: Hits"
    sql: LEFT JOIN UNNEST(${ga_sessions.hits}) as ga_sessions__hits ;;
    relationship: one_to_many
  }

  join: ga_sessions__custom_dimensions {
    view_label: "Ga Sessions: Customdimensions"
    sql: LEFT JOIN UNNEST(${ga_sessions.custom_dimensions}) as ga_sessions__custom_dimensions ;;
    relationship: one_to_many
  }

  join: ga_sessions__hits__product {
    view_label: "Ga Sessions: Hits Product"
    sql: LEFT JOIN UNNEST(${ga_sessions__hits.product}) as ga_sessions__hits__product ;;
    relationship: one_to_many
  }

  join: ga_sessions__hits__promotion {
    view_label: "Ga Sessions: Hits Promotion"
    sql: LEFT JOIN UNNEST(${ga_sessions__hits.promotion}) as ga_sessions__hits__promotion ;;
    relationship: one_to_many
  }

  join: ga_sessions__hits__custom_metrics {
    view_label: "Ga Sessions: Hits Custommetrics"
    sql: LEFT JOIN UNNEST(${ga_sessions__hits.custom_metrics}) as ga_sessions__hits__custom_metrics ;;
    relationship: one_to_many
  }

  join: ga_sessions__hits__custom_variables {
    view_label: "Ga Sessions: Hits Customvariables"
    sql: LEFT JOIN UNNEST(${ga_sessions__hits.custom_variables}) as ga_sessions__hits__custom_variables ;;
    relationship: one_to_many
  }

  join: ga_sessions__hits__custom_dimensions {
    view_label: "Ga Sessions: Hits Customdimensions"
    sql: LEFT JOIN UNNEST(${ga_sessions__hits.custom_dimensions}) as ga_sessions__hits__custom_dimensions ;;
    relationship: one_to_many
  }

  join: ga_sessions__hits__experiment {
    view_label: "Ga Sessions: Hits Experiment"
    sql: LEFT JOIN UNNEST(${ga_sessions__hits.experiment}) as ga_sessions__hits__experiment ;;
    relationship: one_to_many
  }

  join: ga_sessions__hits__publisher_infos {
    view_label: "Ga Sessions: Hits Publisher Infos"
    sql: LEFT JOIN UNNEST(${ga_sessions__hits.publisher_infos}) as ga_sessions__hits__publisher_infos ;;
    relationship: one_to_many
  }

  join: ga_sessions__hits__product__custom_metrics {
    view_label: "Ga Sessions: Hits Product Custommetrics"
    sql: LEFT JOIN UNNEST(${ga_sessions__hits__product.custom_metrics}) as ga_sessions__hits__product__custom_metrics ;;
    relationship: one_to_many
  }

  join: ga_sessions__hits__product__custom_dimensions {
    view_label: "Ga Sessions: Hits Product Customdimensions"
    sql: LEFT JOIN UNNEST(${ga_sessions__hits__product.custom_dimensions}) as ga_sessions__hits__product__custom_dimensions ;;
    relationship: one_to_many
  }
}
