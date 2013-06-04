$(document).ready(function() {
  $("#fill").on("keyup",function(e){
    $.ajax({
      url: '/',
      type: 'post',
      data: $(this).serialize()
    }).done(function(response){
      $('#answers').html(response);
    });
  });
});
