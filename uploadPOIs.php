<!-- CSS -->
<link rel="stylesheet" href="styles.css">
<link rel="stylesheet" href="forms.css">
<!-- Boostrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
<!-- JS -->
<script src="./Scripts/Home.js"></script>
<!-- DB connect -->
<?php
$conn = mysqli_connect("localhost", "root", "", "web");
if ($conn === false) {
    die("Error: could not connect : " . mysqli_connect_error());
}
?>
<!-- Session -->
<?php
session_start();
if (!isset($_SESSION['username']) || ($_SESSION['isadmin']) == 0) {
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
    <div class="topnav" id="myTopnav">
        <a href="adminindex.php">Στατιστικά</a>
        <a class="active" href="uploadPOIs.php">Διαχείρηση Δεδομένων</a>
        <a href="logout.php">Αποσύνδεση</a>
        <a href="javascript:void(0);" class="icon" onclick="myFunction()">
            <i class="fa fa-bars"></i>
        </a>
    </div>

    <div class='container loginform upload'>
        <main>
            <form method="post" action="processjson.php" enctype="multipart/form-data" style="background-color:  rgba(31, 40, 51, .8);color:white;">
                Επιλέξτε ένα αρχείο JSON για ανέβασμα:
                <input type="file" name="file" accept=".json" id="fileToUpload">
                <button class='uploadbutton' type="submit" name="submit" style="margin-top: 16px; background-color: #66fcf1; color:#1f2833;">Ανέβασμα Αρχείου</button>
                <button class='deletebutton' type="button" onClick='DeleteAlert()' style="background-color: red; color: white; margin-top: 16px;">Διαγραφή Δεδομένων</button>
                <?php if (isset($_GET['status'])) { ?>
                    <?php if (($_GET['status']) == 'uploadsuccess') { ?>
                        <h1 style="color: white;">Τα δεδομένα ενημερώθηκαν με επιτυχία!</h1>
                    <?php } elseif (($_GET['status']) == 'deletesuccess') { ?>
                        <h1 style="color: white;">Τα δεδομένα διαγράφηκαν με επιτυχία!</h1>
                    <?php } elseif (($_GET['status']) == 'fileexists') { ?>
                        <h1 style="color: white;">Το αρχείο έχει ήδη ανέβει στη βάση δεδομένων!</h1>
                <?php }
                } ?>
            </form>
        </main>
    </div>
</body>

</html>

<script>
    function DeleteAlert() {
        var r = confirm("Είστε σίγουροι ότι θέλετε να διαγράψετε όλα τα δεδομένα;");
        if (r == true) {
            window.location.href = "deletePOIs.php";
        }
    }
</script>