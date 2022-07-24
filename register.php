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
    <main>
        <form action="register.php" method="post">
            <h1>Sign Up to Corona Tracker</h1>
            <div>
                <label for="username">Username:</label>
                <input type="text" name="username" id="username">
            </div>
            <div>
                <label for="email">Email:</label>
                <input type="email" name="email" id="email">
            </div>
            <div>
                <label for="firstname">First Name:</label>
                <input type="firstname" name="firstname" id="firstname">
            </div>
            <div>
                <label for="lastname">Last Name:</label>
                <input type="lastname" name="lastname" id="lastname">
            </div>
            <div>
                <label for="password">Password:</label>
                <input type="password" name="password" id="password">
            </div>
            <div>
                <label for="password2">Confirm Password:</label>
                <input type="password" name="password2" id="password2">
            </div>
            <div>
                <label for="agree">
                    <input type="checkbox" name="agree" id="agree" value="yes" /> I agree
                    with the
                    <a href="#" title="term of services">term of services</a>
                </label>
            </div>
            <button className = 'submitbutton' type="submit">Register</button>
            <footer>Already a member? <a href="login.php">Login here</a></footer>
        </form>
    </main>

</body>

</html>