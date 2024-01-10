<?php

 
include('../../include/koneksi.php');


if (isset($_POST['insert'])) {
  $nama_keterampilan = $_POST['nama_keterampilan'];
  $query = "INSERT INTO `tbl_keterampilan`(`nama_keterampilan`) VALUES ('$nama_keterampilan')";
  $result = mysqli_query($conn, $query);
  if(!$result) {
    die("Query Failed.");
  }

  $_SESSION['message'] = 'Insert Data Successfully';
  $_SESSION['message_type'] = 'success';
  header('Location: '.$base_url.'admin/data_keterampilan.php');


}

?>
