<?php
$conn = mysqli_connect("localhost", "root", "", "web");
if ($conn === false) {
    die("Error: could not connect : " . mysqli_connect_error());
}
date_default_timezone_set("Europe/Athens");

$dayonehourafter = date("l", strtotime("+1 hours"));
$daytwohoursafter = date("l", strtotime("+2 hours"));
$plusonehour = intval(date("H", strtotime("+1 hours")));
$plustwohours = intval(date("H", strtotime("+2 hours")));
$minustwohours = date("Y-m-d H:i:s", strtotime("-2 hours"));

$search = $_GET["query"];
$sqls = "SELECT id,poiname,poilat,poilng FROM pois WHERE poiname LIKE '%$search%'";
$results = mysqli_query($conn, $sqls);
$response = array();
if ($results->num_rows > 0) {
    while ($row = $results->fetch_array()) {
        
        $id = $row["id"];
        $name = $row["poiname"];
        $lat = $row["poilat"];
        $lng = $row["poilng"];

        $sql = "SELECT popularity FROM poitimes WHERE id = '$id' AND day = '$dayonehourafter' AND hour = '$plusonehour'";
        $result = mysqli_query($conn, $sql);
        $inonehour= $result->fetch_array()[0] ?? '';

        $sql = "SELECT popularity FROM poitimes WHERE id = '$id' AND day = '$daytwohoursafter' AND hour = '$plustwohours'";
        $result = mysqli_query($conn, $sql);
        $intwohours = $result->fetch_array()[0] ?? '';

        $sql = "SELECT attendance FROM entries WHERE poi_id = '$id' AND entry_time >= '$minustwohours'";
        $result = mysqli_query($conn, $sql);
        
        $sum = 0;
        $count = 0;
        
        while($row1 = $result->fetch_array()){
           if(!empty($row1['attendance'])){
                $sum = $sum + $row1['attendance'];
                $count++;
            }
        }
        
        if($sum > 0)
            $lasttwohours = $sum/$count;
        else
            $lasttwohours =  $sum;
       
    
       // Final json
        $response[] = array(
            "id" => $id,
            "name" => $name,
            "lat" => $lat,
            "lng" => $lng,
            "inonehour" => $inonehour,
            "intwohours" => $intwohours,
            "lasttwohours" => $lasttwohours
        );
    }
    echo json_encode($response, true);
} else
    echo "0 results";
$conn->close();
