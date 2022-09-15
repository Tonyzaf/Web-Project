$(document).ready (function (){  
    $.ajax({
        url: 'contact.php',
        type: 'GET',
        dataType: 'html',
        success: function (contact) {
            $('#contact').html(contact);
        },
        error: function() {
          alert("Κάτι πήγε στραβά.Προσπαθήστε ξανά.");
        }
      });
})