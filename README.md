# *Récupération du code QuelPoke*
## **Contexte**   

Le développeur est parti, et il nous a été demandé de comprendre ce qui a été fait ainsi que le fonctionnement de l'application. 


## *Description de l'application / Fonctionnement global*

* Le programme est écrit en Go/HTML

* Le protocole utilisé est HTTP. Le port par défaut est 8080 (spécifié par PORT dans les variables d'environnement) mais cela peut etre changé 

* Cette application propose un service web qui génère une page HTML (index.tmpl.html) ou le nom de l'utilisateur est demandé en entrée (via un paramètre de requête name). L'application calcule un ID de Pokémon basé sur le nom fourni, récupère des informations sur le Pokémon correspondant depuis une API externe (https://pokeapi.co/api/v2/pokemon/), et affiche ces informations sur la page

* L'application dépend du service externe PokéAPI (https://pokeapi.co/) pour récupérer les informations sur les Pokémon en fonction de l'ID calculé. Ainsi que une autre API permettant de recupérer l'image (Sprite)


*En résumé, l'application invite l'utilisateur à entrer un nom ou une chaîne de caractères. L'algorithme génère ensuite un hash à partir de cette entrée, puis en calcule le modulo. Le résultat correspond au numéro du Pokémon, qui est ensuite récupéré via l'API et affiché sur l'écran de l'utilisateur.*


## Comment installé sur son poste l'application 

1. Mettre le l'application dans un dossier et la unzip 
2. Installer un compilateur Go sur son poste et l'installer 
3. Pour verifier l'installation du compilateur aller dans le cmd et tapez : **go version**
4. Ouvrir un *CMD* et aller dans le dossier ou se trouve l'application avec un exemple : **CD /test**
5. Pour lancer l'application faire **go build** et après taper dans un navigateur localhost:8080

Ainsi sur la page web vous pouvez marque votre prénom ou celui de quelqu'un d'autre pour savoir à quel Pokémon vous correspondez 

