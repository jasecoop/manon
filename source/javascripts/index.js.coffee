((window, document, undefined_) ->

  window.Manon = (->
    _init = false
    manon = {}
    manon.init = ->
      return if _init
      _init         = true

      $.browser = (/android|webos|iphone|ipad|ipod|blackberry|iemobile|opera mini/i.test(navigator.userAgent.toLowerCase()));
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

      if $.browser 
      else
        sizeAbout()
        $("section.links ul li a").hover (->
          $(this).next('.thumb').fadeIn(500)
        ), ->
          $(this).next('.thumb').fadeOut(500)
    manon
  )()

  $(document).ready ->
    Manon.init()

) window, window.document
