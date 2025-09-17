<?php

namespace App\Models\TypesModel;

use \PDO;

function findAll(PDO $connexion): array
{
    $sql = "SELECT *
            FROM monster_types
            ORDER BY name ASC;";
    $rs = $connexion->query($sql);
    return $rs->fetchAll(PDO::FETCH_ASSOC);
}
