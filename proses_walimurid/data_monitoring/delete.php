<?php

include('../../include/koneksi.php');

if(isset($_GET['id'])) {
  $id = $_GET['id'];
  $query = "DELETE FROM tbl_alur WHERE kd_alur = $id";
  $result = mysqli_query($conn, $query);
  if(!$result) {
    die("Query Failed.");
  }

  $_SESSION['message'] = 'Delete Data Successfully';
  $_SESSION['message_type'] = 'danger';
  header('Location: '.$base_url.'admin/data_alur.php');
}

?>
