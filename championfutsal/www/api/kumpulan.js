
// mencari html
var tanggal = document.getElementById('tanggal');
var pilihlpgn = document.getElementById('pilihlpgn');
//var centang = document.getElementById('centang');
//var dtpesan = document.getElementById('dtpesan');

//link penghubung
	function pindahlaman(linklapangan) {
		location.href=linklapangan;
	}

function voicepesan(){

	var xhttp = new XMLHttpRequest();
	xhttp.open("GET", "http://localhost:8080/service/slim-api/public/semua/", true);
    //xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send();
	
		xhttp.onreadystatechange = function() {
         if (xhttp.readyState == 4) {
             //alert(xhttp.responseText);
             var obj = eval ("("+xhttp.responseText+")");

	document.getElementById("dtpesan").innerHTML = 
	'Nama  : '+obj.data[0].nama+
	'<br />No Hp : '+obj.data[0].no_hp+ 
	'<br />Id Pemesanan : '+obj.data[0].id_pemesanan+
	'<br />Id Pelanggan : '+obj.data[0].id_pelanggan+
	'<br />Id Lokasi :' +obj.data[0].id_lokasi+ 
	'<br />Lapangan ke- :' +obj.data[0].lpgn+
	'<br />Tgl Pesan :' +obj.data[0].tgl_pesan+
	'<br />Jam Pesan :' +obj.data[0].jam_pesan+
	'<br />Jam Main  :' +obj.data[0].jam_main+
	'<br />Durasi    :' +obj.data[0].durasi+' '+'jam';
         }
    };    
}

function aran(){
	var u = document.getElementById("nama").value;
	var v = document.getElementById("no_hp").value;
	
	var w= u+'/'+v;
	
	var xhttp = new XMLHttpRequest();
	xhttp.open("GET","http://localhost:8080/service/slim-api/public/costumer/"+w); 
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send();

	
	
	xhttp.onreadystatechange = function() {
         if (xhttp.readyState == 4) {
            console.log(xhttp.responseText);	
            pindahlaman('index.html');	    
         }
    };

}


//====================================================//
//memanggil semua fungsi untuk tombol register cab1

function borong1(){
	var n = document.getElementById("pilihlpgn").value;
	var date = document.getElementById("tanggal").value;
	
	var cek = document.getElementsByClassName("checks");
	var turet ="";
	var jumlah = 0;

	for (i=0; i<16; i++){
		if (cek[i].checked === true) {
			turet += cek[i].value+" ";
			
		}
	}
	jumlah=turet.split(" ");
	data=jumlah.length-1;
	//alert(turet+data);
	//document.getElementById('test3').innerHTML = turet+data;
	var xhttp = new XMLHttpRequest();
	xhttp.open("GET","http://localhost:8080/service/slim-api/public/all/1/"+n+"/"+date+"/"+'jam_pesan/'+turet+"/"+data); 
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send();
	
	
		xhttp.onreadystatechange = function() {
         if (xhttp.readyState == 4) {
            console.log(xhttp.responseText);            	    
			pindahlaman('formpesan.html');
         }

    };	


}



//memanggil semua fungsi untuk tombol register cab2

function borong2(){
	var n = document.getElementById("pilihlpgn").value;
	var date = document.getElementById("tanggal").value;
	

	var cek = document.getElementsByClassName("checks");
	var turet ="";
	var jumlah = 0;

	for (i=0; i<16; i++){
		if (cek[i].checked === true) {
			turet += cek[i].value+" ";
			
		}
	}
	jumlah=turet.split(" ");
	data=jumlah.length-1;
	//alert(turet+data);
	//document.getElementById('test3').innerHTML = turet+data;
	var xhttp = new XMLHttpRequest();
	xhttp.open("GET","http://localhost:8080/service/slim-api/public/all/2/"+n+"/"+date+"/"+'jam_pesan/'+turet+"/"+data); 
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send();
	
	
		xhttp.onreadystatechange = function() {
         if (xhttp.readyState == 4) {
           console.log(xhttp.responseText);
           pindahlaman('formpesan.html');
         }

    };	


}


//memanggil semua fungsi untuk tombol register cab3

