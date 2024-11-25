# Journal de bord du projet encadré

## Travail du jour sur Git et manipulation de fichiers

Aujourd'hui, j'ai appris à créer un dépôt Git, à cloner un dépôt depuis GitHub, et à synchroniser les modifications entre mon ordinateur et GitHub. J'ai également ajouté un fichier journal.md pour suivre mes progrès tout au long du projet. En plus, j'ai effectué des modifications sur ce fichier et les ai commitées pour maintenir une trace de mon travail.

## Scripts - Exercices

Tout d'abord, j'ai déplacé le dossier Ann dans le dossier ppe1-2024, car j'avais oublié de le faire en réalisant l'exercice de la semaine dernière, ce qui avait causé des problèmes après avoir fait un push sur GitHub. Ensuite, j'ai créé le fichier comptes.sh et j'ai écrit un code pour trouver le nombre de locations. Quand je l'ai exécuté, cela n'a pas fonctionné parce que je devais diriger le script vers le bon dossier contenant les fichiers Ann. Après avoir corrigé cela, j'ai relancé le script, mais cette fois il a listé chaque fichier séparément, donc j'ai ajouté la commande wc -l pour obtenir le résultat attendu, et cela a fonctionné.

Ensuite, je suis passé au deuxième exercice. Au début, je ne comprenais pas quoi faire, alors j'ai consulté les diapositives et j'ai remarqué que des éléments comme $1 étaient des entrées utilisateur. J'ai donc modifié le code que j'avais écrit pour le premier exercice afin qu'il compte les entités en fonction de l'année. Pour ce faire, j'ai remplacé le Location dans les guillemets par $2 et j'ai utilisé $1 pour l'année comme variable. J'ai ensuite exécuté le script, et cela a fonctionné. Ensuite, je suis passé à la création du fichier compte_par_type_par_an.sh. J'ai copié le code précédent et modifié les noms de variables. La partie B du deuxième exercice était difficile, je ne savais pas quels flags utiliser, alors je me suis basé sur les exercices de la semaine dernière. Cela n'a pas donné le résultat attendu, car le script a généré le résultat suivant :
   1 ann/2017_01_31-003.ann:T1	Location 0 6	France
   1 ann/2017_01_31-001.ann:T7	Location 205 211	France
   1 ann/2017_01_31-001.ann:T1	Location 0 6	France
   1 ann/2017_01_29-001.ann:T12	Location 1355 1360	Paris
   1 ann/2017_01_29-001.ann:T1	Location 0 6	France

Comme le résultat n'était pas correct, j'ai ajouté cut, et cela a réglé le problème. En écrivant mon code, j'avais mis un # au mauvais endroit. Avant de faire un push sur Git, j'avais corrigé cela, mais après avoir fait le push, j'ai remarqué que l'erreur était toujours là, je ne sais pas  pourquoi.

Ensuite, je suis passé au troisième exercice. Je n'avais pas compris exactement ce qu'il fallait faire dans la consigne, alors j'ai demandé à ChatGPT, et j'en ai déduit que nous devions afficher un message à l'utilisateur dans la console en fonction de l'entrée donnée. Je ne savais pas comment faire au début, puis j'ai vu un exemple similaire dans les diapositives avec une condition if, donc je m'en suis inspiré pour faire les ajustements sur les autres scripts.

Enfin, pour le quatrième exercice, j'ai effacé le script comptes.sh que j'avais écrit auparavant et je l'ai réécrit en utilisant une boucle for.

Pendant ces exercices, la partie la plus difficile a été d'utiliser correctement les flags.

CODE DE LA DIAPOSITIVE: 
Le code commence par un if qui vérifie qu'un seul argument est fourni, sinon il affiche un message à l'utilisateur. Ensuite, trois variables sont déclarées : la première contient l'argument utilisateur, et les deux autres sont initialisées à zéro pour compter. Ensuite, une boucle while lit chaque ligne et vérifie si elle correspond à un format d'URL valide, en incrémentant les compteurs OK ou NOK en conséquence. À la fin, le script affiche le nombre d'URLs valides et invalides.

## Mini Projet

Je n'ai pas bien compris comment réaliser cette activité, donc il se peut que j'aie fait une erreur. Tout d'abord, je n'ai pas compris si nous devions choisir un nouveau mot nous-mêmes ou utiliser les URL déjà disponibles sur le GitHub du cours. J'ai supposé que c'était la deuxième option, alors j'ai utilisé ces URL. Par conséquent, avant de commencer les exercices, j'ai téléchargé le dossier miniprojet sur mon ordinateur.

Exercice 1 

Q1-
Nous utilisons la méthode cat pour afficher le contenu du fichier à l’écran. D’ailleurs, j’ai utilisé cela pour lire le fichier miniprojet.sh dans cette question. Ici, une boucle while est utilisée pour afficher l’URL à l’écran.
J’ai recherché sur Internet ce que fait while read -r, et j’ai découvert que cela lit chaque ligne une par une. Donc, en lisant de cette manière, cela affiche chaque ligne séparément avec echo. De cette façon, même si le contenu affiché est identique, cela nous sera utile plus tard si nous voulons traiter les lignes individuellement ou accéder à une ligne spécifique. C’est pour cette raison que while read -r est utilisé à la place de cat.

