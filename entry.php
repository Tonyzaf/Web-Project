<?php 
session_start();
if(!isset($_SESSION['username'])){
  header("Location: login.php");
}

$conn = mysqli_connect("localhost", "root", "", "web");
if ($conn === false) {
    die("Error: could not connect : " . mysqli_connect_error());
}
date_default_timezone_set("Europe/Athens");

$userid = $_SESSION['id'];
$number = $_POST["query1"];
$id = $_POST["query2"];
if ($number == !null){
    $sqls = "INSERT INTO entries(entry_time,poi_id,user_id,attendance) VALUES (now(), '$id','$userid','$number')";
    $results = mysqli_query($conn, $sqls);
}
else {
    $sqls = "INSERT INTO entries(entry_time,poi_id,user_id) VALUES (now(), '$id','$userid')";
    $results = mysqli_query($conn, $sqls);
}
?>