function borong3(){
	var n = document.getElementById("pilihlpgn").value;
	var date = document.getElementById("tanggal").value;
	

	var cek = document.getElementsByClassName("checks");
	var turet ="";
	var jumlah = 0;

	for (i=0; i<16; i++){
		if (cek[i].checked === true) {
			turet += cek[i].value+" ";
			
		}
	}
	jumlah=turet.split(" ");
	data=jumlah.length-1;
	//alert(turet+data);
	//document.getElementById('test3').innerHTML = turet+data;
	var xhttp = new XMLHttpRequest();
	xhttp.open("GET","http://localhost:8080/service/slim-api/public/all/3/"+n+"/"+date+"/"+'jam_pesan/'+turet+"/"+data); 
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send();
	
	
		xhttp.onreadystatechange = function() {
         if (xhttp.readyState == 4) {
            console.log(xhttp.responseText);
            pindahlaman('formpesan.html');	    
         }

    };	


}

//-----------------------------------------------//

//orderan yang sudah masuk
function bokingan(){

	var xhttp = new XMLHttpRequest();
	xhttp.open("GET", "http://localhost:8080/service/slim-api/public/register/", true);
    //xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send();
	
		xhttp.onreadystatechange = function() {
         if (xhttp.readyState == 4) {
             //alert(xhttp.responseText);
             var obj = eval ("("+xhttp.responseText+")");
             	//console.log(obj.data[0]);
             document.getElementById( "cabangx" ).value = obj.data[0].id_lokasi;
             document.getElementById( "legos" ).value = obj.data[0].lpgn;
    	     document.getElementById( "tanggalan" ).value = obj.data[0].tgl_pesan;
    	     document.getElementById( "jam" ).value = obj.data[0].jam_main;
    	     document.getElementById( "durasi" ).value = obj.data[0].durasi+' '+'jam';	 	   
    	};
	}
}

//=========================
//RESCHEDULE

function gantilah(){

	var xhttp = new XMLHttpRequest();
	xhttp.open("GET", "http://localhost:8080/service/slim-api/public/semua/", true);
    //xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send();
	
		xhttp.onreadystatechange = function() {
         if (xhttp.readyState == 4) {
             //alert(xhttp.responseText);
             var obj = eval ("("+xhttp.responseText+")");
	
             var id_lokasi = obj.data[0].id_lokasi;
             //console.log(id_lokasi);
             if (id_lokasi==1){
             	pindahlaman('lapangan1update.html');
             }else if(id_lokasi==2){
             	pindahlaman('lapangan2update.html');
             }else if(id_lokasi==3){
             	pindahlaman('lapangan3update.html');
             }
		}
	};
}

//----------------------------------------------------//
//untuk mengetahui tiap tanggal ke-x lap ke- n bahwa jam sudah terpesan
//====================================================//

function periksa1(){	

	var tgl = document.getElementById("tanggal").value;   	
	var lap	= document.getElementById("pilihlpgn").value;
	console.log("Tanggal : " + tgl);

	var dataCek = document.getElementById("cek-booking");
	if(tgl==""){
		document.getElementById("cek-booking").innerHTML="";
		var para = document.createElement("p");
		para.setAttribute("id", "p1");
		var node = document.createTextNode("Masukkan tanggal dahulu");
		para.appendChild(node);
		dataCek.appendChild(para);
	}else{
		var p1 = document.getElementById("p1"); 
		if (p1 != null) {
			dataCek.removeChild(p1);			
		}

	var elems = document.querySelectorAll(".checks");
	elems.forEach(function(element) {
	  element.parentNode.removeChild(element);
	});
	var angkanol = "";
		document.getElementById("cek-booking").innerHTML="";
		for (var i = 0; i < 16; i++) {
			/*var check = document.createElement("input");
			check.setAttribute("class","checks");
			check.setAttribute("type","checkbox");
			check.setAttribute("value",(8+i)+":00");
			check.setAttribute("name","12:00");
			check.setAttribute("id","check"+i);
			//var a= document.getElementById("check0");
			//a.innerHTML = "aa";
			dataCek.appendChild(check);*/
			if((8+i)==8 || (8+i)==9){
				angkanol="0";
			}
			else{
				angkanol="";
			}
			if((i+1)%4==0){
				document.getElementById("cek-booking").innerHTML+="<input type='checkbox' class='checks' value='"+(8+i)+":00' name='12:00' id='check"+i+"' />"+angkanol+(8+i)+":00<br />";
			}else{
				document.getElementById("cek-booking").innerHTML+="<input type='checkbox' class='checks' value='"+(8+i)+":00' name='12:00' id='check"+i+"' />"+angkanol+(8+i)+":00";
			}
		}
	}

	var xhttp = new XMLHttpRequest();
	xhttp.open("GET","http://localhost:8080/service/slim-api/public/booking/1/"+lap+"/"+tgl); 
	//xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send();
	xhttp.onreadystatechange = function() {

		var jam_mainBooking=[];	
        if (xhttp.readyState == 4) {
			var dataBooking = eval ("("+xhttp.responseText+")");

			console.log(dataBooking);
			var cek = document.getElementsByClassName("checks");

			if(dataBooking.data == false){
				console.log("Tes");
			}else{
				for (var i = 0; i < dataBooking.data.length; i++) {
					var jumlah = dataBooking.data[i].jam_main.split(" ")
					for (var j = 0; j < jumlah.length; j++) {
					   	jam_mainBooking.push(jumlah[j]);
					}
				}


			    for (var i = 0; i < cek.length; i++) {
			    	for (var j = 0; j < jam_mainBooking.length; j++) {
			    		if(cek[i].value==jam_mainBooking[j]){
						    cek[i].disabled = true;
						    // cek[i].checked = true;
			    		}
			    	}
			    } 				
			}
         }
    };

}

