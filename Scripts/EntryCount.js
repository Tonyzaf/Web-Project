$(document).ready(function () {
    $.ajax({
        type: "GET",
        url: "entrycount.php",
        dataType: "html",
        success: function (data) {
            $("#entrycount").html(data);
        }
    });
});