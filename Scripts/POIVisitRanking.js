$(document).ready(function () {
    $.ajax({
        type: "GET",
        url: "poivisitranking.php",
        dataType: "html",
        success: function (data) {
            $("#poivisitranking").html(data);
        }
    });
});