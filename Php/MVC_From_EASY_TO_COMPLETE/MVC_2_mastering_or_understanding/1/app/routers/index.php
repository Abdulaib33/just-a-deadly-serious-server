<?php 

// app/routers/index.php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);


// ROUTES DES USERS

if (isset($_GET['users'])):
    include_once "../routers/users.php";

elseif (isset($_GET['monsters'])):
    include_once "../routers/monsters.php";

else: 
    // ROUTE PAR DEFAULT
    // PATTERN: /
    // CTRL: monstersController
    // ACTION: index

    include_once "../app/controllers/monstersController.php";
    \App\Controllers\monstersController\indexAction($connexion);

endif;