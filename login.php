<!-- CSS -->
<link rel="stylesheet" href="styles.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="forms.css">
<!-- Boostrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
<!-- DB connect -->
<?php      
        $conn=mysqli_connect("localhost","root","","web");
        if($conn===false){
            die("Error: could not connect : " .mysqli_connect_error());
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

    <div class='container loginform'>
        <main>
            <form action="login.php" method="post">
                <h1>Σύνδεση στο Corona Tracker</h1>
                <div>
                    <label for="username">Όνομα χρήστη:</label>
                    <input type="text" name="username" id="username"required="required" >
                </div>
                <div>
                    <label for="password">Κωδικός πρόσβασης:</label>
                    <input type="password" name="password" id="password" required="required">
                </div>
                <button class='submitbutton' type="submit">Σύνδεση</button>
                <footer>Δεν είστε μέλος; <a href="register.php" style="color:white">Εγγραφείτε εδώ!</a></footer>
                <?php
                    session_start();
                    if(isset($_SESSION['username'])){
                        header("Location: index.php");
                    }
                    if($_SERVER['REQUEST_METHOD'] == "POST" and isset($_POST['username'])){
                        $user = $_POST['username'];
                        $loginq = "SELECT password FROM users WHERE username = '$user'";
                        $result = $conn->query($loginq);
                        $tmpass = $result->fetch_array()[0] ?? '';
                        $pass = $_POST['password'];
                        $loginq = "SELECT isadmin FROM users WHERE username = '$user'";
                        $result = $conn->query($loginq);
                        $isadmin = $result->fetch_array()[0] ?? '';
                        $loginq = "SELECT id FROM users WHERE username = '$user'";
                        $result = $conn->query($loginq);
                        $id = $result->fetch_array()[0] ?? '';
                        if ($tmpass === $pass){
                            $_SESSION['username'] = $_POST['username'];
                            $_SESSION['password'] = $pass;
                            $_SESSION['isadmin'] = $isadmin;

                            $_SESSION['id'] = $id;

                            if(!$isadmin)
                                header("refresh:0;url=index.php");
                            else if ($isadmin)
                                header("refresh:0;url=adminindex.php");
                        }
                        else
                            echo "Ο συνδιασμός ονόματος χρήστη και κωδικού που εισάγατε είναι λανθασμένος.";
                    }
                ?>
            </form>
        </main>
    </div>

</body>

</html>