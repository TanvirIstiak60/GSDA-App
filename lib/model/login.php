<?php

    $db = mysqli_connect('localhost', 'root', '', 'localConnection');

    if(!$db){
        echo "Database connection failed!";
    }

    $email = $_POST['email'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM users WHERE email = '$email' AND password = '$password'";

    $result = mysqli_query($db, $sql);
    $count = mysqli_num_rows($result);

    if($count > 0){
        echo json_encode("success");
    }
    else{
        echo json_encode("error");
    }

?>
