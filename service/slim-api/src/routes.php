<?php

use Slim\Http\Request;
use Slim\Http\Response;
date_default_timezone_set("Asia/Jakarta");


// Routes

$app->get('/[{name}]', function (Request $request, Response $response, array $args) {
    $this->logger->info("Slim-Skeleton '/' route");
    return $this->renderer->render($response, 'index.phtml', $args);
});


$app->get("/lapangan/{id_lokasi}/{lpgn}", function (Request $request, Response $response, $args){
	
	$id_lokasi= $args['id_lokasi'];
	$lpgn= $args['lpgn'];

	 
    $sql = "INSERT INTO pemesanan (id_lokasi, lpgn) VALUES ('$id_lokasi','$lpgn')";
    $stmt = $this->db->prepare($sql);
    $stmt->execute();
    //$result = $stmt->fetchAll();
    $result = "";
    return $response->withJson(["status" => "success", "data" => $result], 200);
 
});

$app->get("/tanggal/{bulan}/{hari}/{tahun}", function (Request $request, Response $response, $args){
	//$tgl_pesan = date("mm/dd/yyyy");

	$hari= $args['hari'];
	$bulan= $args['bulan'];
	$tahun= $args['tahun'];

	/*
	$tanggal= str_replace("'", "", $tanggal);
	$tanggal1= explode("/", $tanggal);
	$hari= $tanggal1['1'];
	$bulan= $tanggal1['0'];
	$tahun= $tanggal1['2'];
	*/
	$tgllkp= $tahun."-".$bulan."-".$hari;
    $sql = "INSERT INTO pemesanan (tgl_pesan) VALUES ('$tgllkp')";
    $stmt = $this->db->prepare($sql);
    $stmt->execute();

    //$result = $stmt->fetchAll();
    $result = "";
    return $response->withJson(["status" => "success", "data" => $result], 200);
});

$app->get("/jam/{jam_pesan}/{jam_main}/{durasi}", function (Request $request, Response $response, $args){
	$jam_pesan = date("H:i:s");
    $jam_main = $args['jam_main'];
    $durasi = $args['durasi'];
    

    $sql = "INSERT INTO pemesanan (jam_pesan, jam_main, durasi) VALUES ('$jam_pesan','$jam_main','$durasi')";
    $stmt = $this->db->prepare($sql);
    $stmt->execute();
    
    //$result = $stmt->fetchAll();
    $result = "";
    return $response->withJson(["status" => "success", "data" => $result], 200);
});


//nama no hp utk tabel pelanggan
$app->get("/costumer/{nama}/{no_hp}", function (Request $request, Response $response, $args){
	
	$nama = $args ['nama'];
	$no_hp = $args ['no_hp'];
    

    $sql = "INSERT INTO pelanggan (nama, no_hp) VALUES ('$nama','$no_hp')";


    $stmt = $this->db->prepare($sql);
    $stmt->execute();
    $conn= mysqli_connect('localhost', 'root', '', 'futsal');

    $qPemesanan = mysqli_query($conn, "SELECT MAX(id_pemesanan) as id_p from pemesanan ");
    $exec = mysqli_fetch_array($qPemesanan);
    $IdP = $exec['id_p'];
    mysqli_query($conn,"UPDATE pemesanan set id_pelanggan=(select max(id_pelanggan) from pelanggan) where id_pemesanan=$IdP");

    //$result = $stmt->fetchAll();
    $result = "";
    return $response->withJson(["status" => "success", "data" => $result], 200);
});

//menampilkan data pesanan
$app->get("/semua/", function (Request $request, Response $response, $args){
    

    $sql = "SELECT pelanggan.nama, pelanggan.no_hp, pemesanan.id_pemesanan, pemesanan.id_pelanggan, pemesanan.id_lokasi, pemesanan.lpgn, pemesanan.tgl_pesan, pemesanan.jam_pesan, pemesanan.jam_main, pemesanan.durasi FROM pemesanan, pelanggan WHERE pelanggan.id_pelanggan=pemesanan.id_pelanggan ORDER BY id_pemesanan DESC LIMIT 1";
    $stmt = $this->db->prepare($sql);
    $stmt->execute();
    
    $result = $stmt->fetchAll();
    //$result = "";
    return $response->withJson(["status" => "success", "data" => $result], 200);
});


