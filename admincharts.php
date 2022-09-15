<?php
// connect to db

$host = "localhost";
$user = "root";
$password = "";
$database = "web";
$conn = mysqli_connect($host, $user, $password, $database);
$results = $conn->query("");
?>

<?php while ($admincharts = $results->fetch_assoc()) : ?>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
    <div><canvas id="myChart"></canvas></div>
<?php endwhile; ?>