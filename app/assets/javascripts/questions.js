$(document).on('turbolinks:load', function() {
  $(".questions").hide();
  $("#0").show();
  $(".next-button").on("click", function () {
    let index = $(this).attr('question-index')
    $(`#${index}`).hide();
    $(`#${parseInt(index)+1}`).show();
  });
  
  $(".previous-button").on("click", function () {
    let index = $(this).attr('question-index')
    $(`#${index}`).hide();
    $(`#${parseInt(index)-1}`).show();
  });
  
  $(".submit-button").on("click", function () {
    $("#error").delay(5000).show();
  });
});

