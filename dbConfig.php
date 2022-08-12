<?php
// Database configuration
$dbHost     = "localhost";
$dbUsername = "root";
$dbPassword = "root";
$dbName     = "codexworld";

// Create database connection
$db = new mysql($dbHost, $dbUsername, $dbPassword, $dbName);

// Check connection
if ($db->connect_error) {
    die("Connection failed: " . $db->connect_error);
}
?>