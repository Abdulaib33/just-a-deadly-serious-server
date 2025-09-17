<?php

namespace App\Models\UsersModel;

use \PDO;

function findAll(PDO $connexion): array
{
    $sql = "SELECT *
            FROM users
            ORDER BY pseudo ASC;";
    $rs = $connexion->query($sql);
    return $rs->fetchAll(PDO::FETCH_ASSOC);
}

function findOneById(PDO $connexion, int $id): array
{
    $sql = "SELECT *
            FROM users
            WHERE id = :id;";
    $rs = $connexion->prepare($sql);
    $rs->bindValue(':id', $id, PDO::PARAM_INT);
    $rs->execute();
    return $rs->fetch(PDO::FETCH_ASSOC);
}
