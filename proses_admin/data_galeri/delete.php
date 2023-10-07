<?php

include('../../include/koneksi.php');

if(isset($_GET['id'])) {
  $id = $_GET['id'];
  $query = "DELETE FROM tbl_galeri WHERE kd_galeri = $id";
  $result = mysqli_query($conn, $query);
  if(!$result) {
    die("Query Failed.");
  }

  $_SESSION['message'] = 'Delete Data Galeri Successfully';
  $_SESSION['message_type'] = 'danger';
  header('Location: '.$base_url.'admin/data_galeri.php');
}

?>
