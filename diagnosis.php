<?php
session_start();
if (!isset($_SESSION['username'])) {
  header("Location: login.php");
}
$conn = mysqli_connect("localhost", "root", "", "web");
if ($conn === false) {
  die("Error: could not connect : " . mysqli_connect_error());
}

$id = $_SESSION['id'];
$sql = "SELECT infectiondate FROM infection WHERE id='$id'";
$result = $conn->query($sql);
$count = 1;
?>
<?php if ($result->num_rows > 0) {
  while ($row = $result->fetch_assoc()) : ?>
    <tr>
      <td><?php echo $count++ . "η" ?></td>
      <td><?php echo $row['infectiondate'] ?></td>
    </tr>

  <?php endwhile;
} else if ($result->num_rows == 0) { ?>
  <tr>
    <td><?php echo "--" ?></td>
    <td><?php echo "--" ?></td>
  </tr>
<?php } ?>
