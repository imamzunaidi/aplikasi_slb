
<?php 
include('../include/koneksi.php');

if ($_SESSION['id_users'] == NULL) {
  header('Location: '.$base_url.'');
}
include('../template/header.php');
include('../template/sidebar.php');

error_reporting(0);
 
$id_periode = $_SESSION['id_periode'];
?>
<div class="main-content">
  <section class="section">
    <div class="section-header">
      <h1>Data Kuesioner</h1>
    </div>
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
        <!-- <h5>Data Quisioner</h5> -->
        <table class="table table-hover" id="data_tabel">
            <thead>
              <tr>
                <th>No</th>
                <th>Pertanyaan</th>
                <th>Wali Murid</th>
                <th>Jawaban</th>
                <th  class = "text-center">Bobot Jawaban</th>
   
              </tr>
            </thead>
            <tbody>
              <?php    
                    $ss = 0;
                    $s = 0;
                    $n = 0;
                    $ts = 0;
                    $sts = 0;
                    $query = "SELECT * FROM tbl_jawaban tj INNER JOIN tbl_pertanyaan tp on tp.id_pertanyaan = tj.id_pertanyaan INNER JOIN tbl_wali_murid twm on twm.id_wali_murid = tj.id_wali_murid";
                    $result_tasks = mysqli_query($conn, $query);  
                    $jumlah_data = mysqli_num_rows($result_tasks);  
                    $nomer = 1;
                    while($row = mysqli_fetch_assoc($result_tasks)) { ?>
                <tr>
                  <td><?= $nomer++ ?></td>
                  <td><?= $row['nama_ayah']?></td>
                  <td><?= $row['pertanyaan']?></td>
                  <td>
                    <?php 
                        if ($row['jawaban']== 5) {
                           echo 'Sangat setuju';
                           $ss++;
                        }
                        if ($row['jawaban'] == 4) {
                           echo 'Setuju';
                           $s++;
                        }
                        if ($row['jawaban'] == 3) {
                           echo 'Netral';
                           $netral++;
                        }
                        if ($row['jawaban'] == 2) {
                           echo 'Tidak Setuju';
                           $ts++;
                        }
                        if ($row['jawaban'] == 1) {
                           echo 'Sangat Tidak Setuju';
                           $sts++;
                        }
                    ?>
                  </td>
                  <td  class = "text-center"><?= $row['jawaban']?></td>
                 
                </tr>
              <?php } ?>
            </tbody>
        </table>
 
         <h6>Jumlah <?= $jumlah_data ?> sehingga N = <?= $n = $jumlah_data * 5 ?> </h6> 
      
         <br>

        <br>
         
        <h5>Hasil Akhir</h5>
            <table class="table table-hover" id="data_tabel">
                <thead>
                    <tr class = "text-center">
                        <th>No</th>
                        <th>Pertanyaan</th>
                        <th>SS</th>
                        <th>S</th>
                        <th>N</th>
                        <th>TS</th>
                        <th>STS</th>
                        <th>Proses</th>
                        <th>Presentase</th>
                    </tr>
                </thead>
                <tbody>
                    <?php 
                    $query = "SELECT * FROM tbl_jawaban tj INNER JOIN tbl_pertanyaan tp on tp.id_pertanyaan = tj.id_pertanyaan INNER JOIN tbl_wali_murid twm on twm.id_wali_murid = tj.id_wali_murid GROUP BY tj.id_pertanyaan";
                    $result_tasks = mysqli_query($conn, $query);  
                 
                    $nomer = 1;
                    while($row = mysqli_fetch_assoc($result_tasks)) { 
                        $total_akhir = 0;
                        ?> 

                        <tr class = "text-center">
                            <td><?= $nomer++?></td>
                            <td class = "text-left"><?= $row['pertanyaan']; ?></td>
                            <td>
                                <?php
                                    $id_pertanyaan =  $row['id_pertanyaan'];
                                    $query_ss = "SELECT COUNT(id_pertanyaan) as jumlah FROM tbl_jawaban where id_pertanyaan = $id_pertanyaan AND jawaban = '5'";
                                    $result_tasks_ss = mysqli_query($conn, $query_ss); 

                                    $jumlah_data_ss = mysqli_fetch_assoc($result_tasks_ss) 
                                 ?>
                                 <?= $jumlah_data_ss['jumlah'] ?> 
                                 <?php $total_akhir = ($total_ss + $jumlah_data_ss['jumlah']) * 5 ?>
                            </td>
                            <td>
                                <?php
                                    $id_pertanyaan =  $row['id_pertanyaan'];
                                    $query_s = "SELECT COUNT(id_pertanyaan) as jumlah FROM tbl_jawaban where id_pertanyaan = $id_pertanyaan AND jawaban = '4'";
                                    $result_tasks_s = mysqli_query($conn, $query_s); 
                                    $jumlah_data_s = mysqli_fetch_assoc($result_tasks_s);
                                
                                 ?>
                                 <?= $jumlah_data_s['jumlah'] ?> 
                                 <?php $total_akhir = (($total_ss + $jumlah_data_ss['jumlah']) * 5) + (($total_s + $jumlah_data_s['jumlah']) * 4) ?>
                            </td>
                            <td>
                                <?php
                                    $id_pertanyaan =  $row['id_pertanyaan'];
                                    $query_n = "SELECT COUNT(id_pertanyaan) as jumlah FROM tbl_jawaban where id_pertanyaan = $id_pertanyaan AND jawaban = '3'";
                                    $result_tasks_n = mysqli_query($conn, $query_n); 
                                    $jumlah_data_n = mysqli_fetch_assoc($result_tasks_n) 
                                 ?>
                                 <?= $jumlah_data_n['jumlah'] ?> 
                                 <?php $total_akhir = (($total_ss + $jumlah_data_ss['jumlah']) * 5) + (($total_s + $jumlah_data_s['jumlah']) * 4) + (($total_n + $jumlah_data_n['jumlah']) * 3) ?>
                            </td>
                            <td>
                                <?php
                                    $id_pertanyaan =  $row['id_pertanyaan'];
                                    $query_ts = "SELECT COUNT(id_pertanyaan) as jumlah FROM tbl_jawaban where id_pertanyaan = $id_pertanyaan AND jawaban = '2'";
                                    $result_tasks_ts = mysqli_query($conn, $query_ts); 
                                    $jumlah_data_ts = mysqli_fetch_assoc($result_tasks_ts) 
                                 ?>
                                 <?= $jumlah_data_ts['jumlah'] ?>
                                 <?php $total_akhir = (($total_ss + $jumlah_data_ss['jumlah']) * 5) + (($total_s + $jumlah_data_s['jumlah']) * 4) + (($total_n + $jumlah_data_n['jumlah']) * 3) + (($total_ts + $jumlah_data_ts['jumlah']) * 2)?>
                            </td>
                            <td>
                                <?php
                                    $id_pertanyaan =  $row['id_pertanyaan'];
                                    $query_sts = "SELECT COUNT(id_pertanyaan) as jumlah FROM tbl_jawaban where id_pertanyaan = $id_pertanyaan AND jawaban = '1'";
                                    $result_tasks_sts = mysqli_query($conn, $query_sts); 
                                    $jumlah_data_sts = mysqli_fetch_assoc($result_tasks_sts) 
                                 ?>
                                 <?= $jumlah_data_sts['jumlah'] ?> 
                                 <?php $total_akhir = (($total_ss + $jumlah_data_ss['jumlah']) * 5) + (($total_s + $jumlah_data_s['jumlah']) * 4) + (($total_n + $jumlah_data_n['jumlah']) * 3) + (($total_ts + $jumlah_data_ts['jumlah']) * 2) + (($total_sts + $jumlah_data_sts['jumlah']) * 1)?>
                            </td>
                            <td>
                               
                                <?= $total_akhir ?> :  <?= $n ?> / 100% = <?= number_format(($total_akhir / $n) * 100/100, 2)   ?> %
                            </td>
                            <td ><?= number_format(($total_akhir / $n) * 100/100, 2) ?> %</td>
                        </tr>
                    <?php  } ?>
                    
                </tbody>
            
            </table>

        <!-- <table class="table table-hover" id="data_tabel">
            <thead>
              <tr>
                <th>No</th>
                <th>Wali Murid</th>
                <th>Q1</th>
                <th>Q2</th>
                <th>Q3</th>
                <th>Q4</th>
                <th>Q5</th>
              </tr>
            </thead>
            <tbody>
              <?php    
                    $query = "SELECT * FROM tbl_quisioner tq INNER JOIN tbl_wali_murid twm on twm.id_wali_murid = tq.id_wali_murid";
                    $result_tasks = mysqli_query($conn, $query);  
                    $jumlah_data = mysqli_num_rows($result_tasks);  
                    $nomer = 1;
                    while($row = mysqli_fetch_assoc($result_tasks)) { ?>
                <tr>
                  <td><?= $nomer++ ?></td>
                  <td><?= $row['nama_ayah']?></td>
                  <td><?= $row['q1']?></td>
                  <td><?= $row['q2']?></td>
                  <td><?= $row['q3']?></td>
                  <td><?= $row['q4']?></td>
                  <td><?= $row['q5']?></td>
                 
                </tr>
              <?php } ?>
            </tbody>
        </table> -->

          <?php
            $jumlah5 = 0;
            $jumlah4 = 0;
            $jumlah3 = 0;
            $jumlah2 = 0;
            $jumlah1 = 0;
            
            $query = "SELECT * FROM tbl_quisioner tq INNER JOIN tbl_wali_murid twm on twm.id_wali_murid = tq.id_wali_murid";
            $result_tasks = mysqli_query($conn, $query);    
            $no = 1;
            while($row = mysqli_fetch_assoc($result_tasks)) { 
                if ($row['q1'] == 5) {
                    $jumlah5++;
                }
                if ($row['q2'] == 5) {
                    $jumlah5++;
                }
                if ($row['q3'] == 5) {
                    $jumlah5++;
                }
                if ($row['q4'] == 5) {
                    $jumlah5++;
                }
                if ($row['q5'] == 5) {
                    $jumlah5++;
                }

                if ($row['q1'] == 4) {
                    $jumlah4++;
                }
                if ($row['q2'] == 4) {
                    $jumlah4++;
                }
                if ($row['q3'] == 4) {
                    $jumlah4++;
                }
                if ($row['q4'] == 4) {
                    $jumlah4++;
                }
                if ($row['q5'] == 4) {
                    $jumlah4++;
                }

                if ($row['q1'] == 3) {
                    $jumlah3++;
                }
                if ($row['q2'] == 3) {
                    $jumlah3++;
                }
                if ($row['q3'] == 3) {
                    $jumlah3++;
                }
                if ($row['q4'] == 3) {
                    $jumlah3++;
                }
                if ($row['q5'] == 3) {
                    $jumlah3++;
                }

                if ($row['q1'] == 2) {
                    $jumlah2++;
                }
                if ($row['q2'] == 2) {
                    $jumlah2++;
                }
                if ($row['q3'] == 2) {
                    $jumlah2++;
                }
                if ($row['q4'] == 2) {
                    $jumlah2++;
                }
                if ($row['q5'] == 2) {
                    $jumlah2++;
                }

                if ($row['q1'] == 1) {
                    $jumlah1++;
                }
                if ($row['q2'] == 1) {
                    $jumlah1++;
                }
                if ($row['q3'] == 1) {
                    $jumlah1++;
                }
                if ($row['q4'] == 1) {
                    $jumlah1++;
                }
                if ($row['q5'] == 1) {
                    $jumlah1++;
                }
                
             } ?>

            <!-- <h6>Jumlah <?= $jumlah_data ?> sehingga N = <?= $n = $jumlah_data * 5 ?> </h6> -->
            <!-- <table class="table table-hover" id="data_tabel">
                <thead>
                    <tr>
                    <th>No</th>
                    <th>Hasil</th>
                    <th>Bobot</th>
                    <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td><?= $jumlah5?> Menjawab Sangat Setuju</td>
                        <td><?= $jumlah5?> x 5</td>
                        <td><?= $hasil5 = $jumlah5 * 5?></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td><?= $jumlah4?> Menjawab Setuju</td>
                        <td><?= $jumlah4?> x 4</td>
                        <td><?= $hasil4 = $jumlah4 * 4?></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td><?= $jumlah3?> Menjawab Netral</td>
                        <td><?= $jumlah3?> x 3</td>
                        <td><?= $hasil3 = $jumlah3 * 3?></td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td><?= $jumlah2?> Menjawab Tidak Setuju</td>
                        <td><?= $jumlah2?> x 2</td>
                        <td><?= $hasil2 = $jumlah2 * 2?></td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td><?= $jumlah1?> Menjawab Sangat Tidak Setuju</td>
                        <td><?= $jumlah1?> x 1</td>
                        <td><?= $hasil1 = $jumlah1 * 1?></td>
                    </tr>

                </tbody>
                <tfoot>
                    <tr>
                        <td colspan = "3" class="text-center">Total Akhir</td>
                        <td><?= $hasil5 + $hasil4 + $hasil3 + $hasil2 + $hasil1 ?></td>
                    </tr>
                </tfoot>
            </table> -->
            <?php  $total_akhir = $hasil5 + $hasil4 + $hasil3 + $hasil2 + $hasil1 ?>
            <!-- <h5>Hasil Akhir</h5>
            <table class="table table-hover" id="data_tabel">
                <thead>
                    <tr>
                    <th>No</th>
                    <th>Status</th>
                    <th>Y</th>
                    <th>Total Skors</th>
                    <th>Total Max</th>
                    <th>Rumus</th>
                    <th>Hasil Akhir</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Sangat Setuju</td>
                        <td> 5 x <?= $jumlah_data ?> = <?= $jumlah_data * 5?></td>
                        <td> <?=$total_akhir ?></td>
                        <td><?= $jumlah_data * 5?></td>
                        <td> Hasil Akhir =  (<?= $total_akhir ?> / <?= ($jumlah_data * 5) ?>) * 100 % = <?= number_format(($total_akhir / ($jumlah_data * 5)) * 100/100, 2)?> %</td>
                        <td><?= number_format(($total_akhir / ($jumlah_data * 5)) * 100/100, 2)?> %</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Setuju</td>
                        <td> 4 x <?= $jumlah_data ?> = <?= $jumlah_data * 4?></td>
                        <td> <?=$total_akhir ?></td>
                        <td><?= $jumlah_data * 4?></td>
                        <td> Hasil Akhir =  (<?= $total_akhir ?> / <?= ($jumlah_data * 4) ?>) * 100 % = <?= number_format(($total_akhir / ($jumlah_data * 4)) * 100/100, 2)?> %</td>
                        <td><?= number_format(($total_akhir / ($jumlah_data * 4)) * 100/100, 2)?> %</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Netral</td>
                        <td> 3 x <?= $jumlah_data ?> = <?= $jumlah_data * 3?></td>
                        <td> <?=$total_akhir ?></td>
                        <td><?= $jumlah_data * 3?></td>
                        <td> Hasil Akhir =  (<?= $total_akhir ?> / <?= ($jumlah_data * 3) ?>) * 100 % = <?= number_format(($total_akhir / ($jumlah_data * 3)) * 100/100, 2) ?> %</td>
                        <td><?= number_format(($total_akhir / ($jumlah_data * 3)) * 100/100, 2)?> %</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>Tidak Setuju</td>
                        <td> 2 x <?= $jumlah_data ?> = <?= $jumlah_data * 2?></td>
                        <td> <?=$total_akhir ?></td>
                        <td><?= $jumlah_data * 2?></td>
                        <td>Hasil Akhir =  (<?= $total_akhir ?> / <?= ($jumlah_data * 2) ?>) * 100 % = <?= number_format(($total_akhir / ($jumlah_data * 2)) * 100/100 , 2) ?> %</td>
                        <td><?= number_format(($total_akhir / ($jumlah_data * 2)) * 100/100, 2)?> %</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>Sangat Tidak Setuju</td>
                        <td> 1 x <?= $jumlah_data ?> = <?= $jumlah_data * 1?></td>
                        <td> <?=$total_akhir ?></td>
                        <td><?= $jumlah_data * 1?></td>
                        <td>Hasil Akhir =  (<?= $total_akhir ?> / <?= ($jumlah_data * 1) ?>) * 100 % <?= number_format(($total_akhir / ($jumlah_data * 1)) * 100/100, 2) ?> %</td>
                        <td><?= number_format(($total_akhir / ($jumlah_data * 1)) * 100/100, 2)?> %</td>
                    </tr>

                </tbody>
            
            </table> -->
        </div>
      </div>
    </div>
  </section>
</div>

<?php include('../template/footer.php'); ?>
