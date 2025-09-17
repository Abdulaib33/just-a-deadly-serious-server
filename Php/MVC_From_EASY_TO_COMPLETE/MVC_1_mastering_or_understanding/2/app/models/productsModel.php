<?php 

// app/models/productsModel.php

function findAll() {
    return [
        ['id' => 1, 'name' => "Produit 1", 'price' => 19.90],
        ['id' => 2, 'name' => "Produit 2", 'price' => 29.90],
        ['id' => 3, 'name' => "Produit 3", 'price' => 39.90],
        ['id' => 4, 'name' => "Produit 4", 'price' => 49.90],
    ];
}

function findOneById(int $id) {
    return [
        'id' => $id,
        'name' => "Product $id",
        'price' => 0
    ];
}