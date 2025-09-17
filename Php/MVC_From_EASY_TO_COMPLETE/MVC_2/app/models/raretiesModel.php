<?php

namespace App\Models\RaretiesModel;

use \PDO;

function findAll(PDO $connexion): array
{
    $sql = "SELECT *
            FROM rareties
            ORDER BY name ASC;";
    $rs = $connexion->query($sql);
    return $rs->fetchAll(PDO::FETCH_ASSOC);
}
