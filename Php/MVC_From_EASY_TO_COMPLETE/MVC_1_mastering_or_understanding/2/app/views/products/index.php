<h2> Listes des produits</h2>

<ul>
    <?php foreach($products as $product):?>
        <li>
            <a href="=?productID<?php echo $product['id']?>">
                <?php echo $product['name'] ?>
            </a>
        </li>
    <?php endforeach; ?>
</ul>