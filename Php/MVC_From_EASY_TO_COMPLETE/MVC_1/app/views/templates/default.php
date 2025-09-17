<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <header>
        <h1>Mon beau site en MVC</h1>
        <nav>
            <ul>
                <li><a href="?">Products</a></li>
                <li><a href="?contacts">Contacts</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <!-- ZONE DYNAMIQUE DU TEMPLATE -->
        <?php echo $content; ?>
    </main>

    <footer>
        EAFC 2025
    </footer>
</body>

</html>