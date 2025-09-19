<?php 

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// public/index.php

require_once "../core/init.php";
require_once "../app/routers/index.php";
require_once "../app/views/templates/default.php";