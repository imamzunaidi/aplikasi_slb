<?php

include('../../include/koneksi.php');

if (isset($_POST['update'])) {
  
    $id_konsultasi = $_POST['id_konsultasi'];
    $tanggal_konsultasi = $_POST['tanggal_konsultasi'];
    $jam_konsultasi = $_POST['jam_konsultasi'];
    $konsultasi = $_POST['konsultasi'];
    $status_konsultasi = 'diajukan';

    $query = "UPDATE `tbl_konsultasi` SET `tanggal_konsultasi`='$tanggal_konsultasi',`jam_konsultasi`='$jam_konsultasi',`konsultasi`='$konsultasi', `status_konsultasi`='$status_konsultasi' WHERE id_konsultasi = $id_konsultasi";
    $result = mysqli_query($conn, $query);
    if(!$result) {
        die("Query Failed.");
    }

    $_SESSION['message'] = 'Update Data Successfully';
    $_SESSION['message_type'] = 'success';
    header('Location: '.$base_url.'walimurid/konsultasi.php');
}

?>