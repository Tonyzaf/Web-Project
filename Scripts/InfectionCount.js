$(document).ready(function () {
    $.ajax({
        type: "GET",
        url: "infectioncount.php",
        dataType: "html",
        success: function (data) {
            $("#infectioncount").html(data);
        }
    });
});