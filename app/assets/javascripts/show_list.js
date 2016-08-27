$(function() {
  
  $("input.list-item-checkbox").change(function(){
    $(this).parent().toggleClass("item-purchased");
  });

});


