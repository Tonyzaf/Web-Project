<!-- CSS -->
<link rel="stylesheet" href="styles.css">
<!-- Boostrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
<!-- JS -->
<script src="./Scripts/Home.js"></script>

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
  <a href="#contacts">Λίστα πιθανών επαφών με κρούσμα</a>
  <a href="krousma.php">Δήλωση κρούσματος</a>
  <a class="active" href="profile.php">Το Προφίλ Μου</a>
  <a href="#logout">Αποσύνδεση</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()" >
    <i class="fa fa-bars" ></i>
  </a>
</div> 

<!-- Info change -->
<div class="plaisio2">
  <h1> Αλλαγή στοιχείων χρήστη</h1>
  <form  method="post">
	<table>
	  <tr>
		<td>Όνομα χρήστη :</td>
		<td><input type="text" id="name" name="name" value="Current Name" class = 'profile-form'></td>
	  </tr>
      <tr>
        <td>Εισάγετε τον τωρινό κωδικό πρόσβασης:</td>
		<td><input type="text" id="lastpassword" name="lastpassword" class = 'profile-form'></td>
	  </tr>
      <tr>
        <td>Εισάγετε τον νέο κωδικό πρόσβασης:</td>
		<td><input type="text" id="newpassword" name="newpassword" class = 'profile-form'></td>
	  </tr>
      <tr>
        <td>Επιβεβαίωση του νέου κωδικού πρόσβασης:</td>
		<td><input type="text" id="checknewpassword" name="checknewpassword" class = 'profile-form'></td>
	  </tr>
	</table>
    <input type="submit"id="submitbutton" style="margin-left:45%;margin-top:20px;">
  </form> 
  <div class="check"style="margin-left:33%;">
    <?php
        if(isset($_POST['newpassword'])&&($_POST['checknewpassword'])){
        $check = $_POST['newpassword'];
        $pass = $_POST['checknewpassword'];
        if ($check!=$pass)
        echo "! Οι κωδικοί που εισάγατε διαφέρουν !";
        }
    ?>
  </div>
</div> 

</body>
</html>