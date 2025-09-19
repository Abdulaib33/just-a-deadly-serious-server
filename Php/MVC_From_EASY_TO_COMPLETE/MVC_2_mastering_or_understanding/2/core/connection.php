<?php 
include "../app/config/params.php";
// core/connection.php

try {

    $connexion = new PDO('mysql:host=' . DB_HOST . ';dbname=' . DB_NAME, DB_USER, DB_PASSWORD);

} catch(PDOException $e) {
    return $e->getMessage();
}

