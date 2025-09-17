<?php

namespace App\Controllers\MonstersController;

use \App\Models\MonstersModel;
use \PDO;

function indexAction(PDO $connexion)
{
    include_once '../app/models/monstersModel.php';
    $monsters = MonstersModel\findAll($connexion);

    global $content;
    ob_start();
    include '../app/views/monsters/index.php';
    $content = ob_get_clean();
}

function showAction(PDO $connexion, int $id)
{
    include_once '../app/models/monstersModel.php';
    $monster = MonstersModel\findOneById($connexion, $id);

    global $content;
    ob_start();
    include '../app/views/monsters/show.php';
    $content = ob_get_clean();
}
