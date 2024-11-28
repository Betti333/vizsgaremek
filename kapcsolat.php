<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "db";

//kapcsolat létrehozása
$conn = mysqli_connect($servername, $username, $password, $dbname); //minden kommunikáció az adatbázissal a $conn változón keresztül történik

//ha nem sikerül a kapcsolatot létrehozni
if (!$conn) {
    die("Sikertelen a kapcsolódás! ".mysqli_connect_error());
}
