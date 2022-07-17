<?php 
include "koneksi.php";

//tambah data
if(isset($_POST['proses']) && $_POST['proses']=='SIMPAN'){
	$id = $_POST['id'];
	$item_grp_id = $_POST['item_grp_id'];
	$barcode = $_POST['barcode'];
	$nama = $_POST['nama'];
	$satuan_id = $_POST['satuan'];
    $hpp = $_POST['hpp'];
    $aktif = $_POST['aktif'];
    $crt = $_POST['crt'];
    $crt_date = $_POST['crt_date'];
    $upd = $_POST['upd'];
    $upd_date = $_POST['upd_date'];
	$supllier = $_POST['supllier'];
	// $upd_date = $_POST['hargajual'];

	$sql = "INSERT INTO item 
			(id,item_grp_id,barcode,nama,satuan_id,hpp,aktif,crt,crt_date,upd,upd_date,supllier)
			VALUES 
			('$id','$item_grp_id','$barcode','$nama','$satuan_id','$hpp','$aktif','$crt','$crt_date','$upd','$upd_date','$supllier')";
	if(!$res = $conn->query($sql))
		echo $sql;
	else
		header("Location: item.php");
}
//update data
if(isset($_POST['update']) && $_POST['update']=='PERBAHARUI'){
	$id = $_POST['id'];
	$item_grp_id = $_POST['item_grp_id'];
	$barcode = $_POST['barcode'];
	$nama = $_POST['nama'];
	$satuan_id = $_POST['satuan_id'];				
	$hpp = $_POST['hpp'];
	$aktif = $_POST['aktif'];
	$crt = $_POST['crt'];
	$crt_date = $_POST['crt_date'];
	$upd = $_POST['upd'];
	$upd_date = $_POST['upd_date'];
	$supllier = $_POST['supllier'];

	$sql = "UPDATE item
				SET
				item_grp_id ='$item_grp_id',
				barcode		='$barcode',
				nama		='$nama',
				satuan_id	='$satuan_id',
				hpp			='$hpp',
				aktif 		='$aktif',
				crt			='$crt',
				crt_date	='$crt_date',
				upd			='$upd',
				upd_date	='$upd_date',
				supllier	='$supllier'
			WHERE id='$id'";
	if(!$res = $conn->query($sql))
		echo $sql;
	else
		header("Location: item.php");
}

//hapus data
if(isset($_POST['delete']) && $_POST['delete']=='HAPUS'){
	echo "hapus";
	$id = $_POST['id'];
	$sql = "DELETE FROM item
			WHERE id='$id'";
	if(!$res = $conn->query($sql))
		echo $sql;
	else
		header("Location: item.php");
}
?>