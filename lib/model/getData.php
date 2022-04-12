<?php

    include 'login.php';

    $sql = $conn->query("SELECT * FROM user");
    $res = array();

    while($row = $sql->fetch_assoc()){
        $res[] = $row;
    }

    echo json_decode($res);

?>