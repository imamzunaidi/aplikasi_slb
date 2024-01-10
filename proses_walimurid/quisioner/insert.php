<?php

 
include('../../include/koneksi.php');


if (isset($_POST['insert'])) {
  $id_wali_murid = $_SESSION['id_wali_murid'];
 

  $query = "SELECT * FROM tbl_pertanyaan";
  $pertanyaan = mysqli_query($conn, $query);    
  $no = 1;          
  while($row = mysqli_fetch_assoc($pertanyaan)) { 
    $id_pertanyaan = $row['id_pertanyaan'];
    $jawaban = $_POST['q'.$row['id_pertanyaan']];
    $query_insert = "INSERT INTO `tbl_jawaban`(`id_pertanyaan`,`jawaban`,`id_wali_murid`) VALUES ('$id_pertanyaan','$jawaban','$id_wali_murid')";
    $result_insert = mysqli_query($conn, $query_insert);

    if(!$result_insert) {
      die("Query Failed.");
    }
    
    

   }


  $_SESSION['message'] = 'Insert Data Successfully';
  $_SESSION['message_type'] = 'success';
  header('Location: '.$base_url.'');


}else{

}

?>
