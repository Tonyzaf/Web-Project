<!-- CSS -->
<link rel="stylesheet" href="styles.css">
<!-- Boostrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
<!-- JS -->
<script src="./Scripts/Home.js"></script>
<!-- DB connect -->
<?php      
        $conn=mysqli_connect("localhost","root","","web");
        if($conn===false){
            die("Error: could not connect : " .mysqli_connect_error());
        }
?>
<!-- Session -->
<?php
  session_start();
  if(!isset($_SESSION['username'])){
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
<div class="topnav" id="myTopnav" >
  <a href="index.php">Αρχική</a>
  <a href="contacts.php">Λίστα Πιθανών Επαφών με Κρούσμα</a>
  <a class="active" href="krousma.php">Δήλωση Κρούσματος</a>
  <div class="dropdown">
    <button class="dropbtn">Το Προφίλ Μου
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="profile.php">Επεξεργασία Στοιχείων</a>
      <a href="diagnosishistory.php">Ιστορικό Διαγνώσεων</a>
      <a href="visithistory.php">Ιστορικό Επισκέψεων</a>
    </div>
  </div>  
  <a href="logout.php">Αποσύνδεση</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>

<div class="plaisio1">
  <h1> Δήλωση κρούσματος </h1>
  <form method="post" >
    <label class = 'infection' for="infection">Παρακαλώ εισάγετε ημερομηνία διάγνωσης:</label>
    <input type="date" id="infection" name="infection">
    <input type="submit"id="submitbutton">
  </form>

  <div class="check">
    <?php
      if(isset($_POST['infection'])){
        date_default_timezone_set("Europe/Athens");
        $id = $_SESSION['id'];
        $check=strtotime($_POST['infection']);
        $today = strtotime(date("y-m-d"));
        $diff = $check-$today;
        $sql="SELECT infectiondate FROM infection WHERE id='$id' ORDER BY infectiondate DESC LIMIT 1";
        $result = mysqli_query($conn, $sql);
        $res=$result->fetch_array()[0] ?? '';
        $date1=date_create($res);
        $date2=date_create($_POST['infection']);
        $interval=date_diff($date1,$date2);
        $test=$interval->format('%R%a');
        $dif=(int)$test;
        if (empty($check))
          echo " Παρακαλώ εισάγετε ημερομηνία ";
        else if($diff>0)
          echo " Παρακαλώ εισάγετε έγκυρη ημερομηνία διάγνωσης ";
        else if($dif<=14 && $dif>0)
          echo " Πρέπει να παρέλθουν τουλάχιστον 14 ημέρες για εκ νέου δήλωση ";
        else if ($dif==0 && $res!=0)
          echo" Η ημερομηνία αυτή έχει ήδη δηλωθεί ";
        else if ($dif<0 && $res!=0)
          echo" Υπάρχει πιο πρόσφατη δήλωση νόσησης ";
        else {
          $date=$_POST['infection'];
          $sql="INSERT INTO infection (id,infectiondate) VALUES ('$id','$date') ";
          if (mysqli_query($conn, $sql)) {
            echo "Η ημερομηνία καταχωρήθηκε επιτυχώς";
          } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
          }
        }
      }
    ?>
  </div> 
</div> 

</body>
</html>