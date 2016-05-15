$(document).ready(->
  show_tab()
  $('.dropdown a').on('click', (e)->
    e.preventDefault()
    url = $(@).attr('href')
    show_tab(url)
    history.pushState(null, null, url);
  )
  $('.nav-tabs li a').on('click', (e)->
    url = $(@).attr('href')
    history.pushState(null, null, url);
  )
)

show_tab = (hash = '')->
  if (window.location.hash || hash)
    $('a[href="' + (hash || window.location.hash) + '"]').tab('show');
