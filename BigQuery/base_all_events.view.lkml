view: base_all_events {
  derived_table: {
    sql_trigger_value: SELECT COUNT(*) FROM main_production.all_events;;
    sql: (SELECT * FROM main_production.all_events
         WHERE time > CURRENT_DATE - INTERVAL '90 days')
      ;;
  }

}
