GPS MVC:

    STRUCTURE DE L'APP:
        - app
            - controllers
                - monstersController.php
            - models
                - monstersModel.php
            - routers
                - index.php // Router de base
            - views
                - monsters
                - pages
                - templates
                    - partials
                    - default.php
        - public
            - index.php // Dispatcher
            - CSS, JS, ...

-------------------------------------------------------------------
    POUR LA ROUTE PAR DÉFAUT
    PATTERN: /
    CTRL: monstersController
    ACTION: index

        1. Copier/coller le code du template fourni dans ./app/views/templates/default.php
        2. Repérer la zone dynamique et la placer (echo $content)
        3. Décomposer le template en partials ./app/views/templates/partials/_...
        4. Le dispatcher ./public/index.php
            - Charger le router (require_once)
            - Charger le template (require_once)

        5. LE ROUTER ./app/routers/index.php
            - La route par défaut (pas de structure if): liste des monsters
                - Charger le CTRL : monstersController (include_once)
                - Lance une action: indexAction 
        6. LE CTRL ./app/controllers/monstersController.php
            - fonction indexAction ()
                - Charge le ./app/models/monstersModel (include_once)
                - On met le résultat de la fct findAll() du model dans $monsters
                - On va charger la vue (include) ./app/views/monsters/index.php
                  dans la global $content avec un tampon ob_start(), ob_get_clean()
        7. LE MODEL ./app/models/monstersModel.php 
            - fonction findAll()
                (- exécuter la requête SQL)
                - return du tableau indexé de tableaux associatifs 
                  (3 monsters: id, name, pv, attack, defense, description)
        8. LA VUE ./app/views/monsters/index.php
            - Coller le code HTML fourni pour cette vue
            - Mettre en place de foreach sur le <li>
            - Intégrer les données

-------------------------------------------------------------------
    ROUTE MONSTERS.SHOW
    PATTERN: /?monsterID=x
    CTRL: monstersController
    ACTION: show 

        1. Modifier le href du lien '<a href="">'
            - dans ./app/views/monsters/index.php 
            - mettre ?monsterID=xxx dans le href 
            - mettre l'id du $monster
            - <a href="?monsterID=<?php echo $monster['id']; ?>">

        2. Créer la route dans le router
            - ajouter un if else
            - bien définir la condition du if (en fonction du pattern d'URL)
            - charger le CTRL et lancer l'action showAction en lui envoyant l'id

        3. Créer l'action dans le CTRL     
            - Charger le Model 
            - Récupérer le résultat du findOneById() en lui envoyant l'id 
              dans $monster 
            - Charger la vue ./app/views/monsters/show.php dans $content 
        
        4. Créer la fct findOneById() du Model 
            - qui retourne un tableau associatif statique pour le moment

        5. Créer la vue avec le code HTML fourni rempli avec les data de $monster
