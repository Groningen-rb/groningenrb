$ ->
  btn_s = $('.attends.state')
  btn_a = $('.attends.action')
  
  btn_s.on 'mouseover', (e) ->
    btn_s.hide()
    btn_a.show()
  
  btn_a.on 'mouseout', (e) ->
    btn_a.hide()
    btn_s.show()