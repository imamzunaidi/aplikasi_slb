
<?php 
include('../include/koneksi.php');

if ($_SESSION['id_users'] == NULL) {
  header('Location: '.$base_url.'');
}
include('../template/header.php');
include('../template/sidebar.php');

error_reporting(0);
 
$id_keterampilan = $_SESSION['id_keterampilan'];
?>
<div class="main-content">
  <section class="section">
    <div class="section-header">
      <h1>Data keterampilan</h1>
    </div>
    <button type="button" class="btn btn-primary mb-2" data-toggle="modal" data-target="#tambahdata">
      Tambah Data
    </button>
    <?php if (isset($_SESSION['message'])) { ?>
        <div class="alert alert-<?= $_SESSION['message_type']?> alert-dismissible fade show" role="alert">
        <?= $_SESSION['message']?>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
        </div>
    <?php unset($_SESSION['message']); unset($_SESSION['message_type']); } ?>
    <div class="section-body">
      <div class="card table-responsive">
        <div class="card-body ">
          
            <table class="table table-hover" id="data_tabel">
            <thead>
              <tr>
                <th>No</th>
                <th>Nama Keterampilan</th>
                
                <th class ="text-center">Action</th>
              </tr>
            </thead>
            <tbody>
              <?php    
                    $query = "SELECT * FROM tbl_keterampilan";
                    $result_tasks = mysqli_query($conn, $query);    
                    $no = 1;
                    while($row = mysqli_fetch_assoc($result_tasks)) { ?>
                <tr>
                  <td><?= $no++ ?></td>
                  <td><?= $row['nama_keterampilan']?></td>
                  <td class ="text-center"> 
                    <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#updatedata<?= $row['id_keterampilan'] ?>">
                      <i class="fas fa-edit"></i>
                    </button>
                    <a href="<?= $base_url ?>proses_admin/data_keterampilan/delete.php?id=<?= $row['id_keterampilan'] ?>" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></a>
                  </td>
                </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </section>
</div>

                
<!-- Modal -->
<div class="modal fade" id="tambahdata" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Tambah Data</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="<?= $base_url ?>proses_admin/data_keterampilan/insert.php" method="post" enctype='multipart/form-data'>
      <div class="modal-body">
          <div class="form-group">
            <label for="">Nama</label>
            <input type="text" name="nama_keterampilan" id="" class="form-control" required>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" name = "insert" class="btn btn-primary">Save</button>
        </div>
      </form>
    </div>
  </div>
</div>

<?php
$query = "SELECT * FROM tbl_keterampilan";
$result_tasks = mysqli_query($conn, $query);    
$no = 1;
while($row = mysqli_fetch_assoc($result_tasks)) { ?>
<div class="modal fade" id="updatedata<?= $row['id_keterampilan']?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Update Data</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="<?= $base_url ?>proses_admin/data_keterampilan/update.php" method="post" enctype='multipart/form-data'>
        <div class="modal-body">
            <input type="hidden" name="id_keterampilan" id="" class="form-control" value = "<?= $row['id_keterampilan'] ?>">
            <div class="form-group">
              <label for="">Nama</label>
              <input type="text" name="nama_keterampilan" id="" class="form-control" value = "<?= $row['nama_keterampilan'] ?>">
            </div>
        </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="submit" name = "update" class="btn btn-primary">Save</button>
          </div>
        </div>
      </form>
  </div>
</div>
<?php } ?>

<?php include('../template/footer.php'); ?>
