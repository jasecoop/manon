alert('dfds')

$(document).ready ->
	$("a").hover (->
		$(this).next().addClass('active')
	), ->
		$(this).next().removeClass('active')


