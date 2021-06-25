view: online_offline_analysis {
  sql_table_name: `zenrouter.zenrouter.vw_onlineOffline_Analysis`
    ;;

  dimension: hour_of_day {
    type: number
    sql: ${TABLE}.hour_of_day ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: total_available {
    type: number
    sql: ${TABLE}.total_available ;;
  }

  dimension: total_offline {
    type: number
    sql: ${TABLE}.total_offline ;;
  }

  dimension_group: working {
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
    sql: ${TABLE}.working_date ;;
  }

  measure: availbility {
    type: sum
    sql:  ${total_available} ;;
    drill_fields: []
  }

  measure: offline {
    type: sum
    sql:  ${total_offline} ;;
    drill_fields: []
  }

  measure: pct_offline {
    type: number
    sql:  100.0*${offline}/NULLIF(${availbility},0) ;;
    drill_fields: []
  }

  measure: pct_available {
    type: number
    sql:  100.0*(1.0 - ${offline}/NULLIF(${availbility},0)) ;;
    drill_fields: []
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
