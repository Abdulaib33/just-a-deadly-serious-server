<?php
// LE ROUTER
// ROUTE CONTACTS
// PATTERN: ?contacts
if (isset($_GET['contacts'])):
    include '../app/controllers/pagesController.php';
    contactsAction();

// ROUTE DETAIL D'UN PRODUIT
// PATTERN: ?productID=x
elseif (isset($_GET['productID'])):
    include '../app/controllers/productsController.php';
    showAction();

// ROUTE PAR DÉFAUT
// PATTERN: ?
else:
    include '../app/controllers/productsController.php';
    indexAction();
endif;
