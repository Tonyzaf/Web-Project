$(document).ready (function (){  
    $.ajax({
        url: 'diagnosis.php',
        type: 'GET',
        dataType: 'html',
        success: function (diagnosis) {
            $('#diagnosis').html(diagnosis);
        },
        error: function(request, status, error) {
          alert("Κάτι πήγε στραβά.Προσπαθήστε ξανά.");
        }
      });
})