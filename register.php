<!-- CSS -->
<link rel="stylesheet" href="styles.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="forms.css">
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

<html>

<!-- Header -->

<head>
    <title>Corona Tracker</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<!-- Main Body -->

<body class="parallax">
    <div class='container registrationform'>
        <main>
            <form action="register.php" method="post">
                <h1>Εγγραφείτε στο Corona Tracker</h1>
                <div>
                    <label for="username">Όνομα χρήστη:</label>
                    <input type="text" name="username" id="username" required="required">
                </div>
                <div>
                    <label for="email">Email:</label>
                    <input type="email" name="email" id="email" required="required">
                </div>
                <div>
                    <label for="pw1">Κωδικός πρόσβασης:</label>
                    <input type="password" name="pwd1" id="pwd1" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*?[#?!@$%^&*-]).{8,}" required="required" minlength="8">
                </div>
                <div>
                    <label for="pw2">Επιβεβαίωση κωδικού πρόσβασης:</label>
                    <input type="password" name="pwd2" id="pwd2" required="required" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*?[#?!@$%^&*-]).{8,}" minlength="8">
                </div>
                <button className='submitbutton' type="submit" name="submit"  id="submit" onclick="checkform()">Εγγραφή</button>
                <footer>Είστε ήδη μέλος; <a href="login.php" style="color:white">Συνδεθείτε εδώ</a></footer>
                <?php 
                    if(isset($_POST['submit'])){
                        $username=$_POST['username'];
                        $email=$_POST['email'];
                        $password1=$_POST['pwd1'];
                        $password2=$_POST['pwd2'];
                        $sql_u = "SELECT * FROM users WHERE username='$username'";
                        $sql_e = "SELECT * FROM users WHERE email='$email'";
                        $res_u = mysqli_query($conn, $sql_u);
                        $res_e = mysqli_query($conn, $sql_e);
                        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) 
                            echo"To email δεν έχει έγκυρη μορφή";
                        else if ($password1!=$password2)
                            echo "Οι κωδικοί πρόσβασης δεν μπορούν να διαφέρουν!";
                        else if (mysqli_num_rows($res_u) != 0) 
                            echo "Συγγνώμη...Το Username είναι πιασμένο.Δοκιμάστε Ξανά!";
                        else if(mysqli_num_rows($res_e) != 0)
                            echo "Συγγνώμη...Το e-mail είναι πιασμένο.Δοκιμάστε Ξανά!";
                        else{
                            $sqlq = "INSERT INTO users (isadmin,username,email,password) VALUES ('0','$username','$email','$password1')";
                            if(mysqli_query($conn,$sqlq))
                                echo "Εγγραφήκατε Επιτυχώς!";
                        }
                    }
                ?>
            </form>
        </main>
    </div>
</body>

</html>