<?php
include 'koneksi.php';
?>
<!DOCTYPE html>
<html>
<head>
<title>Uts Proweb</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
    <h2>---ITEM TOKO---</h2>
    <a href="item.php">LIHAT</a> | <a href="item_add.php">TAMBAH</a>
    <br>
<?php include 'koneksi.php';?>
<table width='100%' border='1'>
   <thead>
      <tr>
      <th width='5%'>No.</th>
      <th width='5%'>Act</th>
      <th width='5%'>id</th>
      <th width='5%'>item_grp_id</th>
      <th width='10%'>barcode</th>
      <th width='5%'>nama</th>
      <th width='5%'>satuan_id</th>
      <th width='15%'>hpp</th>
      <th width='5%'>aktif</th>
      <th width='5%'>crt</th>
      <th width='10%'>crt_date</th>
      <th width='5%'>upd</th>
      <th width='10%'>upd_date</th>
      <th width='10%'>Harga Jual</th>
      <th width='10%'>Supllier</th>
      </tr>
   </thead>
   <tbody>
<?php
$sql = "SELECT * FROM item";
$res = $conn->query($sql);
$jml_data = $res ->num_rows;
echo "Ditemukan $jml_data data";
    if($res->num_rows > 0){
        $i = 0;
        while($rows = $res->fetch_array(MYSQLI_ASSOC)){
            $i++;
            echo "<tr>
            <td>$i</td>
            <td align='center'>
            <a href='item_detil.php?id=".$rows['id']."'><img alt='edit' width='18px' src='icon/edit.png' /></a></td>
            </td>
            <td>".$rows["id"]."</td>
            <td>".$rows["item_grp_id"]."</td>
            <td>".$rows["barcode"]."</td>
            <td>".$rows["nama"]."</td>
            <td>".$rows["satuan_id"]."</td>
            <td>".$rows["hpp"]."</td>
            <td>".$rows["aktif"]."</td>
            <td>".$rows["crt"]."</td>
            <td>".$rows["crt_date"]."</td>
            <td>".$rows["upd"]."</td>
            <td>".$rows["upd_date"]."</td>
            <td>".$rows["hargajual"]."</td>
            <td>".$rows["supllier"]."</td>
            
            </tr>";
}
}
?>
   </tbody>
</table>
</body>
</html>