<?php 

// app/models/productsModel.php

function findAll() {
    return [
        ['id' => 1, 'name' => 'Product 1', 'price' => 19.90],
        ['id' => 2, 'name' => 'Product 2', 'price' => 29.90],
        ['id' => 3, 'name' => 'Product 3', 'price' => 39.90],
    ];
}


function findOneById(int $id) {
    return [
        'id' => $id,
        'name' => "Product $id",
        'price' => 49.90
    ];
}