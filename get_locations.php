<?php

$servername = "localhost"; 
$username = "root"; 
$password = ""; 
$dbname = "qgis"; 

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM locations";
$result = $conn->query($sql);

$locations = array();

if ($result->num_rows > 0) {
    
    while($row = $result->fetch_assoc()) {
        $locations[] = $row;
    }
}

$conn->close();

header('Content-Type: application/json');
echo json_encode($locations);
?>
