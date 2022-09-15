function clear(){
    alert("iamworking");
   // $("button").click(function(){
    document.getElementById('search').value = '';
   // });
};

function results() {
    var Search = $('#search').val();
    if (Search != "") {
        $.ajax({
            url: "map.php",
            type: "GET",
            dataType: 'json',
            data: { query: Search },
            success: function (json) {
                markers.clearLayers();
                for (i = 0; i < json.length; i++) {
                    id = json[i].id;
                    one = parseInt(json[i].inonehour);
                    two = parseInt(json[i].intwohours);
                    let pop = (one + two) * 0.5;
                    if (pop <= 32) {
                        var marker = L.marker([json[i].lat, json[i].lng], { icon: green });
                    }
                    else if (pop <= 65) {
                        var marker = L.marker([json[i].lat, json[i].lng], { icon: orange });
                    }
                    else {
                        var marker = L.marker([json[i].lat, json[i].lng], { icon: red });
                    }

                    userposition = usermarker.getLatLng();
                    
                    if(userposition.distanceTo(marker.getLatLng()) <= 5000)
                        marker.addTo(markers);
                    // να βαλω 20
                    if(userposition.distanceTo(marker.getLatLng()) <= 2000)
                        marker.bindPopup("<center> <b> " + json[i].name + "</b> <br>Σε 1 ώρα αναμένονται: " + json[i].inonehour + " άτομα " + "<br>Σε 2 ώρες αναμένονται: "+ json[i].intwohours + " άτομα " +"<br>"+ "Επισκέπτες κατά πρόσεγγιση τώρα: " +  json[i].lasttwohours + " άτομα " + "<br> <br>" + "Αν θέλετε σημειώστε πόσα άτομα εκτιμάτε πως βρίσκονται αυτή τη στιγμή στο σημείο:" + "<br>" + '<input type="number" id="number" min="0" oninput="this.value = Math.abs(this.value)">' + "<br>" + '<button type="button" id="submitbutton" onclick="Entry()" style="height:40px;">Καταχώρηση επίσκεψης</button>' + "</center>").openPopup();
                    else
                        marker.bindPopup("<center> <b> " + json[i].name + "</b> <br>Σε 1 ώρα αναμένονται: " + json[i].inonehour + " άτομα" + "<br>Σε 2 ώρες αναμένονται: "+ json[i].intwohours + " άτομα " + "<br>" + "Επισκέπτες κατά πρόσεγγιση τώρα: " +  json[i].lasttwohours + " άτομα "   + "<br> <br>" + "</center>").openPopup();
                }
            },
            error: function () {
                alert("Κάτι πήγε στραβά.Προσπαθήστε ξανά.");
            }
        });
    }
}

function Entry(){
    if(confirm('Σίγουρα θέλετε να καταχωρήσετε την επισκεψή σας;')){
      $.ajax({
        url: 'entry.php',
        type: 'POST',
        data: {query1: $("#number").val(), query2 : id },
        success: function () {
            alert("Η καταγραφή σας ολοκληρώθηκε με επιτυχία!");
        },
        error: function(request, status, error) {
          alert("Κάτι πήγε στραβά.Προσπαθήστε ξανά.");
        }
      });
    }
  }