Q2-
Avec ce code, nous souhaitons exécuter le fichier de notre choix plus tard, c'est pourquoi nous allons utiliser une variable au lieu d’écrire directement "url/fr.txt". Pour cela, nous pouvons remplacer ce chemin par $1. Ensuite, si nous voulons exécuter le fichier, nous pourrons taper la commande ./miniprojet.sh url/fr.txt dans le terminal.

Q2.1-
Pour cela, j'ai ajouté la variable au code ainsi qu'un if pour la validation.
Q3-
Pour cette question, nous voulons voir les URL ligne par ligne avec les numéros de ligne. Pour cela, j'ajoute une variable avant la boucle while pour stocker les numéros de ligne. Je la place dans l'echo afin de la voir d’abord. Ensuite, j'ajoute \t pour l'indentation, puis j'ajoute line. Après chaque ligne, il doit ajouter 1 à ma variable nb. Je place donc cette opération dans la boucle.
Je pense avoir terminé, alors j'essaie d'exécuter le code, mais je reçois une erreur de syntaxe :
./miniprojet.sh: line 3: unexpected EOF while looking for matching `]'
./miniprojet.sh: line 14: syntax error: unexpected end of file
Ensuite, je réalise que j'ai oublié de fermer les guillemets dans ma condition if, donc je corrige cela. Mais cette fois, il ne trouve pas urls.fr.txt. Au moins, je constate que ma validation fonctionne.
Ensuite, je fournis le chemin absolu comme argument, et cette fois, le code fonctionne, mais j'obtiens l'erreur suivante :
./miniprojet.sh: line 11: nb: command not found
En cherchant, je découvre que pour écrire une addition, il faut utiliser (()). Cette fois, j'obtiens le résultat souhaité.


Exercice 2 

Q1- 
On m'a demandé d'afficher le code HTTP. Je ne me souvenais plus comment faire cela, alors j’ai cherché sur Internet. Pour obtenir uniquement le code HTTP, on peut utiliser cette commande : curl -s -o /dev/null -w "%{http_code}". Je ne me souviens pas si on l'a vu en cours, mais j'ai utilisé cette méthode pour cet exercice. Le -o /dev/null ignore le contenu de la page, ce qui permet de récupérer uniquement l’information souhaitée avec -w "%{http_code}". Ensuite, j’ai ouvert nano, et j'ai ajouté cela dans une variable, puis j'ai ajouté l'affichage en tableau avec les numéros de ligne, dans la boucle while.
Quand j'ai exécuté le code, j'ai reçu une erreur command not found. Après un moment, j'ai remarqué que j'avais accidentellement laissé un espace en trop, donc je l'ai supprimé, et ensuite ça a fonctionné.
Q1.1-
Je n'ai pas compris si on nous demandait de corriger les codes d’erreur. Dans cet exemple, j’ai les codes 301 et 404. Comme je n'ai pas bien compris la question, je vais simplement ajouter une validation pour afficher un message à l'utilisateur si le code n'est pas 200. Ensuite, j'ai écrit un if, mais j'ai encore fait une erreur : ./miniprojet.sh: line 12: [: missing \]’`. J'avais encore oublié un espace… c'est vraiment confus, pourquoi faut-il un espace ? Bon, cette fois, ça fonctionne.
Q2-
Pour cela, j'ai d'abord fait un curl -i sur une page aléatoire. L'encodage se trouve dans l'en-tête Content-Type sous charset, donc nous devons récupérer cette information.
On peut obtenir les en-têtes avec curl -I, donc j'ai commencé par ça : curl -I "$line". Ensuite, il fallait récupérer l'en-tête Content-Type, alors j'ai ajouté ceci : curl -I "$line" | egrep -i "Content-Type".
Je ne savais pas trop comment récupérer uniquement la partie charset, mais après quelques recherches, j'ai découvert qu'on pouvait utiliser awk.
J'ai lancé le script, mais il a affiché plein de choses inutiles comme "time total", "time spent", etc. J'avais vu dans la question précédente que le flag -s supprimait les informations inutiles, donc je l'ai ajouté et ça a marché.
Q3- 
Ici, j'ai également utilisé le flag -s. J'ai utilisé wc -w pour compter les mots, puis j'ai stocké le résultat dans une variable.

## Mini Projet 3

Au début, j’ai fait cet exercice en écrivant du HTML avec VS Code. Ensuite, en voyant les discussions sur le groupe Discord, j’ai remarqué que certains l’avaient fait avec un script Bash. J’ai donc tout recommencé. Comme je n’avais pas assisté au cours, je ne savais pas exactement ce qui était attendu, et il semble que je n’avais pas fait ce qu’on demandait au départ. Les consignes pourraient être plus détaillées.

J’ai aussi rencontré une erreur liée à un élément que je n’avais pas réussi à supprimer précédemment, ce qui m’empêchait de générer le page. L’erreur était la suivante :
Error: fatal: No url found for submodule path 'Exercices/ann' in .gitmodules

J’ai demandé de l’aide à ChatGPT, et finalement, nous avons réussi à tout supprimer. Cela faisait des semaines que j’essayais de résoudre ce problème, et c’est enfin réglé.

Voici le lien final du projet :
https://dilayduzler.github.io/PPE1-2024/mini-projet-3/

Ensuite, sur Discord, on disait que si on plaçait les fichiers dans un dossier sous PPE1-2024, il fallait inclure le chemin dans le lien. J’ai donc écrit le lien de cette manière :
<a href="mini-projet-3/bonjour.html" …>
Cependant, cela causait des problèmes, donc finalement je n’ai pas utilisé cette solution.







