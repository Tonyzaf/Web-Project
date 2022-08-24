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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="./Scripts/Profile.js"></script>
</head>

<!-- Main Body -->
<body class="parallax">

<!-- NavBar -->
<div class="topnav" id="myTopnav" >
  <a href="index.php">Αρχική</a>
  <a href="contacts.php">Λίστα Πιθανών Επαφών με Κρούσμα</a>
  <a href="krousma.php">Δήλωση Κρούσματος</a>
  <div class="dropdown">
    <button class="dropbtn" id="active">Το Προφίλ Μου
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a class="active" href="profile.php">Επεξεργασία Στοιχείων</a>
      <a href="diagnosishistory.php">Ιστορικό Διαγνώσεων</a>
      <a href="visithistory.php">Ιστορικό Επισκέψεων</a>
    </div>
  </div>  
  <a href="logout.php">Αποσύνδεση</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>

<!-- Info change -->
<div class="info">
  <h1> Αλλαγή στοιχείων χρήστη</h1>
  <form  method="post">
	<table>
	  <tr>
		<td>Όνομα χρήστη :</td>
		<td><input type="text" id="name" name="name" value=<?php echo $_SESSION['username']?> class = 'profile-form'></td>
	  </tr>
    <tr>
      <td>Εισάγετε τον τωρινό κωδικό πρόσβασης:</td>
		<td><input type="password" id="lastpassword" name="lastpassword" class = 'profile-form' required="required" minlength="8"></td>
	  </tr>
    <tr>
      <td>Εισάγετε τον νέο κωδικό πρόσβασης:</td>
		<td><input type="password" id="pwd1" name="newpassword" class = 'profile-form' pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*?[#?!@$%^&*-]).{8,}" required="required" minlength="8"></td>
	  </tr>
    <tr>
      <td>Επιβεβαίωση του νέου κωδικού πρόσβασης:</td>
		<td><input type="password" id="pwd2" name="checknewpassword" class = 'profile-form' pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*?[#?!@$%^&*-]).{8,}" required="required" minlength="8"></td>
	  </tr>
	</table>
    <input type="submit"id="submitbutton" onclick="checkform()">
  </form> 
  <div class="check">
    <?php
      if( isset($_POST['lastpassword']) and isset($_POST['lastpassword']) and isset($_POST['lastpassword']) ){
        $username = $_SESSION['username'];
        $newusername = $_POST['name'];
        $password = $_POST['lastpassword'];
        $check = $_POST['newpassword'];
        $pass = $_POST['checknewpassword'];  
        $sql_p = "SELECT * FROM users WHERE username = '$username' AND  NOT password = '$password' ";
        $result = mysqli_query($conn, $sql_p);
        if (mysqli_num_rows($result) != 0)
          echo "Εισάγατε λάθος κωδικό!";  
        else { 
          $sql_u = "SELECT * FROM users WHERE username='$newusername'";
          $res_u = mysqli_query($conn, $sql_u);
          if ((mysqli_num_rows($res_u) != 0) && ($username!=$newusername)) 
            echo  "Συγγνώμη...Το Username είναι πιασμένο. Δοκιμάστε Ξανά!";
          else {
            if ($check!=$pass)
              echo "Οι κωδικοί που εισάγατε διαφέρουν "; 
            $sqlq= "UPDATE users SET username = '$newusername' WHERE username = '$username' ";
            if(mysqli_query($conn,$sqlq))
              $_SESSION['username']= $newusername;
            $sqlq= "UPDATE users SET password = '$pass' WHERE username = '$newusername' ";
            if(mysqli_query($conn,$sqlq))
              echo "'Εγινε η αλλαγή";
          }
        }    	
      }
    ?>   
  </div>
</div> 

</body>
</html>