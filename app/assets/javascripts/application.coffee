#= require rails-ujs
#= require jquery2
#= require jquery-ui/widgets/sortable
#= require jquery-tablesorter

#= require turbolinks

#= require_tree .



$(document).on 'turbolinks:load', ->
  # Tablesorter
  $('.tablesorter').tablesorter({widgets: ['zebra']})


