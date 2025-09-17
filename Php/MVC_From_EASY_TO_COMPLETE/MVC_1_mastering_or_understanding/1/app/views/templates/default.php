<?php
    //app/views/templates/default.php
    
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

    <style>
        body {
            background-color: brown;
            color: wheat;
        }
    </style>
<body>

    <header>
        <h1>Mon beau site en MVC</h1>
        <nav>
            <ul>
                <li>
                     <a href="?">Products</a> 
                </li>
                <li>
                     <a href="?contacts">Contacts</a>
                </li>
            </ul>
        </nav>
    </header>

    <main>

        <?php echo $content; ?>

    </main>

    <footer>

        EAFC 2025

    </footer>
    
</body>
</html>