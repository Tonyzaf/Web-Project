<?php
// connect to db

$host = "localhost";
$user = "root";
$password = "";
$database = "web";
$conn = mysqli_connect($host, $user, $password, $database);
$results = $conn->query("SELECT COUNT(*) AS total FROM entries LEFT JOIN infection ON entries.user_id = infection.id WHERE TIMESTAMPDIFF(day,infection.infectiondate,DATE(entries.entry_time)) >= (-7) AND TIMESTAMPDIFF(day,infection.infectiondate,DATE(entries.entry_time)) <= 14;");
?>

<?php while ($covidvisitcount = $results->fetch_assoc()): ?>
        <h1><?php echo $covidvisitcount['total'] ?></h1>
<?php endwhile; ?>