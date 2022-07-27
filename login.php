<!-- CSS -->
<link rel="stylesheet" href="styles.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="forms.css">
<!-- Boostrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>

<?php
/* Database credentials. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_NAME', 'web');

/* Attempt to connect to MySQL database */
$link = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);

// Check connection
if ($link === false) {
    die("ERROR: Could not connect to DataBase. " . mysqli_connect_error());
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
                <h1>Sign In to Corona Tracker</h1>
                <div>
                    <label for="username">Username:</label>
                    <input type="text" name="username" id="username">
                </div>
                <div>
                    <label for="password">Password:</label>
                    <input type="password" name="password" id="password">
                </div>
                <button class='submitbutton' type="submit">Log In</button>
                <footer>Not Registered Yet? <a href="register.php">Click here</a></footer>
            </form>
            <?php
            session_start();
            if(isset($_SESSION['username'])){
                header("Location: index.php");
            }
            if($_SERVER['REQUEST_METHOD'] == "POST" and isset($_POST['username'])){
                $user = $_POST['username'];
                $conn=mysqli_connect("localhost","root","","web");
                $loginq = "SELECT password FROM users WHERE username = '$user'";
                $result = $conn->query($loginq);
                $tmpass = $result->fetch_array()[0] ?? '';
                $pass = $_POST['password'];
                $loginq = "SELECT isadmin FROM users WHERE username = '$user'";
                $result = $conn->query($loginq);
                $isadmin = $result->fetch_array()[0] ?? '';
                if ($tmpass === $pass){
                    $_SESSION['username'] = $_POST['username'];
                    $_SESSION['password'] = $pass;
                    $_SESSION['isadmin'] = $isadmin;
                    if($isadmin == 0)
                        header("refresh:0;url=index.php");
                    else 
                        header("refresh:0;url=adminindex.php");
                }
                else{
                    echo '<span style="color:#FFF;text-align:center;"> login failed!';
                }
            }
            ?>
        </main>
    </div>

</body>

</html>