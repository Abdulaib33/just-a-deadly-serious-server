<?php

// ROUTES DES USERS
if (isset($_GET['users'])):
    include_once '../app/routers/users.php';

// ROUTES DES MONSTERS
elseif (isset($_GET['monsters'])):
    include_once '../app/routers/monsters.php';

else:
    // ROUTE PAR DEFAUT
    // PATTERN: /
    // CTRL: monstersController
    // ACTION: index
    include_once '../app/controllers/monstersController.php';
    \App\Controllers\MonstersController\indexAction($connexion);
endif;
