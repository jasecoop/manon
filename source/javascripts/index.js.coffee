show_first_link = ->
  $thumb = $('section.index ul li:first-child .thumb')

  $thumb.addClass('active')

link_hover = ->
  $link = $('.index a.title')
  $link.hover (->
    $(this).next().addClass('active')
  ), ->
    $(this).next().removeClass('active')

link_height = ->
  $link = $('.index a.title')
  win_h = $(window).height()

  $link.each ->
    $(this).css('line-height', win_h + 'px')


$ -> 
  link_hover()
  link_height()
  show_first_link()