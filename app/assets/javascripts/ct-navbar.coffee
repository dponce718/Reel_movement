

searchVisible = 0
transparent = true
hasTransparent = false
$(document).ready ->
  if $('nav[role="navigation"]').hasClass('navbar-transparent')
    hasTransparent = true
  $('[data-toggle="search"]').click ->
    if searchVisible == 0
      searchVisible = 1
      $(this).parent().addClass 'active'
      $(this).children('p').html 'Close'
      $('.navbar-search-form').fadeIn ->
        $('.navbar-search-form input').focus()
        return
    else
      searchVisible = 0
      $(this).parent().removeClass 'active'
      $(this).children('p').html 'Search'
      $(this).blur()
      $('.navbar-search-form').fadeOut ->
        $('.navbar-search-form input').blur()
        return
    return
  return
$(document).scroll ->
  if hasTransparent
    if $(this).scrollTop() > 260
      if transparent
        transparent = false
        $('nav[role="navigation"]').removeClass 'navbar-transparent'
    else
      if !transparent
        transparent = true
        $('nav[role="navigation"]').addClass 'navbar-transparent'
  return

