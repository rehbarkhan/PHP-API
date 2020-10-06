<?php

    include 'config.php';
    $first_name = mysqli_real_escape_string($sql_connection,$_POST['first_name']);
    $last_name = mysqli_real_escape_string($sql_connection,$_POST['last_name']);
    $course = mysqli_real_escape_string($sql_connection,$_POST['course']);
    $action = mysqli_real_escape_string($sql_connection,$_POST['action']);

    if($action == 'insert'){
        $sql_query = "insert into info (first_name,last_name,course) values('$first_name','$last_name','$course')";
        $response = mysqli_query($sql_connection,$sql_query);
        if($response){
            echo json_encode(array("User Added"));
        }
        else{
            echo json_encode(array("Cool");
        }
    }

    if($action == 'fetch'){
        $sql_query = 'select first_name,last_name,course from info';
        $response = mysqli_query($sql_connection,$sql_query);
        if($response)
    }

?>