<?php 

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// routers/index.php


    if (isset($_GET['contacts'])):
        include "../app/controllers/pagesController.php";
        contactsAction();

    elseif (isset($_GET['productID'])):
        include "../app/controllers/productsController.php";
        showAction();
    
    else:
        include "../app/controllers/productsController.php";
        indexAction();
    
endif;