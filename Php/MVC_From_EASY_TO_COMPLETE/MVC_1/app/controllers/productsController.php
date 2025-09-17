<?php

function indexAction()
{
    include '../app/models/productsModel.php';
    $products = findAll();

    global $content;
    ob_start();
    include '../app/views/products/index.php';
    $content = ob_get_clean();
}

function showAction()
{
    include '../app/models/productsModel.php';
    $product = findOneById($_GET['productID']);

    global $content;
    ob_start();
    include '../app/views/products/show.php';
    $content = ob_get_clean();
}
