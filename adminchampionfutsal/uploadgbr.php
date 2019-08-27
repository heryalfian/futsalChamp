<?php 
//koneksi db

mysqli_connect("localhost","root","","futsal");

$file = $_FILES['image']['tmp_name'];
 
	if(!isset($file)){
		echo 'Pilih file gambar';
	}else{
		$image 		= addslashes(file_get_contents($_FILES['image']['tmp_name']));
		$image_name	= addslashes($_FILES['image']['name']);
		$image_size	= getimagesize($_FILES['image']['tmp_name']);
 
		if($image_size == false){
			echo 'File yang anda pilih tidak gambar';
		}else{
			if(!$insert = mysql_query("INSERT INTO images VALUES(NULL, '$image_name', '$image')")){
				echo 'Gagal upload gambar';
			}else{
				//ambil id terakhir insert
				$lastid = mysql_insert_id();
 
				echo 'Gambar berhasil di upload.<p>Gambar anda:</p><img src="get.php?id='.$lastid.'">';
			}
		}
	}

 ?>