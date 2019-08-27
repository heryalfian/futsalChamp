

//mencari html 
var umbak = document.getElementById('umbak');
var container = document.getElementById('container');
var pilen = document.getElementById('pilen');


//menambahkan event ketika klik cabang
pilen.addEventListener('change', function(){
	
	//objek ajax

	var xhr = new XMLHttpRequest();
	
	//cek
	xhr.onreadystatechange = function(){
		if( xhr.readyState == 4 && xhr.status == 200 ) {
			container.innerHTML = xhr.responseText;
		}
	} 

	//eksekusi 
	xhr.open('GET', 'ajax/pesanan.php?id='+pilen.value, true);
	xhr.send();

});
