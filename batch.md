# PowerShell résumé 

---
## Compilation & lancement

on lance avec `script.bat`

---
## commande

| nom   | def  |
| ----- | ---- |
| ASSOC | Affiche ou modifie les applications associées aux extensions de fichiers.
| ATTRIB | Affiche ou modifie les attributs d’un fichier.
| BREAK | Active ou désactive le contrôle étendu de CTRL+C.
| BCDEDIT | Définit les propriétés dans la base de données de démarrage pour le contrôle du chargement d’amorçage.
| CACLS | Affiche ou modifie les listes de contrôles d’accès aux fichiers.
| CALL | Appelle un fichier de commandes à partir d’un autre fichier de commandes.
| CD | Modifie le répertoire ou affiche le répertoire actif.
| CHCP | Modifie ou affiche le numéro de la page de code active.
| CHDIR | Modifie le répertoire ou affiche le nom du répertoire actif.
| CHKDSK | Vérifie un disque et affiche un rapport d’état.
| CHKNTFS | Affiche ou modifie la vérification du disque au démarrage.
| CLS | Efface l’écran.
| CMD | Exécute une nouvelle instance de l’interpréteur de commandes de Windows.
| COLOR | Modifie les couleurs du|ier plan et de l’arrière-plan de la console.
| COMP | Compare les contenus de deux fichiers ou groupes de fichiers.
| COMPACT | Modifie ou affiche la compression des fichiers sur une partition NTFS.
| CONVERT | Convertit des volumes FAT en volumes NTFS.
| COPY | Copie un ou plusieurs fichiers.
| DATE | Affiche ou définit la date.
| DEL | Supprime un ou plusieurs fichiers.
| DIR | Affiche la liste des fichiers et des sous-répertoires d’un répertoire.
| DISKPART | Affiche ou configure les propriétés d'une partition de disque.
| DOSKEY | Modifie les lignes de commande, rappelle des commandes Windows, et crée des macros.
| DRIVERQUERY | Affiche l'état et les propriétés du pilote de périphérique en cours d'utilisation.
| ECHO | Affiche des messages ou active/désactive l'affichage des commandes.
| ENDLOCAL | Stoppe la localisation des modifications d'environnement dans un fichier de commandes.
| ERASE | Supprime un ou plusieurs fichiers.
| EXIT | Quitte l'interpréteur de commandes (CMD.EXE).
| FC | Compare deux fichiers ou groupes de fichiers et affiche les différences.
| FIND | Recherche une chaîne de caractères dans un ou plusieurs fichiers.
| FINDSTR | Cherche des chaînes dans les fichiers.
| FOR | Exécute une commande sur chaque fichier d'un ensemble de fichiers.
| FORMAT | Formate un disque devant être utilisé avec Windows.
| FSUTIL | Affiche ou configure les propriétés du système de fichiers.
| FTYPE | Affiche ou modifie les types de fichiers utilisés dans les associations d'extensions.
| GOTO | Indique l'exécution d'un fichier de commandes pour une ligne identifiée par une étiquette.
| GPRESULT | Affiche les informations de stratégie de groupe pour un ordinateur ou un utilisateur.
| GRAFTABL | Permet à Windows d'afficher un jeu de caractères en mode graphique.
| HELP | Affiche des informations sur les commandes de Windows.
| ICACLS | Afficher, modifier, sauvegarder ou restaurer les listes de contrôle d'accès pour les fichiers et les répertoires.
| IF | Effectue un traitement conditionnel dans un fichier de commandes.
| LABEL | Crée, modifie ou supprime le nom de volume d'un disque.
| MD | Crée un répertoire.
| MKDIR | Crée un répertoire.
| MKLINK | Créer des liens symboliques et des liens physiques
| MODE | Configure un périphérique du système.
| MORE | Affiche la sortie écran par écran.
| MOVE | Déplace un ou plusieurs fichiers d'un répertoire à un autre.
| OPENFILES | Affiche les fichiers partagés ouverts à distance par les utilisateurs.
| PATH | Affiche ou définit le chemin de recherche des fichiers exécutables.
| PAUSE | Interrompt l'exécution d'un fichier de commandes et affiche un message.
| POPD | Restaure la valeur précédente du répertoire actif enregistrée par PUSHD.
| PRINT | Imprime un fichier texte.
| PROMPT | Modifie l'invite de commande de Windows.
| PUSHD | Enregistre le répertoire actif puis le modifie.
| RD | Supprime un répertoire.
| RECOVER | Récupère l'information lisible d'un disque défectueux| | Insère un commentaire dans un fichier de commandes ou CONFIG.SYS.
| REN | Renomme un ou plusieurs fichiers.
| RENAME | Renomme un ou plusieurs fichiers.
| REPLACE |place des fichiers.
| RMDIR | Supprime un répertoire.
| ROBOCOPY | Utilitaire avancé pour copier les fichiers et les arborescences de répertoires
| SET | Affiche, définit ou supprime des variables d'environnement Windows.
| SETLOCAL | Commence la localisation des modifications d'environnement dans un fichier de commandes.
| SC | Affiche ou configure les services (processus en arrière-plan).
| SCHTASKS | Planifie les commandes et les programmes à exécuter sur l'ordinateur.
| SHIFT | Modifie la position des paramètre|plaçables dans un fichier de commandes.
| SHUTDOWN | Permet un arrêt local ou distant correct de l'ordinateur.
| SORT | Trie les entrées.
| START | Ouvre une fenêtre séparée pour l'exécution d'un programme ou d'une commande spécifique.
| SUBST | Associe un chemin d'accès à une lettre de lecteur.
| SYSTEMINFO | Affiche les propriétés et la configuration spécifiques de l'ordinateur.
| TASKLIST | Affiche toutes les tâches en cours d'exécution, y compris les services.
| TASKKILL | Termine ou interrompt un processus ou une application en cours d'exécution.
| TIME | Affiche ou définit l'heure du système.
| TITLE | Définit le titre de la fenêtre pour une session CMD.EXE.
| TREE | Affiche le graphisme de la structure de répertoire d'un lecteur ou d'un chemin d'accès.
| TYPE | Affiche le contenu d'un fichier texte.
| VER | Affiche la version de Windows.
| VERIFY | Demande à Windows de vérifier si vos fichiers sont correctement écrits sur le disque.
| VOL | Affiche le nom et le numéro de série d'un volume de disque.
| XCOPY | Copie les fichiers et les arborescences de répertoires.
| WMIC | Affiche les informations WMI dans l'interface de commande interactive.

