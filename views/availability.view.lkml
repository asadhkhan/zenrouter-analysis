view: availability {
  sql_table_name: `zenrouter.availability`
    ;;

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: is_busy {
    type: yesno
    sql: ${TABLE}.IsBusy ;;
  }

  dimension: is_offline {
    type: yesno
    sql: ${TABLE}.IsOffline ;;
  }

  dimension: is_on_vacation {
    type: yesno
    sql: ${TABLE}.IsOnVacation ;;
  }

  dimension: is_ooo {
    type: yesno
    sql: ${TABLE}.IsOOO ;;
  }

  dimension: is_working_hours {
    type: yesno
    sql: ${TABLE}.IsWorkingHours ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: no_access_to_calendar {
    type: yesno
    sql: ${TABLE}.NoAccessToCalendar ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}.Reason ;;
  }

  dimension_group: time {
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
    sql: ${TABLE}.Time ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.URL ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
