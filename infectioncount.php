<?php
// connect to db

$conn = mysqli_connect("localhost", "root", "", "web");
$results = $conn->query("SELECT COUNT(*) FROM infection;");
?>

<?php while ($infectioncount = $results->fetch_assoc()): ?>
        <h1><?php echo $infectioncount['COUNT(*)'] ?></h1>
<?php endwhile; ?>

