dashboard_data = {
  "aman_dashboard_1" = {
    name        = "aman_dashboard_1"
    permissions = "public_read_only"
    page_name   = "dashboard_1_page_1"

    title1 = "Requests per minute"
    title2 = "Average transaction duration, by application"
    title3 = "Dashboard Note"
    row = 1
    column = 1
    width  = 6
    height = 3
    query1 = "FROM Transaction SELECT rate(count(*), 1 minute)"
    query2 = "FROM Transaction SELECT average(duration) FACET appName" 
    text = "### Helpful Links\n\n* [New Relic One](https://one.newrelic.com)\n* [Developer Portal](https://developer.newrelic.com)"
  }

  "aman_dashboard_2" = {
    name        = "aman_dashboard_2"
    permissions = "public_read_write"
    page_name   = "dashboard_2_page_1"

    title1 = "Requests per minute"
    title2 = "Average transaction duration, by application"
    title3 = "Dashboard Note"
    row = 2
    column = 4
    width  = 7
    height = 6
    query1 = "FROM Transaction SELECT rate(count(*), 5 minute)"
    query2 = "FROM Transaction SELECT average(duration) FACET appName" 
    text = "### Helpful Links\n\n* [New Relic One](https://one.newrelic.com)\n* [Developer Portal](https://developer.newrelic.com)"
  }

}
