<h2>Liste des users</h2>

<ul>
    <?php foreach ($users as $user): ?>
        <li>
            <a href="?users=show&id=<?php echo $user['id']; ?>">
                <?php echo $user['pseudo']; ?>
            </a>
        </li>
    <?php endforeach; ?>
</ul>