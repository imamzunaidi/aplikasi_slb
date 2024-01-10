<?php

 
include('../../include/koneksi.php');


if (isset($_POST['insert'])) {
  $pertanyaan = $_POST['pertanyaan'];
  $query = "INSERT INTO `tbl_pertanyaan`(`pertanyaan`) VALUES ('$pertanyaan')";
  $result = mysqli_query($conn, $query);
  if(!$result) {
    die("Query Failed.");
  }

  $_SESSION['message'] = 'Insert Data Successfully';
  $_SESSION['message_type'] = 'success';
  header('Location: '.$base_url.'admin/data_pertanyaan.php');


}

?>
