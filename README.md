�lections au Conseil National
=============================

Logiciel de r�serve pour le Canton de Vaud
------------------------------------------

Lors des �lections pour le Conseil National du 23 octobre 2011, organis� selon le syst�me
de la proportionnelle, le Canton de Vaud a d�cid� d'utiliser son nouveau portail d'acc�s
s�curis� IAM pour la saisie de tous les bulletins de votes modifi�s.

Ce syst�me ne semble pas vraiment fiable d'apr�s les essais que nous, les scrutateurs de
la Commune de Grandcour, avons fait en date du 15 octobre! C'est pourquoi j'ai d�velopp�
ce petit logiciel libre pour la saisie des bulletins, en cas de panne majeure lors 
du scrutin du 23 octobre.

_Le service informatique du canton, que j'ai essay� de contacter, n'a pas donn� son
accord formel. En aucun cas ce logiciel ne saurait remplacer le Proc�s Verbal de Commune � faire par �crit._

Installation et usage
---------------------

* T�l�charger le fichier `ElectionsConseilNational.0.1.zip` depuis le menu `Downloads`;
* Extraire les trois fichiers dans un r�pertoire o� l'utilisateur courant a les droits en lecture et �criture;
* Lancer l'ex�cutable nomm� `national.exe`
* Suivre les menus en ligne de commande... En g�n�ral, il faut entrer des chiffres et presser _Entr�e_.
* Quitter le programme avec `F5`
* Envoyer (??) le fichier `national.db` au service informatique du canton (?!?)

Partie technique
----------------

La partie en C du logiciel est compos� de _Lua_:, mon langage de programmation pr�f�r�, 
et de _SQLite3_ pour g�rer la base de donn�es. Dans le r�pertoire `src` de trouvent donc les sources de 
_Lua 5.1.4_ (seulement tr�s l�g�rement modifi�es), _SQlite 3.7.8_ (amalgam�es) et d'un module d'adaptation 
entre les deux, `lsqlite3.c`. Le programme se compile tr�s facilement avec seulement ces deux fichiers d'amalgames:

	gcc luaall.c sqlite3.c -o lua

Le source de l'application elle-m�me se trouve dans le r�pertoire `lua`, nomm� `national.lua`.

La premi�re fois, il cr�e le fichier de base de donn�es, `national.db`, en prenant des commandes SQL 
du fichier `candidats.sql` pour l'initialisation. 

