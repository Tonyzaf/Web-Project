$(document).ready(function () {
    $.ajax({
        type: "GET",
        url: "poicovidranking.php",
        dataType: "html",
        success: function (data) {
            $("#poicovidranking").html(data);
        }
    });
});