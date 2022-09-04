<?php
// connect to db

$conn = mysqli_connect("localhost", "root", "", "web");
$results = $conn->query("SELECT poitype, COUNT(*) AS total FROM poitypes INNER JOIN entries ON poitypes.id = entries.poi_id GROUP BY poitype ORDER BY COUNT(*) DESC;");

?>

<?php while ($poivisitranking = $results->fetch_assoc()) : ?>

    <tr>
        <td><?php echo $poivisitranking['poitype'] ?></td>
        <td><?php echo $poivisitranking['total'] ?></td>
    </tr>
<?php endwhile; ?>