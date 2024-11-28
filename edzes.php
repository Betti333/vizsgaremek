<?php 
require_once "kapcsolat.php";

//metódus lekérdezése (GET)
if ($_SERVER["REQUEST_METHOD"] === "GET") {
    $query = "SELECT edzesek.id, edzes_tipusok.id AS 'edzestipusId', edzes_tipusok.nev AS 'tipus',
                     edzesek.nap, edzesek.ido, edzesek.ar,
                     edzesek.szabad_hely
              FROM edzesek, edzes_tipusok
              WHERE edzesek.edzes_id = edzes_tipusok.id
              ORDER BY edzesek.id";
    //lekérdezés futtatása
    $result = mysqli_query($conn, $query); //(kapcsolati változó, SQl mondat)

    //$result tömb, ahol a kulcsok a SELECT-ben megadott attributum nevek
    //Jött-e vissza adat?
    if ($result) {
        //felépíteni egy edzés asszociatív tömböt a visszakapott adatokból
        $edzesek = [];
        while ($row = mysqli_fetch_assoc($result)){ //$row --> asszociatív tömb, amely a $result egy eleméből jött létre (1 rekord)
            //felépítünk a $row tartalma alapján egy edzés adataihoz tartozó asszociatív tömböt 
            $edzes = [
                'id' => $row['id'],
                'tipus' => $row['tipus'],
                'nap' => $row['nap'],
                'ido' => $row['ido'],
                'ar' => $row['ar'],
                'szabad_hely' => $row['szabad_hely'],
                'jelentkezes' => $row['id']
            ];
            $edzesek[] = $edzes; 
        }
        //json-be szeretném az adatokat továbbítani (header)
        header('Content-Type: application/json');
        echo json_encode($edzesek);
    }
}