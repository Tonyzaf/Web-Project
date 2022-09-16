<?php
// connect to db

$conn = mysqli_connect("localhost", "root", "", "web");
$results = $conn->query("SELECT poitype, COUNT(*) AS total FROM poitypes INNER JOIN entries ON poitypes.id = entries.poi_id INNER JOIN infection ON entries.user_id = infection.id
WHERE TIMESTAMPDIFF(day,infection.infectiondate,DATE(entries.entry_time)) >= (-7) AND TIMESTAMPDIFF(day,infection.infectiondate,DATE(entries.entry_time)) <= 14 GROUP BY poitype ORDER BY COUNT(*) DESC");

?>

<?php while ($poicovidranking = $results->fetch_assoc()) : ?>

    <tr>
        <td><?php echo $poicovidranking['poitype'] ?></td>
        <td><?php echo $poicovidranking['total'] ?></td>
    </tr>
<?php endwhile; ?>