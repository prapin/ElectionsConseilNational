Élections au Conseil National
=============================

Logiciel de réserve pour le Canton de Vaud
------------------------------------------

Lors des élections pour le Conseil National du 23 octobre 2011, organisé selon le système
de la proportionnelle, le Canton de Vaud a décidé d'utiliser son nouveau portail d'accès
sécurisé IAM pour la saisie de tous les bulletins de votes modifiés.

Ce système ne semble pas vraiment fiable d'après les essais que nous, les scrutateurs de
la Commune de Grandcour, avons fait en date du 15 octobre! C'est pourquoi j'ai développé
ce petit logiciel libre pour la saisie des bulletins, en cas de panne majeure lors 
du scrutin du 23 octobre.

_Le service informatique du canton, que j'ai essayé de contacter, n'a pas donné son
accord formel. En aucun cas ce logiciel ne saurait remplacer le Procès Verbal de Commune à faire par écrit._

Installation et usage
---------------------

* Télécharger le fichier `ElectionsConseilNational.0.1.zip` depuis le menu `Downloads`;
* Extraire les trois fichiers dans un répertoire où l'utilisateur courant a les droits en lecture et écriture;
* Lancer l'exécutable nommé `national.exe`
* Suivre les menus en ligne de commande... En général, il faut entrer des chiffres et presser _Entrée_.
* Quitter le programme avec `F5`
* Envoyer (??) le fichier `national.db` au service informatique du canton (?!?)

Partie technique
----------------

La partie en C du logiciel est composé de _Lua:, mon langage de programmation préféré, 
et de _SQLite3_ pour gérer la base de données. Dans le répertoire `src` de trouvent donc les sources de 
_Lua 5.1.4_ (seulement très légèrement modifiées), _SQlite 3.7.8_ (amalgamées) et d'un module d'adaptation 
entre les deux, `lsqlite3.c`. Le programme se compile très facilement avec seulement ces deux fichiers d'amalgames:

	gcc luaall.c sqlite3.c -o lua

Le source de l'application elle-même se trouve dans le répertoire `lua`, nommé `national.lua`.

La première fois, il crée le fichier de base de données, `national.db`, en prenant des commandes SQL 
du fichier `candidats.sql` pour l'initialisation. 

