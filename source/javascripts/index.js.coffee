((window, document, undefined_) ->

  window.Manon = (->
    _init = false
    manon = {}
    manon.init = ->
      return if _init
      _init         = true

      manon.win      = $(window)
      manon.docEl    = $(document.documentElement)
      manon.bodyEl   = $(document.body)
      $this          = $(this)
      $li            = $("section.index ul li")
      $title         = $("section.index ul li .title")
      $thumb         = $(".thumb")
      $container     = $(".container")
      scroll         = $(window).scrollTop()

      #Measurements
      win_h = manon.win.height()
      a_h   = $title.height()
      img_h = $thumb.height()
      img_w = $thumb.width()
      con_w = $container.width()
      li_h  = $li.height()


      #Functions
      measurements = ->
        # $title.fadeOut()
        $li.each ->
          $(this).css "height", win_h + 'px'
        
        $title.each ->
          title_h = (win_h/2) - (a_h/2)
          $(this).css "margin-top", title_h + "px"

        $thumb.each ->
          thumb_t  = (win_h - img_h)/2
          thumb_ml = con_w - img_w
          
          $thumb.css "top", thumb_t
          $thumb.css "margin-left", thumb_ml

        $('section.index li:nth-child(1)').addClass('active')

      activateLi = (i) ->
        $li.each ->
          $li.removeClass('active')
        $el = $('section.index li:nth-child('+i+')')
        $el.addClass('active')
      
      imgOrder = ->
        $li.each (i) ->
          if manon.win.scrollTop() > (win_h * i)-(win_h/2)
            $('.link').removeClass('active')
            $('.link-'+i).addClass('active')
          # else
          #   $(this).removeClass('active')
        # if $('li').scrollTop < 0
        #   activateLi('1')
        #   console.log('1')
        #   console.log(scroll)

        # else if scroll > win_h
        #   activateLi('2')
        #   console.log('2')

      #Events
      measurements()
      manon.win.scroll ->
        imgOrder()
    manon
  )()

  $(document).ready ->
    Manon.init()

) window, window.document

# full_size_li = ->
#   $li.each =>
#     alert('dfg')

# show_first_link = ->
#   $thumb = $('section.index ul li:first-child .thumb')

#   $thumb.addClass('active')

# link_hover = ->
#   $link = $('.index a.title')
#   $link.hover (->
#     $(this).next().addClass('active')
#   ), ->
#     $(this).next().removeClass('active')

# link_height = ->
#   $link = $('.index a.title')
#   win_h = $(window).height()

#   $link.each ->
#     $(this).css('line-height', win_h + 'px')


# $ -> 
#   # link_hover()
#   # link_height()

#   #els
#   $li = $('section.index ul li')

#   #Measurements
#   win_h = $(window).height()

#   full_size_li()
#   show_first_link()