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
