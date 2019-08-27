<?php 
	
	include 'koneksidb.php';

	$query= "SELECT * FROM lokasi";

	$mauk= mysqli_query($conn,$query);
			

		if (isset($_POST['submit'])) {


			$nama 	  =$_POST['nama'];
			$no_hp	  =$_POST['no_hp'];
			
			$id_lokasi=$_POST['id_lokasi'];
			$lpgn     =$_POST['lpgn'];
			$tgl_pesan=$_POST['tgl_pesan'];
			$jam_pesan=$_POST['jam_pesan'];

			

			$query1= "INSERT INTO pelanggan (nama, no_hp) VALUES ('$nama', '$no_hp')";

			

			if ($conn->query($query1) === TRUE){
				$last_id = $conn->insert_id;
			}else{
				$last_id="error";
			}


			$sql= "INSERT INTO pemesanan (id_pelanggan, id_lokasi, lpgn, tgl_pesan, jam_pesan) VALUES ('$last_id','$id_lokasi','$lpgn','$tgl_pesan','$jam_pesan')";
			
			$result=mysqli_query($conn,$sql);
					
		
		session_start();
		if($_SESSION['submit'] == $_POST['submit'] && 
     		isset($_SESSION['submit'])){
    	// user double submitted 
		} else {
    	// user submitted once
    		$_SESSION['submit'] = $_POST['submit'];  
    	} 

		header("location: goal.php");
		exit;	
	
	}
		
 ?>

 
  

<!DOCTYPE html>
<html>
<head>

	<link rel="stylesheet" type="text/css" href="css/index.css">

	<title> Champion Futsal </title>


</head>
<body>
<div class="container">
	
	<div class="header1" align="center">
	<h1 class="aran"> Pesan Lapangan </h1>
	</div>
	<div class="kotak">
		<div class="isikotak" align="center">
		<form class="formpesan" action="formpesan.php" method="POST">

			<input class="databoking" type="text" placeholder="Nama" name="nama"> <br />
			
			<input class="databoking" type="text" placeholder="No HP" name="no_hp"> <br />

			<div class="coret">Pilih Cabang <br />
			<select class="pilihcab" style="margin-left: 30px;" name="id_lokasi" id="pilen" >
			<?php while ( $row=mysqli_fetch_assoc($mauk)): ?>
				<option id="umbak" value="<?= $row['id_lokasi']; ?>" ><?= $row['nama_lokasi']; ?></option>
			<?php endwhile; ?>
			</select> 
			</div> <br />
			
			<div class="coret"> Lapangan <br /> 
			<select class="databoking" style="margin-left: 30px; width: 60%;" id="container" name="lpgn">
				<option value="satu" type="text" >lapangan ke-</option>
			 <select>
			</div><br />
            
            <div class="coret"> Tanggal </div> 
			<input class="databoking" type="date" placeholder="Tanggal" name="tgl_pesan"> 
            
            <div class="coret"> Jam </div>
			<input class="databoking" type="time" placeholder="Pukul" name="jam_pesan"> 
            
			<div class="kunci" align="center">
			<input class="tombol" type="submit" value="Register" name="submit">
			</div>

			 
			
			 

		</form>
		</div>

	</div>
</div>

<script src="js/index.js"></script>
<script src="ajax/pesanan.php"></script>
</body>
</html>