function periksa2(){	

	var tgl = document.getElementById("tanggal").value;   	
	var lap	= document.getElementById("pilihlpgn").value;
	console.log("Tanggal : " + tgl);

	var dataCek = document.getElementById("cek-booking");
	if(tgl==""){
		document.getElementById("cek-booking").innerHTML="";
		var para = document.createElement("p");
		para.setAttribute("id", "p1");
		var node = document.createTextNode("Masukkan tanggal dahulu");
		para.appendChild(node);
		dataCek.appendChild(para);
	}else{
		var p1 = document.getElementById("p1"); 
		if (p1 != null) {
			dataCek.removeChild(p1);			
		}

	var elems = document.querySelectorAll(".checks");
	elems.forEach(function(element) {
	  element.parentNode.removeChild(element);
	});
	var angkanol = "";
		document.getElementById("cek-booking").innerHTML="";
		for (var i = 0; i < 16; i++) {
			/*var check = document.createElement("input");
			check.setAttribute("class","checks");
			check.setAttribute("type","checkbox");
			check.setAttribute("value",(8+i)+":00");
			check.setAttribute("name","12:00");
			check.setAttribute("id","check"+i);
			//var a= document.getElementById("check0");
			//a.innerHTML = "aa";
			dataCek.appendChild(check);*/
			if((8+i)==8 || (8+i)==9){
				angkanol="0";
			}
			else{
				angkanol="";
			}
			if((i+1)%4==0){
				document.getElementById("cek-booking").innerHTML+="<input type='checkbox' class='checks' value='"+(8+i)+":00' name='12:00' id='check"+i+"' />"+angkanol+(8+i)+":00<br />";
			}else{
				document.getElementById("cek-booking").innerHTML+="<input type='checkbox' class='checks' value='"+(8+i)+":00' name='12:00' id='check"+i+"' />"+angkanol+(8+i)+":00";
			}
		}
	}

	var xhttp = new XMLHttpRequest();
	xhttp.open("GET","http://localhost:8080/service/slim-api/public/booking/2/"+lap+"/"+tgl); 
	//xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send();
	xhttp.onreadystatechange = function() {

		var jam_mainBooking=[];	
        if (xhttp.readyState == 4) {
			var dataBooking = eval ("("+xhttp.responseText+")");

			console.log(dataBooking);
			var cek = document.getElementsByClassName("checks");

			if(dataBooking.data == false){
				console.log("Tes");
			}else{
				for (var i = 0; i < dataBooking.data.length; i++) {
					var jumlah = dataBooking.data[i].jam_main.split(" ")
					for (var j = 0; j < jumlah.length; j++) {
					   	jam_mainBooking.push(jumlah[j]);
					}
				}


			    for (var i = 0; i < cek.length; i++) {
			    	for (var j = 0; j < jam_mainBooking.length; j++) {
			    		if(cek[i].value==jam_mainBooking[j]){
						    cek[i].disabled = true;
						    // cek[i].checked = true;
			    		}
			    	}
			    } 				
			}
         }
    };

}

