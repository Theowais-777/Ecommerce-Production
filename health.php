<?php
header('Content-Type: application/json');

$response = [
    'status' => 'healthy',
    'timestamp' => time(),
    'php_version' => PHP_VERSION,
    'app' => 'Ecommerce-Production'
];

echo json_encode($response, JSON_PRETTY_PRINT);
?>

