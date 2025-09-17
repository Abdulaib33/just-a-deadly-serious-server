<?php 


function contactsAction() {
    global $content;
    ob_start();
    include "../app/views/pages/contacts.php";
    $content = ob_get_clean();
}