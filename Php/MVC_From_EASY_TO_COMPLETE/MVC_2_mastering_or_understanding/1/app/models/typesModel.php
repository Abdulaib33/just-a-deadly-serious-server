<?php 

// app/models/typesModel.php

namespace App\Models\TypesModel;

use \PDO;

function findAll(PDO $connexion) {

    $sql = "SELECT *
            FROM monster_types
            ORDER BY name ASC;
    ";

    $rs = $connexion->query($sql);
    return $rs->fetchAll(PDO::FETCH_ASSOC);

}