<?php
    include 'config.php';
    //$action = mysqli_real_escape_string($sql_connection,$_POST['action']);

    //if($action == 'fetch'){
        $sql_query = 'select first_name,last_name,course from info';
        $response = mysqli_query($sql_connection,$sql_query);
        //if($response){
            //echo json_encode(array($response));
        //}
        $result = array();
        if ($response->num_rows > 0){
            while($row = $response->fetch_assoc()){
                array_push($result,$row);
            }
        }
        $sql_connection->close();
        header('content-type: application/json');
        echo json_encode($result);
    //}

?>