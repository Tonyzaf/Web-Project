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
$sql = "SELECT poi_id,entry_time,poiname FROM entries INNER JOIN pois ON entries.poi_id = pois.id WHERE user_id = '$id' AND entry_time > current_date - INTERVAL 7 day";
$result1 = $conn->query($sql);
$count = 1;
$noresult = 0;
if ($result1->num_rows > 0) {
  while ($row1 = $result1->fetch_array()) {
    $poi_id = $row1['poi_id'];
    $entry_time = $row1['entry_time'];
    $poiname = $row1['poiname'];

    //μειων δύο ώρες
    $time = strtotime($entry_time) - (2 * 60 * 60);
    $minustwohours = date("Y-m-d H:i:s", $time);
    //συν δύο ώρες
    $time = strtotime($entry_time) + (2 * 60 * 60);
    $plustwohours = date("Y-m-d H:i:s", $time);
    //πριν 7 μέρες
    $time = strtotime($entry_time . ' - 7 days');
    $lastsevendays = date('Y-m-d', $time);

    $sqls = "SELECT user_id FROM entries WHERE user_id!='$id' AND poi_id = '$poi_id' AND entry_time >= '$minustwohours' AND  entry_time <= '$plustwohours' ";
    $result2 = $conn->query($sqls);
    if ($result2->num_rows > 0) {
      while ($row2 = $result2->fetch_array()) {
        $user_id = $row2['user_id'];
        $sql = "SELECT id FROM infection WHERE infectiondate >= '$lastsevendays' AND id = '$user_id'";
        $result = $conn->query($sql); ?>
        <?php if ($result->num_rows > 0) {
          $noresult++;
          while ($row = $result->fetch_assoc()) : ?>
            <tr>
              <td><?php echo $count++ . "η" ?></td>
              <td><?php echo $poiname ?></td>
              <td><?php echo $entry_time  ?></td>
            </tr>
          <?php endwhile;
        }
      }
    }
  }
} 
if ($noresult == 0) { ?>
  <tr>
    <td><?php echo "" ?></td>
    <td><?php echo "--" ?></td>
    <td><?php echo "--" ?></td>
  </tr>
<?php } ?>