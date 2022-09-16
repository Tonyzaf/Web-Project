<!-- Session -->
<?php
  session_start();
  if(!isset($_SESSION['username'])){
    header("Location: login.php");
  }
?>
<!-- List -->
<?php
  $conn=mysqli_connect("localhost","root","","web");
  if($conn===false){
      die("Error: could not connect : " .mysqli_connect_error());
  }

  if(isset($_POST['query']))
  {
    $Search = $_POST['query'];
    $sql = "SELECT poiname FROM pois WHERE poiname LIKE '$Search%'";
    $result = mysqli_query($conn, $sql);

    if ($result->num_rows>0)
      while($row = $result->fetch_assoc()){
          echo "<a href='#' class='list-group-item' style='background:#45a29e'>".$row['poiname']."</a>";
      }
    else{
      echo '<p class="list-group-item">Δεν βρέθηκε κάποιο αποτέλεσμα... Δοκιμάστε ξανά!</p>';
    }
  } 

?>