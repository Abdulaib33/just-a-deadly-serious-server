<h2>Monsters List</h2>

<ul>
    <?php foreach($monsters as $monster): ?>
        <li>
            <a href="?monsters=show&id=<?php echo $monster['id']?>">
                <?php echo $monster['name']?>
            </a>
        </li>
    <?php endforeach ?>
</ul>