<?php 
include('../include/koneksi.php');

if ($_SESSION['id_wali_murid'] == NULL) {
  header('Location: '.$base_url.'walimurid/login.php');
}
include('../template_walimurid/header.php');
include('../template_walimurid/navbar.php');

error_reporting(0);
 
$id_wali_murid = $_SESSION['id_wali_murid'];
?>

<div class="blog-page area-padding">
    <div class="container  mt-5">
        <div class="card">
            <div class="card-header">
                <center><h4>Data Laporan</h4></center>
            </div>
            <div class="card-body">
                <div class="col-md-12">
    

                    <?php if (isset($_SESSION['message'])) { ?>
                        <div class="alert alert-<?= $_SESSION['message_type']?> alert-dismissible fade show" role="alert">
                        <?= $_SESSION['message']?>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        </div>
                    <?php unset($_SESSION['message']); unset($_SESSION['message_type']); } ?>
                    <table class="table table-hover" id="data_tabel">
                        <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama Murid</th>
                            <th>Kelas</th>
                            <th>Periode</th>
                            <th>Wali Murid</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php    
                                $query = "SELECT * FROM tbl_detail_kelas tdk INNER JOIN tbl_kelas tk on tk.id_kelas = tdk.id_kelas INNER JOIN tbl_murid tm on tm.id_murid = tdk.id_murid INNER JOIN tbl_wali_murid tw ON tw.id_murid = tm.id_murid INNER JOIN tbl_periode tp ON tp.id_periode = tk.id_periode INNER JOIN tbl_users tu on tu.id_users = tk.id_users WHERE tw.id_wali_murid = $id_wali_murid";
                                $result_tasks = mysqli_query($conn, $query);    
                                $no = 1;
                                while($row = mysqli_fetch_assoc($result_tasks)) { ?>
                            <tr>
                                <td><?= $no++ ?></td>
                                <td><?= $row['nama']?></td>
                                <td><?= $row['nama_kelas']?></td>
                                <td><?= $row['periode']?></td>
                                <td><?= $row['nama_users']?></td>
                                <td>
                                    <a href="<?= $base_url ?>walimurid/detail_laporan.php?id=<?= $row['id_kelas'] ?>" class="btn btn-info btn-sm"><i class="fas fa-eye"></i></a>
                                </td>
                            </tr>
                        <?php } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<?php
include('../template_walimurid/script.php');
include('../template_walimurid/footer.php');
?>