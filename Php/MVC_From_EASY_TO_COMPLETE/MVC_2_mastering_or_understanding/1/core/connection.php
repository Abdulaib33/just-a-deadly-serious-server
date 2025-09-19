<?php 

// core/connection.php
// require "../app/config/params.php"; THIS LINE WAS TO TEST OUR CONNECTION check the last line
try {
    // THIS ONE HAS BEEN COMMENTED BECAUSE I HAVE FORGET TWICE THE "=" SIGN
    // $connexion = new PDO("mysql:host=" . DB_HOST . ";dbname=" . DB_NAME, DB_USER, DB_PASSWORD );

    // SOMEONE HAS RECOMMEND ME THIS INSTEAD :
    $connexion = new PDO(
    "mysql:host=" . DB_HOST . ";dbname=" . DB_NAME . ";charset=utf8mb4",
    DB_USER,
    DB_PASSWORD,
    [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
    ]
    );

} catch(PDOException $e) {
    echo "Connetion Failed: " . $e->getMessage();
}


var_dump($connexion); // THIS IS TO CHECK OUR CONNECTION 