$app->get("/register/", function (Request $request, Response $response, $args){
    

    $sql = "SELECT pemesanan.id_pemesanan, pemesanan.id_pelanggan, pemesanan.id_lokasi, pemesanan.lpgn, pemesanan.tgl_pesan, pemesanan.jam_pesan, pemesanan.jam_main, pemesanan.durasi FROM pemesanan ORDER BY id_pemesanan DESC LIMIT 1";
    $stmt = $this->db->prepare($sql);
    $stmt->execute();
    
    $result = $stmt->fetchAll();
    //$result = "";
    return $response->withJson(["status" => "success", "data" => $result], 200);
});



//--------------------------------//
//revisian ke-bug app
$app->get("/all/{id_lokasi}/{lpgn}/{bulan}/{hari}/{tahun}/{jam_pesan}/{jam_main}/{durasi}", function (Request $request, Response $response, $args){
    
    $id_lokasi= $args['id_lokasi'];
    $lpgn= $args['lpgn'];
    
        $hari= $args['hari'];
        $bulan= $args['bulan'];
        $tahun= $args['tahun'];
    
    $jam_pesan = date("H:i:s");
    $jam_main = $args['jam_main'];
    $durasi = $args['durasi'];
    $tgllkp= $tahun."-".$bulan."-".$hari;
        
     
    $sql = "INSERT INTO pemesanan (id_lokasi, lpgn, tgl_pesan, jam_pesan, jam_main, durasi) VALUES ('$id_lokasi','$lpgn','$tgllkp','$jam_pesan','$jam_main','$durasi')";
    $stmt = $this->db->prepare($sql);
    $stmt->execute();
    //$result = $stmt->fetchAll();
    $result = "";
    return $response->withJson(["status" => "success", "data" => $result], 200);
 
});

//debug
$app->get("/kedebug/", function (Request $request, Response $response, $args){
    

    $sql = "SELECT lpgn, tgl_pesan, jam_main, durasi FROM pemesanan";
    $stmt = $this->db->prepare($sql);
    $stmt->execute();
    
    $result = $stmt->fetchAll();
    //$result = "";
    return $response->withJson(["status" => "success", "data" => $result], 200);
});


//================================//
//reschedule data pemesanan
$app->get("/rubah/{lpgn}/{bulan}/{hari}/{tahun}/{jam_pesan}/{jam_main}/{durasi}", function (Request $request, Response $response, $args){
    
    $lpgn= $args['lpgn'];
        $hari= $args['hari'];
        $bulan= $args['bulan'];
        $tahun= $args['tahun'];
    $tgllkp= $tahun."-".$bulan."-".$hari;
    $jam_pesan = date("H:i:s");
    $jam_main = $args['jam_main'];
    $durasi = $args['durasi'];

    $conn=mysqli_connect('localhost', 'root', '', 'futsal');

    $qPemesanan = mysqli_query($conn, "SELECT MAX(id_pemesanan) as id_pms from pemesanan ");
    $nub = mysqli_fetch_array($qPemesanan);
    $id_pms=$nub['id_pms'];
    mysqli_query($conn,"UPDATE pemesanan SET lpgn = '$lpgn', tgl_pesan='$tgllkp', jam_pesan='$jam_pesan', jam_main='$jam_main', durasi='$durasi' WHERE id_pemesanan = '$id_pms'");


    // $result = $stmt->fetchAll();
    $result = "";
    return $response->withJson(["status" => "success", "data" => $result], 200);
});


$app->get("/booking/{lokasi}/{lpgn}/{bulan}/{hari}/{tahun}", function (Request $request, Response $response, $args){
    
    $lokasi = $args ['lokasi'];
    $lpgn = $args ['lpgn'];
    $hari= $args['hari'];
    $bulan= $args['bulan'];
    $tahun= $args['tahun'];
    $tgl= $tahun."-".$bulan."-".$hari;

    $sql = "SELECT `jam_main` FROM `pemesanan` WHERE `id_lokasi` = '$lokasi' AND `lpgn` = '$lpgn' AND `tgl_pesan` = '$tgl'";

    $stmt = $this->db->prepare($sql);
    $stmt->execute();
    // $conn= mysqli_connect('localhost', 'root', '', 'futsal');

    // $qPemesanan = mysqli_query($conn, "SELECT MAX(id_pemesanan) as id_p from pemesanan ");
    // $exec = mysqli_fetch_array($qPemesanan);
    // $IdP = $exec['id_p'];
    // mysqli_query($conn,"UPDATE pemesanan set id_pelanggan=(select max(id_pelanggan) from pelanggan) where id_pemesanan=$IdP");

    $result = $stmt->fetchAll();
    return $response->withJson(["status" => "success", "data" => $result], 200);
});
