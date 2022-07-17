<?php 
include "koneksi.php";
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>ITEM ADD</title>
</head>
<body>
<h2>Tambah Data Satuan</h2>
<a href="item_add.php">TAMBAH</a> <a href="item.php">LIHAT</a>
<br>
<form action="item_proc.php" method="post">
	ID<br>
	<input type="text" name="id"><br>
	Item Grp Id<br>
	<select name="item_grp_id">
		<?php 
			$sql = "SELECT * FROM item_grp";
			$res = $conn->query($sql);
			while($rows = $res->fetch_array(MYSQLI_BOTH)){
				echo "<option value='".$rows['id']."'>".$rows['id']."-".$rows['nama']."</option>";
			}
		?>
	</select><br>
    Barcode<br>
	<input type="text" name="barcode"><br>
	Nama<br>
	<input type="text" name="nama"><br>
    Satuan ID<br>
	<select name="satuan">
        <?php
            $sql = "SELECT * FROM satuan";
            $res1 = $conn->query($sql);
            while($rows1 = $res1->fetch_array(MYSQLI_BOTH)){
                echo "<option value='".$rows1['id']."'>".$rows1['id']."</option>";
            }
        ?>
    </select><br>
    Hpp<br>
	<input type="text" name="hpp"><br>
	Aktif<br>
	<input type="text" name="aktif"><br>
    Crt<br>
	<input type="text" name="crt"><br>
    Crt Date<br>
	<input type="text" name="ctr_date"><br>
    Upd<br>
	<input type="text" name="upd"><br>
    Upd Date<br>
	<input type="text" name="upd_date"><br>
	Harga Jual<br>
	<input type="text" name="hargajual"><br>
	Supllier<br>
	<input type="text" name="supllier"><br>

	<input type="submit" name="proses" value="SIMPAN">
</form>
</body>
</html>