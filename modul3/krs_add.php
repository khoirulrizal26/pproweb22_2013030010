 <?php 
include "koneksi.php";
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>KRS</title>
</head>
<body>
<h2>Tambah Data KRS</h2>
<a href="krs.php">LIHAT</a> | <a href="krs_add.php">TAMBAH</a>
<br>
<form action="krs_proc.php" method="post">
    ID<br>
    <input type="text" name="id"><br>
    Npm - Nama<br>
    <select name="mhs_npm">
        <?php 
            $sql = "SELECT * FROM mhss";
            $res = $conn->query($sql);
            while($rows = $res->fetch_array(MYSQLI_BOTH)){
                echo "<option value='".$rows['npm']."'>".$rows['npm']." - ".$rows['nama']."</option>";
            }
        ?>
    </select><br>
    Mata Kuliah<br>
   <select name="mk_kode">
        <?php 
            $sql = "SELECT * FROM mk";
            $res = $conn->query($sql);
            while($rows = $res->fetch_array(MYSQLI_BOTH)){
                echo "<option value='".$rows['kode']."'>".$rows['kode']." - ".$rows['nama']."</option>";
            }
        ?>
    </select><br>
    Semester<br>
    <input type="text" name="sem"><br>

    Tahun Akademik <br>
    <select name="ta_id">
        <?php 
            $sql = "SELECT * FROM ta";
            $res1 = $conn->query($sql);
            while($rows1 = $res1->fetch_array(MYSQLI_BOTH)){
                echo "<option value='".$rows1['id']."'>".$rows1['nama']."</option>";
            }
            
        ?>
    </select><br>
    Nilai<br>
    <input type="text" name="nilai"><br>

    <input type="submit" name="krs_add" value="SIMPAN">
</form>
</body>
</html>