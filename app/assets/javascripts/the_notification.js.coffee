@TheNotification = do ->
  show_notifications: ->
    try console.log window.the_notifications

  click_for_close_init: ->
    $('.flash_msgs, .error_explanation').on 'click', ->
      $(@).slideUp(500)    
  
  init: ->
    do @click_for_close_init
    do @show_notifications