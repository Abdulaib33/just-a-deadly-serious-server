<?php

namespace App\Models\MonstersModel;

use \PDO;

function findAll(PDO $connexion): array
{
    $sql = "SELECT * 
            FROM monsters
            ORDER BY created_at DESC
            LIMIT 10;";
    $rs = $connexion->query($sql);
    return $rs->fetchAll(PDO::FETCH_ASSOC);
}

function findOneById(PDO $connexion, int $id): array
{
    $sql = "SELECT * 
            FROM monsters 
            WHERE id = :id;";
    $rs = $connexion->prepare($sql);
    $rs->bindValue(':id', $id, PDO::PARAM_INT);
    $rs->execute();
    return $rs->fetch(PDO::FETCH_ASSOC);
}
