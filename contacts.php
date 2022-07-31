<!-- CSS -->
<link rel="stylesheet" href="styles.css">
<!-- Boostrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
<!-- JS -->
<script src="./Scripts/Home.js"></script>
<!-- DB connect -->
<?php      
        $conn=mysqli_connect("localhost","root","","web");
        if($conn===false){
            die("Error: could not connect : " .mysqli_connect_error());
        }
?>
<!-- Session -->
<?php
  session_start();
  if(!isset($_SESSION['username'])){
    header("Location: login.php");
  }
?>

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
  <a class="active" href="contacts.php">Λίστα Πιθανών Επαφών με Κρούσμα</a>
  <a href="krousma.php">Δήλωση Κρούσματος</a>
  <div class="dropdown" >
    <button class="dropbtn">Το Προφίλ Μου
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="profile.php">Επεξεργασία Στοιχείων</a>
      <a href="diagnosishistory.php">Ιστορικό Διαγνώσεων</a>
      <a href="visithistory.php">Ιστορικό Επισκέψεων</a>
    </div>
  </div>  
  <a href="logout.php">Αποσύνδεση</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>

</body>
</html>