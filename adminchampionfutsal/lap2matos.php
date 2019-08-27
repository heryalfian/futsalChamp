<?php 
//koneksi database
$conn = mysqli_connect("localhost","root", "", "futsal");

//ambil data dari database
$result = mysqli_query($conn,"SELECT pelanggan.id_pelanggan, pelanggan.nama, pelanggan.no_hp, pemesanan.id_pemesanan, pemesanan.id_lokasi, pemesanan.tgl_pesan, pemesanan.jam_pesan, pemesanan.lpgn, pemesanan.jam_main, pemesanan.durasi FROM pelanggan, pemesanan
WHERE pelanggan.id_pelanggan=pemesanan.id_pelanggan AND pemesanan.lpgn=2 AND pemesanan.id_lokasi=3");
//ambil data (assoc) dari objek result 
//while ($datapesan = mysqli_fetch_assoc($result)) {
//var_dump($datapesan);}

?>

<!DOCTYPE html>
<html>
<head>
	
	<link rel="stylesheet" type="text/css" href="css/goal.css">
	
	<title> Champion Futsal </title>
	
	<script src="js/goal.js"></script>

</head>

<body>

<div class="container">
	<div class="header">
		<img class="logo" src="img/logo.png">
		<h1 class="judul"> CHAMPION FUTSAL </h1>
	</div>

	<div class="admin">
		<img class="logoadmin" src="img/logoadmin.png">
		<div class="aranlogo" align="center">Admin</div>
		<button class="pilihmenu">DATA PEMESANAN </button>
		<button class="pilihmenu"> DATA KARYAWAN </button>
		
		<button class="pilihmenu"> ABOUT</button>
	</div>
	
	<div class="aranhlmn" align="center"> DATA PEMESANAN </div>

	<table class="taokdata" border="1" cellpadding="10" cellspacing="0">
		
		<select class="plhcabang" align="center" onchange="location = this.value;">
				<option value="goal.php" > Champion Futsal Suhat </option>
				<option value="lap1tlogomas.php" > Champion Futsal Tlogomas</option>
				<option value="lap1matos.php" selected=""> Champion Futsal Matos</option>			
		</select> <br>

		<button class="pilen" onclick="pindahlaman('lap1matos.php')"> Lapangan 1</button>
		<button class="pilen" onclick="pindahlaman('lap2matos.php')"> Lapangan 2</button>
	
		<!-- <button class="plus" onclick="pindahlaman('formpesan.php')"> Tambah Data</button> -->
		
		<tr>
			<th> No.</th>
			<th> ID Pemesanan </th>
			<th> Lokasi </th>
			<th> Username </th>
			<th> No Handphone </th>
			<th> Lapangan </th>
			<th> Tanggal Pesan </th>
			<th> Jam Pesan </th>
			<th> Jam Pemakaian Lap </th>
			<th> Durasi </th>
			<th> Aksi </th>
		</tr>
		<?php $a=1; ?>
		<?php while ( $row = mysqli_fetch_assoc($result)): ?>
		<tr>
			<td><?= $a; ?>  </td>
			
			<td><?= $row["id_pemesanan"] ?></td>
			<td><?= $row["id_lokasi"] ?></td>
			<td><?= $row["nama"]; ?> </td>
			<td><?= $row["no_hp"]; ?></td>
			<td><?= $row["lpgn"]; ?></td>
			<td><?= $row["tgl_pesan"];?></td>
			<td><?= $row["jam_pesan"];?></td>
			<td><?= $row["jam_main"];?></td>
			<td><?= $row["durasi"];?></td>
			<td>
				<a href="hapusdata.php?id=<?php echo $row['id_pemesanan']; ?>" >Hapus</a> 
				<!--a href="">Reschedule</a--> 
			</td>

		</tr>
	<?php $a++; ?>
	<?php endwhile; ?>
	</table>

</body>
</html>