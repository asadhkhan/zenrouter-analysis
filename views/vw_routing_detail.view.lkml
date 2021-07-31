view: vw_routing_detail {
  sql_table_name: `zenrouter.zenrouter.vw_routing_detail`
    ;;

  dimension: hour_of_day {
    type: number
    sql: ${TABLE}.hour_of_day ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension_group: submit {
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
    sql: ${TABLE}.submit_date ;;
  }

  dimension: ticket_number {
    type: number
    sql: ${TABLE}.ticket_number ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
