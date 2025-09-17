<main class="container row">
    <div class="col m8">
        <?php echo $content; ?>
    </div>

    <aside class="col m4">
        <?php
        include_once '../app/models/typesModel.php';
        $types = \App\Models\TypesModel\findAll($connexion);
        include '../app/views/types/_index.php';
        ?>

        <?php
        include_once '../app/models/raretiesModel.php';
        $rareties = \App\Models\RaretiesModel\findAll($connexion);
        include '../app/views/rareties/_index.php';
        ?>
    </aside>

</main>