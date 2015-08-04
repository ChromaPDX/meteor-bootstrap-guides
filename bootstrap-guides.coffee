toggledisplay = (elementID) ->
  ((style) ->
    style.display = if style.display == 'block' then 'none' else 'block'
  )(document.getElementById("bsg-layer").style)

# toggleGuides = ->
#   $elem = $("#bsg-layer")
#   $elem.css("display", $elem.css("display") == 'none' ? '' : 'none')
#   console.log('toggle guides: ', $elem.css("display"))

$(document).ready ->
  console.log('ctl+g to show bootstrap guides')
  Session.set('qcolumns', 1)
  $(document).keydown (e) ->
    if e.ctrlKey
      if e.keyCode == 71        # 'g'
        toggledisplay()

evenGrids = [
    [12],
    [12],
    [6,6],
    [4,4,4],
    [3,3,3,3],
    [5,4,3],
    [2,2,2,2,2,2],
    [7,5],
    [8,4],
    [9,3],
    [10,2],
    [11,1],
    [1,1,1,1,1,1,1,1,1,1,1,1]
  ]

Template.bootstrapGuides.events
  'keyup .bsg-quick-div': (e,t) ->
    $input = $('.bsg-quick-div')
    qcolumns = parseInt($input.val())
    if qcolumns <= 12 && qcolumns > 0
      Session.set('qcolumns', qcolumns)

  'click #bsg-fluid-button': (e,t) ->
    $('#bsg-container-type').toggleClass 'container container-fluid'
    $btn = $('#bsg-fluid-button')
    if $btn.text() == 'container'
      $btn.text 'container-fluid'
    else
      $btn.text 'container'
    return

  'click #bsg-hide-button': (e,t) ->
    toggledisplay()

Template.bootstrapGuides.helpers
  qcolumnClass: (size) ->
    cssClass = ''
    _.each(['col-lg-','col-xs-'], (wClass)->
      cssClass += wClass + size + ' ';
    )
    return cssClass
  qcolumns: ->
    qcolumns = Session.get('qcolumns') || 1
    return evenGrids[qcolumns]
