qcolumns = 3

toggleGuides = ->
  $('.vertical-guide').toggleClass 'guide-off'
  return

$('.bsg-quick-div').keyup (e) ->
$('#bsg-fluid').click ->
  $('#bsg-container-type').toggleClass 'container container-fluid'
  $btn = $('#bsg-fluid')
  if $btn.text() == 'container'
    $btn.text 'container-fluid'
  else
    $btn.text 'container'
  return

$(document).ready ->
  $(document).keydown (e) ->
    if e.ctrlKey
      if e.keyCode == 71
        # 'g'
        toggleGuides()
    return
  return

Meteor.
Template.bootstrapGuides
  qcolumnSize: ->
    12 / qcolumns
  qcolumns: ->
    out = []
    qcolumnSize = 12 / qcolumns
    i = 0
    l = numCol
    while i < l
      out.push qcolumnSize
      i++
    out
