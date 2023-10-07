<?php

include('../../include/koneksi.php');

if (isset($_POST['update'])) {
  
    $id_laporan_belajar = $_POST['id_laporan_belajar'];

    $id_murid = $_POST['id_murid'];
    $nilai = $_POST['nilai'];

    $id_kelas = $_POST['id_kelas'];

    $query = "UPDATE `tbl_laporan_belajar` SET `id_murid`='$id_murid',`nilai`='$nilai' WHERE id_laporan_belajar = $id_laporan_belajar";
    $result = mysqli_query($conn, $query);
    if(!$result) {
        die("Query Failed.");
    }

    $_SESSION['message'] = 'Update Data Successfully';
    $_SESSION['message_type'] = 'success';
    header('Location: '.$base_url.'admin/data_detail_laporan_belajar.php?id='.$id_kelas);

}

?>