<?php

if(!isset($_SESSION)) 
{ 
    session_start(); 
} 

$base_url = "http://localhost/aplikasi_slb/";

$conn = mysqli_connect(
  'localhost',
  'root',
  '',
  'db_aplikasi_slb'
) or die(mysqli_error($mysqli));



?>