function periksa3(){	

	var tgl = document.getElementById("tanggal").value;   	
	var lap	= document.getElementById("pilihlpgn").value;
	console.log("Tanggal : " + tgl);

	var dataCek = document.getElementById("cek-booking");
	if(tgl==""){
		document.getElementById("cek-booking").innerHTML="";
		var para = document.createElement("p");
		para.setAttribute("id", "p1");
		var node = document.createTextNode("Masukkan tanggal dahulu");
		para.appendChild(node);
		dataCek.appendChild(para);
	}else{
		var p1 = document.getElementById("p1"); 
		if (p1 != null) {
			dataCek.removeChild(p1);			
		}

	var elems = document.querySelectorAll(".checks");
	elems.forEach(function(element) {
	  element.parentNode.removeChild(element);
	});
	var angkanol = "";
		document.getElementById("cek-booking").innerHTML="";
		for (var i = 0; i < 16; i++) {
			/*var check = document.createElement("input");
			check.setAttribute("class","checks");
			check.setAttribute("type","checkbox");
			check.setAttribute("value",(8+i)+":00");
			check.setAttribute("name","12:00");
			check.setAttribute("id","check"+i);
			//var a= document.getElementById("check0");
			//a.innerHTML = "aa";
			dataCek.appendChild(check);*/
			if((8+i)==8 || (8+i)==9){
				angkanol="0";
			}
			else{
				angkanol="";
			}
			if((i+1)%4==0){
				document.getElementById("cek-booking").innerHTML+="<input type='checkbox' class='checks' value='"+(8+i)+":00' name='12:00' id='check"+i+"' />"+angkanol+(8+i)+":00<br />";
			}else{
				document.getElementById("cek-booking").innerHTML+="<input type='checkbox' class='checks' value='"+(8+i)+":00' name='12:00' id='check"+i+"' />"+angkanol+(8+i)+":00";
			}
		}
	}

	var xhttp = new XMLHttpRequest();
	xhttp.open("GET","http://localhost:8080/service/slim-api/public/booking/3/"+lap+"/"+tgl); 
	//xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send();
	xhttp.onreadystatechange = function() {

		var jam_mainBooking=[];	
        if (xhttp.readyState == 4) {
			var dataBooking = eval ("("+xhttp.responseText+")");

			console.log(dataBooking);
			var cek = document.getElementsByClassName("checks");

			if(dataBooking.data == false){
				console.log("Tes");
			}else{
				for (var i = 0; i < dataBooking.data.length; i++) {
					var jumlah = dataBooking.data[i].jam_main.split(" ")
					for (var j = 0; j < jumlah.length; j++) {
					   	jam_mainBooking.push(jumlah[j]);
					}
				}


			    for (var i = 0; i < cek.length; i++) {
			    	for (var j = 0; j < jam_mainBooking.length; j++) {
			    		if(cek[i].value==jam_mainBooking[j]){
						    cek[i].disabled = true;
						    // cek[i].checked = true;
			    		}
			    	}
			    } 				
			}
         }
    };

}



//-------------------------------------------------------//
function update1(){
	var n = document.getElementById("pilihlpgn").value;
	var date = document.getElementById("tanggal").value;
	
	var cek = document.getElementsByClassName("checks");
	var turet ="";
	var jumlah = 0;

	for (i=0; i<16; i++){
		if (cek[i].checked === true) {
			turet += cek[i].value+" ";
			
		}
	}
	jumlah=turet.split(" ");
	data=jumlah.length-1;
	//alert(turet+data);
	//document.getElementById('test3').innerHTML = turet+data;
	var xhttp = new XMLHttpRequest();
	xhttp.open("GET","http://localhost:8080/service/slim-api/public/rubah/"+n+"/"+date+"/"+'jam_pesan/'+turet+"/"+data);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send();
		
		xhttp.onreadystatechange = function() {
         if (xhttp.readyState == 4) {
            console.log(xhttp.responseText);            	    
			pindahlaman('index.html');
         }

    };	


}

