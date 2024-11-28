<?php
// Adatbázis kapcsolat létrehozása
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "db"; // a saját adatbázis neve

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Kapcsolódási hiba: " . $conn->connect_error);
}

// Az id lekérése GET metódus segítségével
$id = intval($_GET['id']);

// Adat lekérdezése az adatbázisból az id alapján
$sql = "SELECT leiras FROM edzes_tipusok WHERE id = $id";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Ha van eredmény, akkor kiírjuk a szöveget
    while($row = $result->fetch_assoc()) {
        echo $row['leiras'];
    }
} else {
    echo "Nincs még leírás";
}

$conn->close();
?>