<!-- CSS -->
<link rel="stylesheet" href="styles.css">
<!-- Boostrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
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
  <div>
    <div class="container" id="sums">
      <h3>Συνολικός Αριθμός Επισκέψεων:</h3>
      <div id='entrycount'></div>
    </div>
    <div class="container" id="sums">
      <h3>Συνολικός Αριθμός Κρουσμάτων:</h3>
      <h5 id='infectioncount'></h5>
    </div>
    <div class="container" id="sums">
      <h4>Συνολικός Αριθμός Επισκέψεων από Ενεργά Κρούσματα:</h4>
      <h5 id='covidvisitcount'></h5>
    </div>

    <div class="container" id="ranks">
      <h4>Κατάταξη Σ.Ε με Βάση το Πλήθος των Επισκέψεων</h4>
      <table class="table">
        <tr>
          <th>Είδος Σημείου Ενδιαφέροντος</th>
          <th>Πλήθος</th>
        </tr>
        <tbody id="poivisitranking"></tbody>
      </table>
    </div>
    <div class="container" id="ranks">
      <h4>Κατάταξη Σ.Ε με Βάση τον Αριθμό Κρουσμάτων</h4>
      <table class="table">
        <tr>
          <th>Είδος Σημείου Ενδιαφέροντος</th>
          <th>Αριθμός Κρουσμάτων</th>
        </tr>
        <tbody id="poicovidranking"></tbody>
      </table>
    </div>
    <div><canvas id="myChart" ></canvas></div>
  </div>

  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
  <script type="text/javascript" src="./Scripts/EntryCount.js"></script>
  <script type="text/javascript" src="./Scripts/InfectionCount.js"></script>
  <script type="text/javascript" src="./Scripts/CovidVisitCount.js"></script>
  <script type="text/javascript" src="./Scripts/POIVisitRanking.js"></script>
  <script type="text/javascript" src="./Scripts/POICovidRanking.js"></script>
  <script type="text/javascript" src="./Scripts/AdminCharts.js"></script>
</body>

</html>