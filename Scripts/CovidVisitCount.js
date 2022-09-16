$(document).ready(function () {
    $.ajax({
        type: "GET",
        url: "covidvisitcount.php",
        dataType: "html",
        success: function (data) {
            $("#covidvisitcount").html(data);
        }
    });
});