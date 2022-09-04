<!-- CSS -->
<link rel="stylesheet" href="styles.css">
<link rel="stylesheet" href="forms.css">
<!-- Boostrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" crossorigin="anonymous">
<!-- JS -->
<script src="./Scripts/Home.js"></script>
<!-- DB connect -->
<?php
$conn = mysqli_connect("localhost", "root", "", "web");
if ($conn === false) {
  die("Error: could not connect : " . mysqli_connect_error());
}
?>
<!-- Session -->
<?php
session_start();
if (!isset($_SESSION['username']) || ($_SESSION['isadmin']) == 0) {
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
  <div class="topnav" id="myTopnav">
    <a class="active" href="adminindex.php">Στατιστικά</a>
    <a href="uploadPOIs.php">Διαχείρηση Δεδομένων</a>
    <a href="logout.php">Αποσύνδεση</a>
    <a href="javascript:void(0);" class="icon" onclick="myFunction()">
      <i class="fa fa-bars"></i>
    </a>
  </div>

  <!-- Visit Count -->
  <div class="container justify-content-between">
    <div class="container" style="margin-top: 150;">
      <div style="background-color: #45A29E; width: 600;">
        <h1>Συνολικός Αριθμός Επισκέψεων:</h1>
        <h1 id='entrycount'></h1>
      </div>
      <div class="container" style="margin-top: 50;">
        <div style="background-color: #45A29E; width: 400;">
          <h1>Συνολικός Αριθμός Κρουσμάτων:</h1>
          <h1 id='infectioncount'></h1>
        </div>
      </div>
      <div class="container" style="margin-top: 50;">
        <div style="background-color: #45A29E; width: 600;">
          <h1>Συνολικός Αριθμός Επισκέψεων απο Ενεργά Κρούσματα:</h1>
          <h1 id='covidvisitcount'></h1>
        </div>
        <div class="container" style="background-color: #45A29E; width: 600;">
          <h4>Κατάταξη Σ.Ε με Βάση το Πλήθος των Επισκέψεων</h4>
          <table class="table">
            <tr>
              <th>Είδος Σημείου Ενδιαφέροντος</th>
              <th>Πλήθος</th>
            </tr>
            <tbody id="poivisitranking"></tbody>
          </table>
        </div>
        <div class="container" style="background-color: #45A29E; width: 600;">
          <h4>Κατάταξη Σ.Ε με Βάση τον Αριθμό Κρουσμάτων</h4>
          <table class="table">
            <tr>
              <th>Είδος Σημείου Ενδιαφέροντος</th>
              <th>Αριθμός Κρουσμάτων</th>
            </tr>
            <tbody id="poicovidranking"></tbody>
          </table>
        </div>
      </div>

      <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
      <script type="text/javascript" src="./Scripts/EntryCount.js"></script>
      <script type="text/javascript" src="./Scripts/InfectionCount.js"></script>
      <script type="text/javascript" src="./Scripts/CovidVisitCount.js"></script>
      <script type="text/javascript" src="./Scripts/POIVisitRanking.js"></script>
      <script type="text/javascript" src="./Scripts/POICovidRanking.js"></script>

</body>

</html>