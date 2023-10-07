<?php

include('../../include/koneksi.php');

if (isset($_POST['update'])) {
  
    $id_konsultasi = $_POST['id_konsultasi'];
    $status_konsultasi = $_POST['status_konsultasi'];

    $query = "UPDATE `tbl_konsultasi` SET `status_konsultasi`='$status_konsultasi' WHERE id_konsultasi = $id_konsultasi";
    $result = mysqli_query($conn, $query);
    if(!$result) {
        die("Query Failed.");
    }

    $_SESSION['message'] = 'Update Data Successfully';
    $_SESSION['message_type'] = 'success';
    header('Location: '.$base_url.'admin/data_konsultasi.php');

}

?>