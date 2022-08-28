<?php
    $conn = mysqli_connect("localhost", "root", "", "web");
    if ($conn === false) {
        die("Error: could not connect : " . mysqli_connect_error());
    }

    $files = glob("uploads" . '/*');
    foreach ($files as $file) {
        if (is_file($file)) {
            unlink($file);
        }
    }

    $deletepois = "DELETE FROM pois";
    $deletetimes = "DELETE FROM poitimes";
    $deletetypes = "DELETE FROM poitypes";
    

    if ($conn->query($deletepois) === TRUE && $conn->query($deletetimes) === TRUE && $conn->query($deletetypes) === TRUE) {
        header('HTTP/1.1 307 Temporary Redirect');
        header('Location: uploadPOIs.php?status=deletesuccess');
    } else {
        echo $conn->error;
    }

    $conn->close();
?>