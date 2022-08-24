$(document).ready(function(){
    var name =  $("name")
    $("button").click(function(){
      $("input:text").val(name);
    });
  });