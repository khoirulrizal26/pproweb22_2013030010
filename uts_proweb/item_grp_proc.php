<?php 
include "koneksi.php";

//tambah data
if(isset($_POST['proses']) && $_POST['proses']=='SIMPAN'){
	$id = $_POST['id'];
	$upline = $_POST['upline'];
	$level = $_POST['level'];
	$nama = $_POST['nama'];
	$satuan = $_POST['keterangan'];
	$aktif = $_POST['aktif'];
	$crt = $_POST['crt'];
	$crt_date = $_POST['crt_date'];
	$upd = $_POST['upd'];
	$upd_date = $_POST['upd_date'];

	$sql  = "INSERT INTO item_grp
			(id,upline,level,nama,keterangan,aktif,crt,crt_date,upd,upd_date)
			VALUES 
			('$id','$upline','level','$nama','$keterangan','$aktif','$crt','$crt_date','$upd','$upd_date')";
	if(!$res = $conn->query($sql))
		echo $sql;
	else{
		header("Location: item_grp.php");
	}
}
//update data item grp
if(isset($_POST['update'])=='PERBAHARUI'){
	$id = $_POST['id'];
	$upline = $_POST['upline'];
	$level = $_POST['level'];
	$nama = $_POST['nama'];
	$keterangan = $_POST['keterangan'];
	$aktif = $_POST['aktif'];
	$crt_date = $_POST['crt_date'];
	$upd_date = $_POST['upd_date'];

	$sql = "UPDATE item_grp
			SET
				upline 		='$upline',
				level		='$level',
				nama		='$nama',
				keterangan	='$keterangan',
				crt_date	='$crt_date',
				upd_date	='$upd_date'
			WHERE id='$id'";

	if(!$res = $conn->query($sql))
		echo $sql;
	else 
		header("Location: item_grp.php");
}

//hapus data
if(isset($_POST['delete']) && $_POST['delete']=='HAPUS'){
	echo "hapus";
	$id = $_POST['id'];
	$sql = "DELETE FROM item_grp
			WHERE id='$id'";
	if(!$res = $conn->query($sql))
		echo $sql;
	else
		header("Location: item_grp.php");
}
?>