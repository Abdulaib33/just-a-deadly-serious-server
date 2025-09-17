<?php

namespace App\Controllers\UsersController;

use \App\Models\UsersModel;
use \PDO;

function indexAction(PDO $connexion)
{
    include_once '../app/models/usersModel.php';
    $users = UsersModel\findAll($connexion);

    global $content;
    ob_start();
    include '../app/views/users/index.php';
    $content = ob_get_clean();
}

function showAction(PDO $connexion, int $id)
{
    include_once '../app/models/usersModel.php';
    $user = UsersModel\findOneById($connexion, $id);

    global $content;
    ob_start();
    include '../app/views/users/show.php';
    $content = ob_get_clean();
}
