
$(document).ready ->
$("#register").bind "ajax:success", (e, data, status, xhr) ->
    if data.success
      $('.modal-body').modal('hide')
      $('.modal-body').slideToggle(1000, "easeOutBack" )
    else
      alert('failure!')