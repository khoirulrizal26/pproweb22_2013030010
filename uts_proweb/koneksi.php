<?php 
$servername = 'localhost';
$username = 'root';
$password = '';
$db = 'uts_proweb';

//membuat koneksi db
$conn = new mysqli($servername,$username,$password,$db);

//cek koneksi
if ($conn->connect_error) {
    die("Koneksi Gagal: ". $conn->connect_error);
    
}
?>