# *Récupération du code QuelPoke*
## **Contexte**   

Le développeur est parti, et il nous a été demandé de comprendre ce qui a été fait ainsi que le fonctionnement de l'application. 


## *Description de l'application / Fonctionnement global*

* Le programme est écrit en Go/HTLM

* Le protocole utilisé est HTTP. Le port par défaut est 8080 (spécifié par PORT dans les variables d'environnement) mais cela peut etre changé 

* Cette application semble proposer un service web qui génère une page HTML (index.tmpl.html) ou le nom de l'utilisateur est demandé en entrée (via un paramètre de requête name). L'application calcule un ID de Pokémon basé sur le nom fourni, récupère des informations sur le Pokémon correspondant depuis une API externe (https://pokeapi.co/api/v2/pokemon/), et affiche ces informations sur la page

* L'application dépend du service externe PokéAPI (https://pokeapi.co/) pour récupérer les informations sur les Pokémon en fonction de l'ID calculé. Ainsi que une autre API permettant de recupérer l'image (Sprite)


*En résumé, l'application invite l'utilisateur à entrer un nom ou une chaîne de caractères. L'algorithme génère ensuite un hash à partir de cette entrée, puis en calcule le modulo. Le résultat correspond au numéro du Pokémon, qui est ensuite récupéré via l'API et affiché sur l'écran de l'utilisateur.*


## Comment installé sur son poste l'application 

1. Mettre le l'application dans un dossier et la unzip 
2. Installer un compilateur Go sur son poste et l'installer 
3. Pour verifier l'installation du compilateur aller dans le cmd et tapez : **go version**
4. Ouvrir un *CMD* et aller dans le dossier ou se trouve l'application avec un exemple : **CD /test**
5. Pour lancer l'application faire **go build** et après taper dans un navigateur http://localhost:8080



# Lancement de l'application via Docker #

1. Sur Windows installer le Desktop Docker sur votre poste de travail 
2. Une fois fait n'hésitez pas créer un dossier spécifique avec dedans tout concernant l'application   *go.sum* *go.mod* *main.go*
3. Mettre le Dockerfiles dans ce dossier aussi 


Lancer ensuite un cmd et ce rendre dans le dossier avec cd **chemin_de_votre_dossier** 

Faite ensuite un docker build : *docker build -t myapp .*
Une fois build vous pouvez la Run avec la commande : docker run myapp 

PS : Il est possible de lui mettre des arguments différents avec **-p** pour changer le port ou encore **-d** pour faire tourner le conteneur en tâche de fond.

Une fois lancer vous pouvez aller sur un navigateur et taper http://localhost:8080

