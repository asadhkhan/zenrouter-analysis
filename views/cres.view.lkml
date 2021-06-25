view: cres {
  sql_table_name: `zenrouter.cres`
    ;;

  dimension: key__partition_id__project_id {
    type: string
    sql: ${TABLE}.key.partitionId.projectId ;;
    group_label: "Key Partition ID"
    group_item_label: "Project ID"
  }

  dimension: key__path {
    hidden: yes
    sql: ${TABLE}.key.path ;;
    group_label: "Key"
    group_item_label: "Path"
  }

  dimension: properties__email__exclude_from_indexes {
    type: yesno
    sql: ${TABLE}.properties.email.excludeFromIndexes ;;
    group_label: "Properties Email"
    group_item_label: "Exclude From Indexes"
  }

  dimension: properties__email__string_value {
    type: string
    sql: ${TABLE}.properties.email.stringValue ;;
    group_label: "Properties Email"
    group_item_label: "String Value"
  }

  dimension: properties__first_responder_days__entity_value__properties__even__array_value__values {
    hidden: yes
    sql: ${TABLE}.properties.first_responder_days.entityValue.properties.even.arrayValue.values ;;
    group_label: "Properties First Responder Days Entity Value Properties Even Array Value"
    group_item_label: "Values"
  }

  dimension: properties__first_responder_days__entity_value__properties__even__exclude_from_indexes {
    type: yesno
    sql: ${TABLE}.properties.first_responder_days.entityValue.properties.even.excludeFromIndexes ;;
    group_label: "Properties First Responder Days Entity Value Properties Even"
    group_item_label: "Exclude From Indexes"
  }

  dimension: properties__first_responder_days__entity_value__properties__even__null_value {
    type: string
    sql: ${TABLE}.properties.first_responder_days.entityValue.properties.even.nullValue ;;
    group_label: "Properties First Responder Days Entity Value Properties Even"
    group_item_label: "Null Value"
  }

  dimension: properties__first_responder_days__entity_value__properties__odd__array_value__values {
    hidden: yes
    sql: ${TABLE}.properties.first_responder_days.entityValue.properties.odd.arrayValue.values ;;
    group_label: "Properties First Responder Days Entity Value Properties Odd Array Value"
    group_item_label: "Values"
  }

  dimension: properties__first_responder_days__entity_value__properties__odd__exclude_from_indexes {
    type: yesno
    sql: ${TABLE}.properties.first_responder_days.entityValue.properties.odd.excludeFromIndexes ;;
    group_label: "Properties First Responder Days Entity Value Properties Odd"
    group_item_label: "Exclude From Indexes"
  }

  dimension: properties__first_responder_days__entity_value__properties__odd__null_value {
    type: string
    sql: ${TABLE}.properties.first_responder_days.entityValue.properties.odd.nullValue ;;
    group_label: "Properties First Responder Days Entity Value Properties Odd"
    group_item_label: "Null Value"
  }

  dimension: properties__first_responder_days__exclude_from_indexes {
    type: yesno
    sql: ${TABLE}.properties.first_responder_days.excludeFromIndexes ;;
    group_label: "Properties First Responder Days"
    group_item_label: "Exclude From Indexes"
  }

  dimension: properties__first_responder_days__null_value {
    type: string
    sql: ${TABLE}.properties.first_responder_days.nullValue ;;
    group_label: "Properties First Responder Days"
    group_item_label: "Null Value"
  }

  dimension: properties__id__exclude_from_indexes {
    type: yesno
    sql: ${TABLE}.properties.ID.excludeFromIndexes ;;
    group_label: "Properties ID"
    group_item_label: "Exclude From Indexes"
  }

  dimension: properties__id__string_value {
    type: string
    sql: ${TABLE}.properties.ID.stringValue ;;
    group_label: "Properties ID"
    group_item_label: "String Value"
  }

  dimension: properties__is_available__boolean_value {
    type: yesno
    sql: ${TABLE}.properties.is_available.booleanValue ;;
    group_label: "Properties Is Available"
    group_item_label: "Boolean Value"
  }

  dimension: properties__is_available__exclude_from_indexes {
    type: yesno
    sql: ${TABLE}.properties.is_available.excludeFromIndexes ;;
    group_label: "Properties Is Available"
    group_item_label: "Exclude From Indexes"
  }

  dimension: properties__last_assigned__exclude_from_indexes {
    type: yesno
    sql: ${TABLE}.properties.last_assigned.excludeFromIndexes ;;
    group_label: "Properties Last Assigned"
    group_item_label: "Exclude From Indexes"
  }

  dimension_group: properties__last_assigned__timestamp_value {
    type: time
    description: "bq-datetime"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.properties.last_assigned.timestampValue ;;
    group_label: "Properties Last Assigned"
    group_item_label: "Timestamp Value"
  }

  dimension: properties__name__exclude_from_indexes {
    type: yesno
    sql: ${TABLE}.properties.name.excludeFromIndexes ;;
    group_label: "Properties Name"
    group_item_label: "Exclude From Indexes"
  }

  dimension: properties__name__string_value {
    type: string
    sql: ${TABLE}.properties.name.stringValue ;;
    group_label: "Properties Name"
    group_item_label: "String Value"
  }

  dimension: properties__skills__array_value__values {
    hidden: yes
    sql: ${TABLE}.properties.skills.arrayValue.values ;;
    group_label: "Properties Skills Array Value"
    group_item_label: "Values"
  }

  dimension: properties__timezone__exclude_from_indexes {
    type: yesno
    sql: ${TABLE}.properties.timezone.excludeFromIndexes ;;
    group_label: "Properties Timezone"
    group_item_label: "Exclude From Indexes"
  }

  dimension: properties__timezone__string_value {
    type: string
    sql: ${TABLE}.properties.timezone.stringValue ;;
    group_label: "Properties Timezone"
    group_item_label: "String Value"
  }

  dimension: properties__working_hours__entity_value__properties__friday__entity_value__properties__end__exclude_from_indexes {
    type: yesno
    sql: ${TABLE}.properties.working_hours.entityValue.properties.Friday.entityValue.properties.`end`.excludeFromIndexes ;;
    group_label: "Properties Working Hours Entity Value Properties Friday Entity Value Properties End"
    group_item_label: "Exclude From Indexes"
  }

  dimension: properties__working_hours__entity_value__properties__friday__entity_value__properties__end__integer_value {
    type: number
    sql: ${TABLE}.properties.working_hours.entityValue.properties.Friday.entityValue.properties.`end`.integerValue ;;
    group_label: "Properties Working Hours Entity Value Properties Friday Entity Value Properties End"
    group_item_label: "Integer Value"
  }

  dimension: properties__working_hours__entity_value__properties__friday__entity_value__properties__start__exclude_from_indexes {
    type: yesno
    sql: ${TABLE}.properties.working_hours.entityValue.properties.Friday.entityValue.properties.start.excludeFromIndexes ;;
    group_label: "Properties Working Hours Entity Value Properties Friday Entity Value Properties Start"
    group_item_label: "Exclude From Indexes"
  }

  dimension: properties__working_hours__entity_value__properties__friday__entity_value__properties__start__integer_value {
    type: number
    sql: ${TABLE}.properties.working_hours.entityValue.properties.Friday.entityValue.properties.start.integerValue ;;
    group_label: "Properties Working Hours Entity Value Properties Friday Entity Value Properties Start"
    group_item_label: "Integer Value"
  }

  dimension: properties__working_hours__entity_value__properties__friday__exclude_from_indexes {
    type: yesno
    sql: ${TABLE}.properties.working_hours.entityValue.properties.Friday.excludeFromIndexes ;;
    group_label: "Properties Working Hours Entity Value Properties Friday"
    group_item_label: "Exclude From Indexes"
  }

  dimension: properties__working_hours__entity_value__properties__monday__entity_value__properties__end__exclude_from_indexes {
    type: yesno
    sql: ${TABLE}.properties.working_hours.entityValue.properties.Monday.entityValue.properties.`end`.excludeFromIndexes ;;
    group_label: "Properties Working Hours Entity Value Properties Monday Entity Value Properties End"
    group_item_label: "Exclude From Indexes"
  }

  dimension: properties__working_hours__entity_value__properties__monday__entity_value__properties__end__integer_value {
    type: number
    sql: ${TABLE}.properties.working_hours.entityValue.properties.Monday.entityValue.properties.`end`.integerValue ;;
    group_label: "Properties Working Hours Entity Value Properties Monday Entity Value Properties End"
    group_item_label: "Integer Value"
  }

  dimension: properties__working_hours__entity_value__properties__monday__entity_value__properties__start__exclude_from_indexes {
    type: yesno
    sql: ${TABLE}.properties.working_hours.entityValue.properties.Monday.entityValue.properties.start.excludeFromIndexes ;;
    group_label: "Properties Working Hours Entity Value Properties Monday Entity Value Properties Start"
    group_item_label: "Exclude From Indexes"
  }

  dimension: properties__working_hours__entity_value__properties__monday__entity_value__properties__start__integer_value {
    type: number
    sql: ${TABLE}.properties.working_hours.entityValue.properties.Monday.entityValue.properties.start.integerValue ;;
    group_label: "Properties Working Hours Entity Value Properties Monday Entity Value Properties Start"
    group_item_label: "Integer Value"
  }

  dimension: properties__working_hours__entity_value__properties__monday__exclude_from_indexes {
    type: yesno
    sql: ${TABLE}.properties.working_hours.entityValue.properties.Monday.excludeFromIndexes ;;
    group_label: "Properties Working Hours Entity Value Properties Monday"
    group_item_label: "Exclude From Indexes"
  }

  dimension: properties__working_hours__entity_value__properties__sunday__entity_value__properties__end__exclude_from_indexes {
    type: yesno
    sql: ${TABLE}.properties.working_hours.entityValue.properties.Sunday.entityValue.properties.`end`.excludeFromIndexes ;;
    group_label: "Properties Working Hours Entity Value Properties Sunday Entity Value Properties End"
    group_item_label: "Exclude From Indexes"
  }

  dimension: properties__working_hours__entity_value__properties__sunday__entity_value__properties__end__integer_value {
    type: number
    sql: ${TABLE}.properties.working_hours.entityValue.properties.Sunday.entityValue.properties.`end`.integerValue ;;
    group_label: "Properties Working Hours Entity Value Properties Sunday Entity Value Properties End"
    group_item_label: "Integer Value"
  }

  dimension: properties__working_hours__entity_value__properties__sunday__entity_value__properties__start__exclude_from_indexes {
    type: yesno
    sql: ${TABLE}.properties.working_hours.entityValue.properties.Sunday.entityValue.properties.start.excludeFromIndexes ;;
    group_label: "Properties Working Hours Entity Value Properties Sunday Entity Value Properties Start"
    group_item_label: "Exclude From Indexes"
  }

  dimension: properties__working_hours__entity_value__properties__sunday__entity_value__properties__start__integer_value {
    type: number
    sql: ${TABLE}.properties.working_hours.entityValue.properties.Sunday.entityValue.properties.start.integerValue ;;
    group_label: "Properties Working Hours Entity Value Properties Sunday Entity Value Properties Start"
    group_item_label: "Integer Value"
  }

  dimension: properties__working_hours__entity_value__properties__sunday__exclude_from_indexes {
    type: yesno
    sql: ${TABLE}.properties.working_hours.entityValue.properties.Sunday.excludeFromIndexes ;;
    group_label: "Properties Working Hours Entity Value Properties Sunday"
    group_item_label: "Exclude From Indexes"
  }

  dimension: properties__working_hours__entity_value__properties__thursday__entity_value__properties__end__exclude_from_indexes {
    type: yesno
    sql: ${TABLE}.properties.working_hours.entityValue.properties.Thursday.entityValue.properties.`end`.excludeFromIndexes ;;
    group_label: "Properties Working Hours Entity Value Properties Thursday Entity Value Properties End"
    group_item_label: "Exclude From Indexes"
  }

  dimension: properties__working_hours__entity_value__properties__thursday__entity_value__properties__end__integer_value {
    type: number
    sql: ${TABLE}.properties.working_hours.entityValue.properties.Thursday.entityValue.properties.`end`.integerValue ;;
    group_label: "Properties Working Hours Entity Value Properties Thursday Entity Value Properties End"
    group_item_label: "Integer Value"
  }

  dimension: properties__working_hours__entity_value__properties__thursday__entity_value__properties__start__exclude_from_indexes {
    type: yesno
    sql: ${TABLE}.properties.working_hours.entityValue.properties.Thursday.entityValue.properties.start.excludeFromIndexes ;;
    group_label: "Properties Working Hours Entity Value Properties Thursday Entity Value Properties Start"
    group_item_label: "Exclude From Indexes"
  }

  dimension: properties__working_hours__entity_value__properties__thursday__entity_value__properties__start__integer_value {
    type: number
    sql: ${TABLE}.properties.working_hours.entityValue.properties.Thursday.entityValue.properties.start.integerValue ;;
    group_label: "Properties Working Hours Entity Value Properties Thursday Entity Value Properties Start"
    group_item_label: "Integer Value"
  }

  dimension: properties__working_hours__entity_value__properties__thursday__exclude_from_indexes {
    type: yesno
    sql: ${TABLE}.properties.working_hours.entityValue.properties.Thursday.excludeFromIndexes ;;
    group_label: "Properties Working Hours Entity Value Properties Thursday"
    group_item_label: "Exclude From Indexes"
  }

  dimension: properties__working_hours__entity_value__properties__tuesday__entity_value__properties__end__exclude_from_indexes {
    type: yesno
    sql: ${TABLE}.properties.working_hours.entityValue.properties.Tuesday.entityValue.properties.`end`.excludeFromIndexes ;;
    group_label: "Properties Working Hours Entity Value Properties Tuesday Entity Value Properties End"
    group_item_label: "Exclude From Indexes"
  }

  dimension: properties__working_hours__entity_value__properties__tuesday__entity_value__properties__end__integer_value {
    type: number
    sql: ${TABLE}.properties.working_hours.entityValue.properties.Tuesday.entityValue.properties.`end`.integerValue ;;
    group_label: "Properties Working Hours Entity Value Properties Tuesday Entity Value Properties End"
    group_item_label: "Integer Value"
  }

  dimension: properties__working_hours__entity_value__properties__tuesday__entity_value__properties__start__exclude_from_indexes {
    type: yesno
    sql: ${TABLE}.properties.working_hours.entityValue.properties.Tuesday.entityValue.properties.start.excludeFromIndexes ;;
    group_label: "Properties Working Hours Entity Value Properties Tuesday Entity Value Properties Start"
    group_item_label: "Exclude From Indexes"
  }

  dimension: properties__working_hours__entity_value__properties__tuesday__entity_value__properties__start__integer_value {
    type: number
    sql: ${TABLE}.properties.working_hours.entityValue.properties.Tuesday.entityValue.properties.start.integerValue ;;
    group_label: "Properties Working Hours Entity Value Properties Tuesday Entity Value Properties Start"
    group_item_label: "Integer Value"
  }

  dimension: properties__working_hours__entity_value__properties__tuesday__exclude_from_indexes {
    type: yesno
    sql: ${TABLE}.properties.working_hours.entityValue.properties.Tuesday.excludeFromIndexes ;;
    group_label: "Properties Working Hours Entity Value Properties Tuesday"
    group_item_label: "Exclude From Indexes"
  }

  dimension: properties__working_hours__entity_value__properties__wednesday__entity_value__properties__end__exclude_from_indexes {
    type: yesno
    sql: ${TABLE}.properties.working_hours.entityValue.properties.Wednesday.entityValue.properties.`end`.excludeFromIndexes ;;
    group_label: "Properties Working Hours Entity Value Properties Wednesday Entity Value Properties End"
    group_item_label: "Exclude From Indexes"
  }

  dimension: properties__working_hours__entity_value__properties__wednesday__entity_value__properties__end__integer_value {
    type: number
    sql: ${TABLE}.properties.working_hours.entityValue.properties.Wednesday.entityValue.properties.`end`.integerValue ;;
    group_label: "Properties Working Hours Entity Value Properties Wednesday Entity Value Properties End"
    group_item_label: "Integer Value"
  }

  dimension: properties__working_hours__entity_value__properties__wednesday__entity_value__properties__start__exclude_from_indexes {
    type: yesno
    sql: ${TABLE}.properties.working_hours.entityValue.properties.Wednesday.entityValue.properties.start.excludeFromIndexes ;;
    group_label: "Properties Working Hours Entity Value Properties Wednesday Entity Value Properties Start"
    group_item_label: "Exclude From Indexes"
  }

  dimension: properties__working_hours__entity_value__properties__wednesday__entity_value__properties__start__integer_value {
    type: number
    sql: ${TABLE}.properties.working_hours.entityValue.properties.Wednesday.entityValue.properties.start.integerValue ;;
    group_label: "Properties Working Hours Entity Value Properties Wednesday Entity Value Properties Start"
    group_item_label: "Integer Value"
  }

  dimension: properties__working_hours__entity_value__properties__wednesday__exclude_from_indexes {
    type: yesno
    sql: ${TABLE}.properties.working_hours.entityValue.properties.Wednesday.excludeFromIndexes ;;
    group_label: "Properties Working Hours Entity Value Properties Wednesday"
    group_item_label: "Exclude From Indexes"
  }

  dimension: properties__working_hours__exclude_from_indexes {
    type: yesno
    sql: ${TABLE}.properties.working_hours.excludeFromIndexes ;;
    group_label: "Properties Working Hours"
    group_item_label: "Exclude From Indexes"
  }

  dimension: properties__working_hours__null_value {
    type: string
    sql: ${TABLE}.properties.working_hours.nullValue ;;
    group_label: "Properties Working Hours"
    group_item_label: "Null Value"
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: cres__key__path {
  dimension: kind {
    type: string
    sql: ${TABLE}.kind ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
}

view: cres__properties__skills__array_value__values {
  dimension: exclude_from_indexes {
    type: yesno
    sql: ${TABLE}.excludeFromIndexes ;;
  }

  dimension: string_value {
    type: string
    sql: ${TABLE}.stringValue ;;
  }
}

view: cres__properties__first_responder_days__entity_value__properties__odd__array_value__values {
  dimension: exclude_from_indexes {
    type: yesno
    sql: ${TABLE}.excludeFromIndexes ;;
  }

  dimension: string_value {
    type: string
    sql: ${TABLE}.stringValue ;;
  }
}

view: cres__properties__first_responder_days__entity_value__properties__even__array_value__values {
  dimension: exclude_from_indexes {
    type: yesno
    sql: ${TABLE}.excludeFromIndexes ;;
  }

  dimension: string_value {
    type: string
    sql: ${TABLE}.stringValue ;;
  }
}
