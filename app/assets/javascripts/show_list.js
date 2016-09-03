$(function() {
  
  $(".edit-mode-btn").on('click', function(e) {
    e.stopImmediatePropagation();
    e.preventDefault();

    $(".show-in-edit-mode").toggle();  
  });

  $("input.list-item-checkbox").change(function(){
    $(this).parent().toggleClass("item-purchased");
  });

});


