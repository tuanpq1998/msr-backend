<?php 

set_time_limit(0);
  sleep(5);

//$files = array_filter($_FILES['upload']['name']); //something like that to be used before processing files.
date_default_timezone_set('Asia/Ho_Chi_Minh');
// Count # of uploaded files in array
$total = count($_FILES['image-files']['name']);

// Loop through each file
for( $i=0 ; $i < $total ; $i++ ) {

  //Get the temp file path
  $tmpFilePath = $_FILES['image-files']['tmp_name'][$i];

  //Make sure we have a file path
  if ($tmpFilePath != ""){
    //Setup our new file path
    $newFilePath = "./uploads/" . $_FILES['image-files']['name'][$i];

    //Upload the file into the temp dir
    if(move_uploaded_file($tmpFilePath, $newFilePath)) {

      include "connect.php"; 


      session_start();
      
      if (isset($_SESSION['id']) && isset($_SESSION['username'])) {

          $user_id = $_SESSION['id'];
          $image_url = "uploads/" . $_FILES['image-files']['name'][$i];          
          $result = "abc";
          $create_at = date('Y-m-d h:i:s', time());

          $sql = "INSERT INTO `image_result`(`image_url`, `create_at`, `result`, `user_id`) VALUES ('$image_url','$create_at','$result','$user_id')";
           $res = $conn->query($sql);
      
           if ($res == TRUE) {
            $id = $conn->insert_id;
            $data = array (
              "id" => $id,
              "url" => $image_url,
              "create_at" => $create_at,
              "result" => $result,
            );
            header('Content-Type: application/json; charset=utf-8');
            echo json_encode($data);
      
          }else{
      
              echo "Error:" . $sql . "<br>" . $conn->error;
      
          }
      
      
      
      } else
      header("Location: login.php");
      


      
    }
  }
}
?>