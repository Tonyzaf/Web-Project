$(document).ready (function (){  
    $.ajax({
        url: 'visit.php',
        type: 'GET',
        dataType: 'html',
        success: function (visit) {
            $('#visit').html(visit);
        },
        error: function(request, status, error) {
          alert("Κάτι πήγε στραβά.Προσπαθήστε ξανά.");
        }
      });
})