connection: "looker__ilooker"

# include all the views
include: "/Views/**/*.view"

datagroup: stackoverflow_posts_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: stackoverflow_posts_default_datagroup
