<?php

function findAll(): array
{
    // Ici devrait s'exécuter la requête
    /* SELECT *
       FROM products
       ORDER BY name ASC; */
    return [
        ['id' => 1, 'name' => "Produit 1", 'price' => 19.90],
        ['id' => 2, 'name' => "Product 2", 'price' => 29.90],
        ['id' => 3, 'name' => "Product 3", 'price' => 39.90]
    ];
}

function findOneById(int $id): array
{
    /* SELECT *
       FROM products
       WHERE id = $id; */
    return ['id' => $id, 'name' => "Product $id", 'price' => 49.90];
}
