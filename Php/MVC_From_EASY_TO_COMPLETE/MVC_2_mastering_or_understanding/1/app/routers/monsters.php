<?php 

// app/routers/monsters.php

use \App\Controllers\MonstersController;

include_once "../app/controllers/monstersController.php";

switch ($_GET['monsters']):
        // ?monsters=show&id=X
    case "show":
        MonstersController\showAction($connexion, $_GET['id']);
        break;
    default:
        MonstersController\indexAction($connexion);
        break;
endswitch;