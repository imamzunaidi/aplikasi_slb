<?php 
include('../include/koneksi.php');

if ($_SESSION['id_users'] == NULL) {
  header('Location: '.$base_url.'admin/login.php');
}
include('../template/header.php');
include('../template/sidebar.php');

error_reporting(0);
 
$id_users = $_SESSION['id_users'];
?>


<div class="main-content">
    <section class="section">
        <div class="section-header">
        <h1>Data Dashboard</h1>
        </div>

        <div class="section-body">
            <?php 
                if($_SESSION['hak_akses']  == 'admin'){?>
                    <div class="alert alert-info alert-dismissible">
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                        <strong>Hallo !!</strong> Selamat Datang Admin
                    </div>
            <?php } ?>
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                    <div class="card card-statistic-1">
                    <div class="card-icon bg-primary">
                        <a href="<?= $base_url ?>data_pelamar.php">
                        <i class="fas fa-users"></i>
                    </div>
                    <div class="card-wrap">
                        <div class="card-header">
                        <h4>Jumlah Pelamar</h4>
                        </div>
                        <div class="card-body">
                            <?= $jumlah_pelamar?>
                        </div> </a>
                    </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                    <div class="card card-statistic-1">
                    <div class="card-icon bg-danger">
                        <a href="<?= $base_url ?>data_lowongan.php">
                        <i class="fas fa-user-friends"></i>
                    </div>
                    <div class="card-wrap">
                        <div class="card-header">
                        <h4>Data Lowongan</h4>
                        </div>
                        <div class="card-body">
                            <?= $jumlah_lowongan?>
                        </div>
                    </div></a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                    <div class="card card-statistic-1">
                    <div class="card-icon bg-warning">
                        <a href="<?= $base_url ?>laporan_keterima.php">
                        <i class="fas fa-user-circle"></i>
                    </div>
                    <div class="card-wrap">
                        <div class="card-header">
                        <h4>Data Keterima</h4>
                        </div>
                        <div class="card-body">
                           <?= $jumlah_diterima?>
                        </div>
                    </div></a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                    <div class="card card-statistic-1">
                    <div class="card-icon bg-success">
                        <a href="<?= $base_url ?>laporan_ketolak.php">
                        <i class="fas fa-bookmark"></i>
                    </div>
                    <div class="card-wrap">
                        <div class="card-header">
                        <h4>Jumlah Ketolak</h4>
                        </div>
                        <div class="card-body">
                        <?= $jumlah_tidak_lolos?>
                        </div>
                    </div></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>


<?php
include('../template/footer.php');
?>