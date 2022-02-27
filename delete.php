<?php 

include "connect.php"; 

session_start();

if (isset($_SESSION['id']) && isset($_SESSION['username'])) {
  if (isset($_GET['id'])) {

    $user_id = $_SESSION['id'];
    
    $image_id = $_GET['id'];

    $sql = "DELETE FROM `image_result` WHERE `id`='$image_id' AND `user_id` = '$user_id'";

     $result = $conn->query($sql);

     if ($result == TRUE) {

        echo "Record deleted successfully.";

    }else{

        echo "Error:" . $sql . "<br>" . $conn->error;

    }

} 

} else
header("Location: login.php");

?>