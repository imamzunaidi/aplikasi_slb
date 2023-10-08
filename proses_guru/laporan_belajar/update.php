<?php

include('../../include/koneksi.php');

if (isset($_POST['update'])) {
  
    $id_laporan_belajar = $_POST['id_laporan_belajar'];

    $id_murid = $_POST['id_murid'];
    $nilai = $_POST['nilai'];
    $keterangan = $_POST['keterangan'];

    $id_kelas = $_POST['id_kelas'];

    $query = "UPDATE `tbl_laporan_belajar` SET `id_murid`='$id_murid',`nilai`='$nilai',`keterangan`='$keterangan' WHERE id_laporan_belajar = $id_laporan_belajar";
    $result = mysqli_query($conn, $query);
    if(!$result) {
        die("Query Failed.");
    }

    $_SESSION['message'] = 'Update Data Successfully';
    $_SESSION['message_type'] = 'success';
    header('Location: '.$base_url.'guru/laporan_belajar.php');

}

?>