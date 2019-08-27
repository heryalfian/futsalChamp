<?php 
	include '../koneksidb.php';

	$id = $_GET['id'];

	$query= "SELECT * FROM lokasi WHERE id_lokasi = '$id'";
	$mauk= mysqli_query($conn,$query);
	$jumlahlapangan = "";
	while ( $tampilLapangan=mysqli_fetch_assoc($mauk)):
		$jumlahlapangan = $tampilLapangan['lpgn'];
	endwhile;



 ?>

		<?php for($i=1;$i<=($jumlahlapangan);$i++){ ?>

		<option id="umbak" value="<?php echo $i; ?>"><?php echo $i; ?></option>
		<?php } //endwhile; ?>