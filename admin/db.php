<?php

$servername = getenv("DB_HOST") ?: "localhost";
$username   = getenv("DB_USER") ?: "root";
$password   = getenv("DB_PASS") !== false ? getenv("DB_PASS") : "";
$db         = getenv("DB_NAME") ?: (getenv("ADMIN_DB_NAME") ?: "onlinecart");
$port       = getenv("DB_PORT") ? (int)getenv("DB_PORT") : 3306;

// Create connection
$con = mysqli_connect($servername, $username, $password, $db, $port);

// Check connection
if (!$con) {
    die("Database connection failed: " . mysqli_connect_error());
}

mysqli_set_charset($con, "utf8mb4");

?>
