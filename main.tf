resource "newrelic_one_dashboard" "amandashboard" {
  for_each    = var.dashboard_data
  name        = each.value.name
  permissions = each.value.permissions

  page {
    name = each.value.page_name

    widget_billboard {
      title  = each.value.title1
      row    = each.value.row
      column = each.value.column
      width  = each.value.width
      height = each.value.height

      nrql_query {
        query = each.value.query1
      }
    }

    widget_bar {
      title  = each.value.title2
      row    = each.value.row
      column = each.value.column
      width  = each.value.width
      height = each.value.height

      nrql_query {
        account_id = 3933528
        query      = each.value.query2
      }
    }

    widget_markdown {
      title  = each.value.title3
      row    = each.value.row
      column = each.value.column
      width  = each.value.width
      height = each.value.height

      text = each.value.text
    }
  }
}