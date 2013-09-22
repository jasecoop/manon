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
      $li            = $("section.links ul li")
      $title         = $("section.links ul li a")
      $thumb         = $(".thumb")
      $container     = $(".container")
      $about         = $("section.about")
      $abouttxt      = $("section.about div")
      scroll         = $(window).scrollTop()

      #Measurements
      win_h = manon.win.height()
      con_w = $container.width()
      at_h  = $abouttxt.height()
      li_h  = $li.height()


      #Functions
      sizeAbout = ->
        $about.height(win_h)
        $abouttxt.css('padding-top', win_h/2 + 'px')
        $abouttxt.css('margin-top', '-' + at_h/2 + 'px')


      $("section.links ul li a").hover (->
        $(this).next('.thumb').fadeIn(500)
      ), ->
        $(this).next('.thumb').fadeOut(500)

      if $(window).width() > 480
        sizeAbout()
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