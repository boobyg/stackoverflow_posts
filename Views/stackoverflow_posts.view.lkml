view: stackoverflow_posts {
  derived_table: {
    sql: SELECT * FROM `bigquery-public-data.stackoverflow.stackoverflow_posts` LIMIT 1000
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: body {
    type: string
    sql: ${TABLE}.body ;;
  }

  dimension: accepted_answer_id {
    type: number
    sql: ${TABLE}.accepted_answer_id ;;
  }

  dimension: answer_count {
    type: number
    sql: ${TABLE}.answer_count ;;
  }

  dimension: comment_count {
    type: number
    sql: ${TABLE}.comment_count ;;
  }

  dimension_group: community_owned_date {
    type: time
    sql: ${TABLE}.community_owned_date ;;
  }

  dimension_group: creation_date {
    type: time
    sql: ${TABLE}.creation_date ;;
  }

  dimension: favorite_count {
    type: number
    sql: ${TABLE}.favorite_count ;;
  }

  dimension_group: last_activity_date {
    type: time
    sql: ${TABLE}.last_activity_date ;;
  }

  dimension_group: last_edit_date {
    type: time
    sql: ${TABLE}.last_edit_date ;;
  }

  dimension: last_editor_display_name {
    type: string
    sql: ${TABLE}.last_editor_display_name ;;
  }

  dimension: last_editor_user_id {
    type: number
    sql: ${TABLE}.last_editor_user_id ;;
  }

  dimension: owner_display_name {
    type: string
    sql: ${TABLE}.owner_display_name ;;
  }

  dimension: owner_user_id {
    type: number
    sql: ${TABLE}.owner_user_id ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }

  dimension: post_type_id {
    type: number
    sql: ${TABLE}.post_type_id ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: view_count {
    type: number
    sql: ${TABLE}.view_count ;;
  }

  set: detail {
    fields: [
      id,
      title,
      body,
      accepted_answer_id,
      answer_count,
      comment_count,
      community_owned_date_time,
      creation_date_time,
      favorite_count,
      last_activity_date_time,
      last_edit_date_time,
      last_editor_display_name,
      last_editor_user_id,
      owner_display_name,
      owner_user_id,
      parent_id,
      post_type_id,
      score,
      tags,
      view_count
    ]
  }
}
