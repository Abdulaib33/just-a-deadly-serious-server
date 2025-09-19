<?php 

// app/controllers/usersController.php

namespace App\Controllers\UsersController;

use \PDO;
use App\Models\UsersModel;


function indexAction(PDO $connexion) {
    
    require_once "../app/models/usersModel.php";
    $users = UsersModel\findAll($connexion);

    global $content;
    ob_start();
    include "../app/views/users/index.php";
    $content = ob_get_clean();
}


function showAction(PDO $connexion, int $id) {

    require_once "../app/models/usersModel.php";
    $user = UsersModel\findOneById( $connexion, $id);

    global $content;
    ob_start();
    include "../app/views/users/show.php";
    $content = ob_get_clean();
}   