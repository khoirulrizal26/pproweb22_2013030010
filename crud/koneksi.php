<?php
    $servername = 'sql200.epizy.com';
    $username = 'epiz_32161116';
    $password = 'fK4pNX2uMNqR5Tz';
    $dbname = 'epiz_32161116_akademika';
    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) {
         die("Connection failed: " . $conn->connect_error);
    }
?>
