<?php

use \App\Controllers\UsersController;

include_once '../app/controllers/usersController.php';

switch ($_GET['users']):
        // ?users=show&id=x
    case 'show':
        UsersController\showAction($connexion, $_GET['id']);
        break;
    default:
        UsersController\indexAction($connexion);
        break;
endswitch;
