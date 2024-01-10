<?php

include('../../include/koneksi.php');

if (isset($_POST['update'])) {
  
    $id_pertanyaan = $_POST['id_pertanyaan'];
    $pertanyaan = $_POST['pertanyaan'];

    $query = "UPDATE `tbl_pertanyaan` SET `pertanyaan`='$pertanyaan' WHERE `id_pertanyaan`='$id_pertanyaan'";
    $result = mysqli_query($conn, $query);
    if(!$result) {
        die("Query Failed.");
    }

    $_SESSION['message'] = 'Update Data Successfully';
    $_SESSION['message_type'] = 'success';
    header('Location: '.$base_url.'admin/data_pertanyaan.php');

}

?>