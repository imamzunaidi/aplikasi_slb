<?php

 
include('../../include/koneksi.php');


if (isset($_POST['insert'])) {
  $id_murid = $_POST['id_murid'];
  $nilai = $_POST['nilai'];
  $keterangan = $_POST['keterangan'];
  $id_users = $_SESSION['id_users'];
  $id_kelas = $_POST['id_kelas'];

  $query = "INSERT INTO `tbl_laporan_belajar`(`id_murid`, `nilai`, `id_users`, `keterangan`) VALUES ('$id_murid','$nilai','$id_users','$keterangan')";
  $result = mysqli_query($conn, $query);
  if(!$result) {
    die("Query Failed.");
  }


  $_SESSION['message'] = 'Insert Data Successfully';
  $_SESSION['message_type'] = 'success';
  header('Location: '.$base_url.'admin/data_detail_laporan_belajar.php?id='.$id_kelas);


}

?>
