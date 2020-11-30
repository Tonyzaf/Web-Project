<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate"/>
<meta http-equiv="Pragma" content="no-cache"/>
<meta http-equiv="Expires" content="0"/>
<html>
    <link rel="stylesheet" href="login.css">
    <header>
        <title>Web Project Pre-Alpha</title>
    </header>
    <div class="login">
        <h1>Συνδεθείτε Εδώ</h1>
            <form action="index.php" method="post">
            <input type="text" name="user" placeholder="Username" required="required" />
                <input type="password" name="pass" placeholder="Password" required="required" />
                <button type="submit" class="btn btn-primary btn-block btn-large">Βάλε Με Μέσα</button>
            </form>
            <h5 style="color:white;font-family:verdana;">Δεν έχετε λογαριασμό;Εγγραφείτε <a href="register.php" style="color:white;font-family:verdana;">Εδώ</a>.</h5>
            <h5 style="color:white;font-family:verdana;"><a href="forgot_pass.php" style="color:white;font-family:verdana;">Ξεχάσατε τον κωδικό σας;</a></h5>
    </div>
    <div class="forgotpass">
    </div>
</html>