## variables

```bat
	
	::32 byte int or string
	%0 nom du fichier
	%1 premier args
	%2 second args
	%* tout les args

	set /A numeric_var=0
	set str_var=0
	echo %str_var%

	SETLOCAL
		set scoped_var=hello
	ENDLOCAL
```

## if

*operateur de comparaison*

| nom | def |
| --- | --- |
| EQU | égal à
| ==  | égal à
| NEQ | différent de
| LSS | inférieur à
| LEQ | inférieur ou égal à
| GTR | supérieur à
| GEQ | supérieur ou égal à

*function de test*

| nom     |            def                |
| ------- | ----------------------------- |
| defined | indique si la variable existe
| exist   | indique si le fichier existe


*option*
*/I* insensible a la casse pour la comparaison des chaines

```bat
	IF %valeur%==0 (
		::code
	) ELSE (
		::code
	)
```


## boucle

```bat
	:loop
	IF %valeur% EQU 0 (
		::code
		GOTO loop
	)
```

| option | def |
| ------ | --- |
| /D | fait la commande sur les repertoires quand il y a des caracteres generiques
| /R | recursif sur les repertoires
| /L | IN (début,pas,fin)
| /F | fait la commande sur chaque ligne de fichiers de l'ensemble

```bat
	FOR %%i IN (ensemble) DO code
	FOR /L %%i IN (debut, pas, fin) DO code 
	FOR /F "eol=; tokens=2,3* delims=, " %%i IN (fichier.txt) DO @echo %i %j %k
```
