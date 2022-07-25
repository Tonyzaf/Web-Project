<!-- CSS -->
<link rel="stylesheet" href="styles.css">
<!-- Boostrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
<!-- JS -->
<script src="./Scripts/Home.js"></script>

<html>

<!-- Header -->
<head>
  <title>Corona Tracker</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<!-- Main Body -->
<body class="parallax">

<!-- NavBar -->
<div class="topnav" id="myTopnav" >
  <a href="index.php">Αρχική</a>
  <a href="#contacts">Λίστα πιθανών επαφών με κρούσμα</a>
  <a class="active" href="krousma.php">Δήλωση κρούσματος</a>
  <a href="profile.php">Το Προφίλ Μου</a>
  <a href="#logout">Αποσύνδεση</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()" >
    <i class="fa fa-bars" ></i>
  </a>
</div> 

<div class="plaisio1">
  <h1> Δήλωση κρούσματος </h1>
  <form method="post" >
    <label class = 'infection' for="infection">Παρακαλώ εισάγετε ημερομηνία διάγνωσης:</label>
    <input type="date" id="infection" name="infection">
    <input type="submit"id="submitbutton">
  </form>
  <div class="check">
    <?php
      if(isset($_POST['infection'])){
        $check=strtotime($_POST['infection']);
        $today = strtotime(date("y-m-d"));
        $diff = $check-$today;
        if ($diff>0)
        echo "! Παρακαλώ εισάγετε έγκυρη ημερομηνία διάγνωσης !";
      }
    ?>
  </div> 
</div> 

</body>
</html>