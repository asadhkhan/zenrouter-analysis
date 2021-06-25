view: routing_detail {
  sql_table_name: `zenrouter.routing_detail`
    ;;

  dimension: agent_email {
    type: string
    sql: ${TABLE}.agent_email ;;
  }

  dimension: agent_name {
    type: string
    sql: ${TABLE}.agent_name ;;
  }

  dimension: au_nz_score {
    type: number
    sql: ${TABLE}.au_nz_score ;;
  }

  dimension: end_of_day_score {
    type: number
    sql: ${TABLE}.end_of_day_score ;;
  }

  dimension: explaination {
    type: string
    sql: ${TABLE}.explaination ;;
  }

  dimension: follow_the_sun_score {
    type: number
    sql: ${TABLE}.follow_the_sun_score ;;
  }

  dimension: is_busy_score {
    type: number
    sql: ${TABLE}.is_busy_score ;;
  }

  dimension: is_first_responder {
    type: yesno
    sql: ${TABLE}.is_first_responder ;;
  }

  dimension: is_first_responder_score {
    type: number
    sql: ${TABLE}.is_first_responder_score ;;
  }

  dimension: is_out_of_office_score {
    type: number
    sql: ${TABLE}.is_out_of_office_score ;;
  }

  dimension: local_attention_score {
    type: number
    sql: ${TABLE}.local_attention_score ;;
  }

  dimension: open_ticket_score {
    type: number
    sql: ${TABLE}.open_ticket_score ;;
  }

  dimension_group: submitted {
    type: time
    timeframes: [
      raw,
      time,
      hour_of_day,
      date,
      day_of_week,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.submitted_time ;;
  }

  dimension: tech_match_score {
    type: number
    sql: ${TABLE}.tech_match_score ;;
  }

  dimension: ticket_number {
    type: number
    sql: ${TABLE}.ticket_number ;;
  }

  dimension: ticket_subject {
    type: string
    sql: ${TABLE}.ticket_subject ;;
  }

  dimension: ticket_tags {
    hidden: yes
    sql: ${TABLE}.ticket_tags ;;
  }

  dimension: time_since_last_ticket {
    type: number
    sql: ${TABLE}.time_since_last_ticket ;;
  }

  dimension: too_frequest_tickets_score {
    type: number
    sql: ${TABLE}.too_frequest_tickets_score ;;
  }

  dimension: total_score {
    type: number
    sql: ${TABLE}.total_score ;;
  }

  dimension: was_assigned {
    type: yesno
    sql: ${TABLE}.was_assigned ;;
  }

  measure: count {
    type: count
    drill_fields: [agent_name]
  }
}

view: routing_detail__ticket_tags {
  dimension: routing_detail__ticket_tags {
    type: string
    sql: routing_detail__ticket_tags ;;
  }
}
