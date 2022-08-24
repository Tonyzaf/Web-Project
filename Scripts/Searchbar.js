//Autocomplete
$(document).ready(function()
{
    $('#search').keyup(function()
    {
        var Search = $('#search').val();
        if (Search!="")
        {
            $.ajax({
                url: 'searchbar.php',
                method: 'POST',
                data: {query:Search},
                success:function(response) {
                    $('#content').html(response);
                }
            })
        }
        else
            $('#content').html('');
        $(document).on('click','a', function(){
            $('#search').val($(this).text());
            $('#content').html('');
        })
    })
});