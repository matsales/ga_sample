- dashboard: google_analytics_overview
  title: Google Analytics Overview
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: NBVQoOH1j5Mv8c3Bh3SuIg
  elements:
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\"border: solid 3px #d4d7d8; border-radius: 5px; padding:\
      \ 15px 10px; background: #f1f0ef; height: 115px; text-align: center;\">\n\n\t\
      <div>\n\n\t\t<h4 style=\"font-size: 28px; color: #494949\">Visão Geral</h4>\n\
      \t\t<h4 style=\"font-size: 16px; color: #575757\">Visão geral de tráfego no\
      \ website</h4>\n\n\t</div>\n\n</div>"
    row: 0
    col: 0
    width: 24
    height: 3
  - title: Sessões
    name: Sessões
    model: ga_sample
    explore: ga_sessions
    type: single_value
    fields: [ga_sessions.visits_total, ga_sessions.percent_new_sessions]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#ffffff"
    comparison_label: Novas Sessões
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#81007f",
        font_color: "#FFFFFF", color_application: {collection_id: adoption, palette_id: adoption-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Date: ga_sessions.date
    row: 3
    col: 1
    width: 7
    height: 4
  - title: Rejeição
    name: Rejeição
    model: ga_sample
    explore: ga_sessions
    type: single_value
    fields: [ga_sessions.bounces_total, ga_sessions.bounce_rate]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#ffffff"
    comparison_label: Taxa de Rejeição
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#f8931f",
        font_color: "#ffffff", color_application: {collection_id: adoption, palette_id: adoption-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Date: ga_sessions.date
    row: 3
    col: 8
    width: 8
    height: 4
  - title: Duração Média da Sessão
    name: Duração Média da Sessão
    model: ga_sample
    explore: ga_sessions
    type: single_value
    fields: [ga_sessions.timeonsite_average_per_session]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#FFFFFF"
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#1d7d57",
        font_color: !!null '', color_application: {collection_id: adoption, palette_id: adoption-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      Date: ga_sessions.date
    row: 3
    col: 16
    width: 7
    height: 4
  - title: Tráfego
    name: Tráfego
    model: ga_sample
    explore: ga_sessions
    type: looker_column
    fields: [ga_sessions.visits_total, ga_sessions.bounce_rate, ga_sessions.timeonsite_average_per_session,
      ga_sessions.visit_start_week]
    fill_fields: [ga_sessions.visit_start_week]
    sorts: [ga_sessions.visit_start_week]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: ga_sessions.visits_total,
            id: ga_sessions.visits_total, name: Sessões}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: right, series: [{axisId: ga_sessions.bounce_rate,
            id: ga_sessions.bounce_rate, name: Taxa de Rejeição}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: ga_sessions.timeonsite_average_per_session,
            id: ga_sessions.timeonsite_average_per_session, name: Duração Média da
              Sessão}], showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Semana de início da Sessão
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    series_types:
      ga_sessions.bounce_rate: line
      ga_sessions.timeonsite_average_per_session: line
    series_colors:
      ga_sessions.visits_total: "#87519f"
      ga_sessions.bounce_rate: "#fdb64e"
      ga_sessions.timeonsite_average_per_session: "#71c055"
    series_labels:
      ga_sessions.visits_total: Sessões
      ga_sessions.bounce_rate: Taxa de Rejeição
      ga_sessions.timeonsite_average_per_session: Duração Média da Sessão
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Date: ga_sessions.date
    row: 7
    col: 1
    width: 15
    height: 10
  - title: Duração da Sessão
    name: Duração da Sessão
    model: ga_sample
    explore: ga_sessions
    type: looker_column
    fields: [ga_sessions.time_on_site_tier, ga_sessions.visits_total]
    fill_fields: [ga_sessions.time_on_site_tier]
    sorts: [ga_sessions.time_on_site_tier]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${ga_sessions.visits_total}/sum(${ga_sessions.visits_total})",
        label: "% of Total Sessions", value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: of_total_sessions, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: of_total_sessions, id: of_total_sessions,
            name: "% of Total Sessions"}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: custom, tickDensityCustom: 9, type: linear}]
    x_axis_label: Níveis de duração da Sessão
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      of_total_sessions: "#fdb64e"
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [ga_sessions.visits_total]
    note_state: collapsed
    note_display: hover
    note_text: "% do total de sessões por duração da sessão (segundos) divididos em\
      \ níveis"
    listen:
      Date: ga_sessions.date
    row: 7
    col: 16
    width: 7
    height: 10
  - title: Usuários
    name: Usuários
    model: ga_sample
    explore: ga_sessions
    type: single_value
    fields: [ga_sessions.unique_visitors, ga_sessions.percent_returning_visitors]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#FFF"
    comparison_label: Usuários Recorrentes
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#1d7d57",
        font_color: !!null '', color_application: {collection_id: adoption, palette_id: adoption-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Date: ga_sessions.date
    row: 21
    col: 1
    width: 22
    height: 4
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\"border: solid 3px #d4d7d8; border-radius: 5px; padding:\
      \ 15px 10px; background: #f1f0ef; height: 115px; text-align: center;\">\n\n\t\
      <div>\n\n\t\t<h4 style=\"font-size: 28px; color: #494949\">Audiência</h4>\n\t\
      \t<h4 style=\"font-size: 16px; color: #575757\">Quantos estão visitando o seu\
      \ website?</h4>\n\n\t</div>\n\n</div>"
    row: 18
    col: 0
    width: 24
    height: 3
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 17
    col: 0
    width: 24
    height: 1
  - title: Sessões por Canal de Origem
    name: Sessões por Canal de Origem
    model: ga_sample
    explore: ga_sessions
    type: looker_bar
    fields: [ga_sessions.visits_total, audience_cohorts.rank, ga_sessions.audience_trait]
    pivots: [audience_cohorts.rank, ga_sessions.audience_trait]
    filters:
      ga_sessions.audience_selector: Channel
    sorts: [audience_cohorts.rank, ga_sessions.audience_trait]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: 1 - Organic Search
              - ga_sessions.visits_total, id: 1 - Organic Search - ga_sessions.visits_total,
            name: 1 - Organic Search}, {axisId: 2 - Social - ga_sessions.visits_total,
            id: 2 - Social - ga_sessions.visits_total, name: 2 - Social}, {axisId: 3
              - Direct - ga_sessions.visits_total, id: 3 - Direct - ga_sessions.visits_total,
            name: 3 - Direct}, {axisId: 4 - Referral - ga_sessions.visits_total, id: 4
              - Referral - ga_sessions.visits_total, name: 4 - Referral}, {axisId: 5
              - Paid Search - ga_sessions.visits_total, id: 5 - Paid Search - ga_sessions.visits_total,
            name: 5 - Paid Search}, {axisId: 6 - Affiliates - ga_sessions.visits_total,
            id: 6 - Affiliates - ga_sessions.visits_total, name: 6 - Affiliates},
          {axisId: 7 - Display - ga_sessions.visits_total, id: 7 - Display - ga_sessions.visits_total,
            name: 7 - Display}, {axisId: 8 - (Other) - ga_sessions.visits_total, id: 8
              - (Other) - ga_sessions.visits_total, name: 8 - (Other)}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors:
      1 - Organic Search - ga_sessions.visits_total: "#832e83"
      2 - Social - ga_sessions.visits_total: "#f8931f"
      3 - Direct - ga_sessions.visits_total: "#1d7d57"
      4 - Referral - ga_sessions.visits_total: "#4285F4"
      5 - Paid Search - ga_sessions.visits_total: "#9a6db0"
      6 - Affiliates - ga_sessions.visits_total: "#fec679"
      7 - Display - ga_sessions.visits_total: "#8ec975"
      8 - (Other) - ga_sessions.visits_total: "#40b8ea"
    label_color: ["#FFF"]
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Date: ga_sessions.date
    row: 37
    col: 1
    width: 22
    height: 6
  - name: " "
    type: text
    title_text: " "
    subtitle_text: ''
    body_text: ''
    row: 33
    col: 0
    width: 24
    height: 1
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\"border: solid 3px #d4d7d8; border-radius: 5px; padding:\
      \ 15px 10px; background: #f1f0ef; height: 115px; text-align: center;\">\n\n\t\
      <div>\n\n\t\t<h4 style=\"font-size: 28px; color: #494949\">Aquisição</h4>\n\t\
      \t<h4 style=\"font-size: 16px; color: #575757\">Como as pessoas estão encontrando\
      \ você?</h4>\n\n\t</div>\n\n</div>"
    row: 34
    col: 0
    width: 24
    height: 3
  - title: Principais Referenciadores
    name: Principais Referenciadores
    model: ga_sample
    explore: ga_sessions
    type: looker_bar
    fields: [ga_sessions.traffic_source__source, ga_sessions.visits_total]
    filters:
      ga_sessions.traffic_source__medium: referral
    sorts: [ga_sessions.visits_total desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${ga_sessions.visits_total}/sum(${ga_sessions.visits_total})",
        label: "% of Total", value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: of_total, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: !!null '', orientation: top, series: [{axisId: of_total, id: of_total,
            name: "% of Total"}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: '', orientation: bottom,
        series: [{axisId: ga_sessions.visits_total, id: ga_sessions.visits_total,
            name: Sessions}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    hidden_series: []
    font_size: 12px
    series_types: {}
    series_colors:
      ga_sessions.visits_total: "#81007f"
      of_total: "#8750a1"
    defaults_version: 1
    listen:
      Date: ga_sessions.date
    row: 43
    col: 1
    width: 11
    height: 12
  - title: Top Páginas de Destino
    name: Top Páginas de Destino
    model: ga_sample
    explore: ga_sessions
    type: looker_bar
    fields: [ga_sessions.visits_total, ga_sessions.landing_page_formatted]
    sorts: [ga_sessions.visits_total desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${ga_sessions.visits_total}/sum(${ga_sessions.visits_total})",
        label: "% of Total", value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: of_total, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: !!null '', orientation: top, series: [{axisId: of_total, id: of_total,
            name: "% of Total"}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: '', orientation: bottom,
        series: [{axisId: ga_sessions.visits_total, id: ga_sessions.visits_total,
            name: Sessions}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    hidden_series: []
    font_size: 12px
    series_types: {}
    series_colors:
      ga_sessions.visits_total: "#81007f"
      of_total: "#8750a1"
    defaults_version: 1
    listen:
      Date: ga_sessions.date
    row: 43
    col: 12
    width: 11
    height: 12
  - name: " (5)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\"border: solid 3px #d4d7d8; border-radius: 5px; padding:\
      \ 15px 10px; background: #f1f0ef; height: 115px; text-align: center;\">\n\n\t\
      <div>\n\n\t\t<h4 style=\"font-size: 28px; color: #494949\">Comportamento</h4>\n\
      \t\t<h4 style=\"font-size: 16px; color: #575757\">O que as pessoas estão fazendo\
      \ no seu website?</h4>\n\n\t</div>\n\n</div>"
    row: 56
    col: 0
    width: 24
    height: 3
  - name: " (6)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 55
    col: 0
    width: 24
    height: 1
  - title: Visualizações de Página
    name: Visualizações de Página
    model: ga_sample
    explore: ga_sessions
    type: single_value
    fields: [ga_sessions__hits.page_count, ga_sessions__hits.unique_page_count]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#FFF"
    comparison_label: Visualizações Únicas
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#f8931f",
        font_color: "#FFF", color_application: {collection_id: adoption, palette_id: adoption-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Date: ga_sessions.date
    row: 59
    col: 1
    width: 11
    height: 4
  - title: Top Páginas
    name: Top Páginas
    model: ga_sample
    explore: ga_sessions
    type: looker_bar
    fields: [ga_sessions__hits.page_path_formatted, ga_sessions__hits.page_count,
      ga_sessions__hits.unique_page_count]
    sorts: [ga_sessions__hits.page_count desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: ga_sessions__hits.page_count,
            id: ga_sessions__hits.page_count, name: Visualizações de Página}, {axisId: ga_sessions__hits.unique_page_count,
            id: ga_sessions__hits.unique_page_count, name: Visualizações Únicas}],
        showLabels: true, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types:
      ga_sessions__hits.unique_page_count: scatter
    series_colors:
      ga_sessions__hits.page_count: "#f8931f"
      ga_sessions__hits.unique_page_count: "#1d7d57"
    series_labels:
      ga_sessions__hits.page_count: Visualizações de Página
      ga_sessions__hits.unique_page_count: Visualizações Únicas
    label_color: ["#f8931f", transparent]
    defaults_version: 1
    listen:
      Date: ga_sessions.date
    row: 63
    col: 1
    width: 11
    height: 12
  - title: Top Eventos
    name: Top Eventos
    model: ga_sample
    explore: ga_sessions
    type: looker_bar
    fields: [ga_sessions__hits.full_event, ga_sessions__hits.event_count, ga_sessions__hits.unique_event_count]
    sorts: [ga_sessions__hits.event_count desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: ga_sessions__hits.event_count,
            id: ga_sessions__hits.event_count, name: Eventos}, {axisId: ga_sessions__hits.unique_event_count,
            id: ga_sessions__hits.unique_event_count, name: Eventos Únicos}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types:
      ga_sessions__hits.unique_event_count: scatter
    series_colors:
      ga_sessions__hits.event_count: "#1d7d57"
      ga_sessions__hits.unique_event_count: "#f8931f"
    series_labels:
      ga_sessions__hits.event_count: Eventos
      ga_sessions__hits.unique_event_count: Eventos Únicos
    label_color: ["#1d7d57", transparent]
    reference_lines: []
    defaults_version: 1
    listen:
      Date: ga_sessions.date
    row: 63
    col: 12
    width: 11
    height: 12
  - title: Eventos
    name: Eventos
    model: ga_sample
    explore: ga_sessions
    type: single_value
    fields: [ga_sessions__hits.event_count, ga_sessions__hits.unique_event_count]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Eventos Únicos
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#1d7d57",
        font_color: "#FFF", color_application: {collection_id: adoption, palette_id: adoption-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Date: ga_sessions.date
    row: 59
    col: 12
    width: 11
    height: 4
  - title: Sessões por Continente
    name: Sessões por Continente
    model: ga_sample
    explore: ga_sessions
    type: looker_area
    fields: [ga_sessions.visit_start_month, ga_sessions.visits_total, ga_sessions.geo_network__continent]
    pivots: [ga_sessions.geo_network__continent]
    fill_fields: [ga_sessions.visit_start_month]
    filters:
      ga_sessions.geo_network__continent: "-(not set)"
    sorts: [ga_sessions.geo_network__continent, ga_sessions.visit_start_month]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: true
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: Africa - ga_sessions.visits_total,
            id: Africa - ga_sessions.visits_total, name: Africa}, {axisId: Americas
              - ga_sessions.visits_total, id: Americas - ga_sessions.visits_total,
            name: Americas}, {axisId: Asia - ga_sessions.visits_total, id: Asia -
              ga_sessions.visits_total, name: Asia}, {axisId: Europe - ga_sessions.visits_total,
            id: Europe - ga_sessions.visits_total, name: Europe}, {axisId: Oceania
              - ga_sessions.visits_total, id: Oceania - ga_sessions.visits_total,
            name: Oceania}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '15'
    series_types: {}
    series_colors:
      Americas - ga_sessions.visits_total: "#f8931f"
      Africa - ga_sessions.visits_total: "#81007f"
      Asia - ga_sessions.visits_total: "#1d7d57"
      Europe - ga_sessions.visits_total: "#4285F4"
      Oceania - ga_sessions.visits_total: "#ec197a"
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Date: ga_sessions.date
    row: 25
    col: 1
    width: 22
    height: 8
  filters:
  - name: Date
    title: Date
    type: field_filter
    default_value: 2016/08/01 to 2017/08/02
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: ga_sample
    explore: ga_sessions
    listens_to_filters: []
    field: ga_sessions.date
