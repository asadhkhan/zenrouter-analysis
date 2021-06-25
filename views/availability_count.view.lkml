view: availability_count {
  sql_table_name: `zenrouter.availability_count`
    ;;

  dimension: count_availability_count {
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension_group: timeslice {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.timeslice ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
