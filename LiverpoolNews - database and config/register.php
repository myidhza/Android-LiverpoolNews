<?php
 
require_once 'include/DB_Functions.php';
$db = new DB_Functions();
 

$response = array("error" => FALSE);
 
if (isset($_POST['nama']) && isset($_POST['email']) && isset($_POST['password'])) {
 
 
    $nama = $_POST['nama'];
    $email = $_POST['email'];
    $password = $_POST['password'];
 
    if ($db->isUserExisted($email)) {
        
        $response["error"] = TRUE;
        $response["error_msg"] = "User telah ada dengan email " . $email;
        echo json_encode($response);
    } else {
        
        $user = $db->simpanUser($nama, $email, $password);
        if ($user) {
           
            $response["error"] = FALSE;
            $response["uid"] = $user["unique_id"];
            $response["user"]["nama"] = $user["nama"];
            $response["user"]["email"] = $user["email"];
            echo json_encode($response);
        } else {
            
            $response["error"] = TRUE;
            $response["error_msg"] = "Terjadi kesalahan saat melakukan registrasi";
            echo json_encode($response);
        }
    }
} else {
    $response["error"] = TRUE;
    $response["error_msg"] = "Parameter (nama, email, atau password) ada yang kurang";
    echo json_encode($response);
}
?>