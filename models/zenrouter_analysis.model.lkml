connection: "zenrouter"

# include all the views
include: "/views/**/*.view"

datagroup: zenrouter_analysis_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: zenrouter_analysis_default_datagroup

explore: availability {
  join: routing_detail {
    sql_on: ${availability.name} = ${routing_detail.agent_name}  ;;
    relationship: one_to_many
    type: left_outer # Could be excluded since left_outer is the default
  }
}

explore: availability_count {}

explore: cres {
  join: cres__key__path {
    view_label: "Cres: Key Path"
    sql: LEFT JOIN UNNEST(${cres.key__path}) as cres__key__path ;;
    relationship: one_to_many
  }

  join: cres__properties__skills__array_value__values {
    view_label: "Cres: Properties Skills Arrayvalue Values"
    sql: LEFT JOIN UNNEST(${cres.properties__skills__array_value__values}) as cres__properties__skills__array_value__values ;;
    relationship: one_to_many
  }

  join: cres__properties__first_responder_days__entity_value__properties__odd__array_value__values {
    view_label: "Cres: Properties First Responder Days Entityvalue Properties Odd Arrayvalue Values"
    sql: LEFT JOIN UNNEST(${cres.properties__first_responder_days__entity_value__properties__odd__array_value__values}) as cres__properties__first_responder_days__entity_value__properties__odd__array_value__values ;;
    relationship: one_to_many
  }

  join: cres__properties__first_responder_days__entity_value__properties__even__array_value__values {
    view_label: "Cres: Properties First Responder Days Entityvalue Properties Even Arrayvalue Values"
    sql: LEFT JOIN UNNEST(${cres.properties__first_responder_days__entity_value__properties__even__array_value__values}) as cres__properties__first_responder_days__entity_value__properties__even__array_value__values ;;
    relationship: one_to_many
  }
}

explore: routing_detail {
  always_filter: {
    filters: [was_assigned: "yes"]
  }
  join: routing_detail__ticket_tags {
    view_label: "Routing Detail: Ticket Tags"
    sql: LEFT JOIN UNNEST(${routing_detail.ticket_tags}) as routing_detail__ticket_tags ;;
    relationship: one_to_many
  }
}

explore: online_offline_analysis{
  join: routing_detail {
    sql_on: ${online_offline_analysis.name} = ${routing_detail.agent_name}  ;;
    relationship: one_to_many
    type: left_outer # Could be excluded since left_outer is the default
  }
}
