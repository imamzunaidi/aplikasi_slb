<?php

include('../../include/koneksi.php');

if (isset($_POST['update'])) {
  
    $id_keterampilan = $_POST['id_keterampilan'];
    $nama_keterampilan = $_POST['nama_keterampilan'];

    $query = "UPDATE `tbl_keterampilan` SET `nama_keterampilan`='$nama_kategori' WHERE `id_keterampilan`='$id_keterampilan'";
    $result = mysqli_query($conn, $query);
    if(!$result) {
        die("Query Failed.");
    }

    $_SESSION['message'] = 'Update Data Successfully';
    $_SESSION['message_type'] = 'success';
    header('Location: '.$base_url.'admin/data_keterampilan.php');

}

?>