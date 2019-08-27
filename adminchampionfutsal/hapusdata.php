<?php 

include 'koneksidb.php';

$id = $_GET['id'];
mysqli_query ($conn, "DELETE FROM pemesanan WHERE id_pemesanan = '$id'");

header("location: goal.php?terhapusges");

 ?>

