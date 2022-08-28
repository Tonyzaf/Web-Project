<?php
$conn = mysqli_connect("localhost", "root", "", "web");
if ($conn === false) {
  die("Error: could not connect : " . mysqli_connect_error());
}

//<-- Session -->

session_start();
if (!isset($_SESSION['username']) || ($_SESSION['isadmin']) == 0) {
  header("Location: login.php");
}

$path = "Uploads/" . $_FILES["file"]["name"];

if (file_exists($path)) {
  header('HTTP/1.1 307 Temporary Redirect');
    header('Location: uploadPOIs.php?status=fileexists');
} else {
  move_uploaded_file($_FILES["file"]["tmp_name"], $path);
  $myfile = fopen($path, "r") or die("Unable to open file!");
  $jsonFile = json_decode(fread($myfile, filesize($path)), true);

  $entries = array();
  $types = array();
  $popularity = array();

  foreach ($jsonFile as $fil) {
    $id = $conn->real_escape_string($fil["id"]);
    $name = $conn->real_escape_string($fil["name"]);
    $address = $conn->real_escape_string($fil["address"]);
    $lat = $conn->real_escape_string($fil["coordinates"]["lat"]);
    $lng = $conn->real_escape_string($fil["coordinates"]["lng"]);
    $entries[] = "('$id', '$name', '$address', '$lat', '$lng')";

    foreach ($fil["types"] as $type) {
      $t = $conn->real_escape_string($type);
      $types[] = "('$id', '$t')";
    }

    foreach ($fil["populartimes"] as $time) {
      $day = $conn->real_escape_string($time["name"]);
      for ($hour = 0; $hour <= 23; $hour++) {
        $popular_time = $conn->real_escape_string($time["data"][$hour]);
        $popularity[] = "('$id', '$day', '$hour', '$popular_time')";
      }
    }
  }
  $sql = "INSERT IGNORE INTO pois (id, poiname, poiaddress, poilat, poilng) ";
  $sql .= "VALUES " . implode(', ', $entries);

  $sql_types = "INSERT IGNORE INTO poitypes (id, poitype) ";
  $sql_types .= "VALUES " . implode(', ', $types);

  $sql_popularity = "INSERT  IGNORE INTO poitimes (id, day, hour, popularity) ";
  $sql_popularity .= "VALUES " . implode(', ', $popularity);

  if ($conn->query($sql) === TRUE && $conn->query($sql_types) === TRUE && $conn->query($sql_popularity) === TRUE) {
    header('HTTP/1.1 307 Temporary Redirect');
    header('Location: uploadPOIs.php?status=uploadsuccess');
  } else {
    echo $conn->error;
  }
  fclose($myfile);
}

$conn->close();
