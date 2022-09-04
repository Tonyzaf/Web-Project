<?php
// connect to db

$conn = mysqli_connect("localhost", "root", "", "web");
$results = $conn->query("SELECT COUNT(*) FROM entries;");
?>

<?php while ($entrycount = $results->fetch_assoc()): ?>
        <h1><?php echo $entrycount['COUNT(*)'] ?></h1>
<?php endwhile; ?>

