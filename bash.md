# Bash résumé 

---
## Compilation & lancement

on autorise a exécuter avec `chmod u+x leProgramme.sh`
on lance avec `./leProgramme`

---
*comment*
```bash
# comment
:<<BLOCK_COMMENT
	truc
BLOCK_COMMENT
```

---
## Types

*variable*
```bash
	$0		 #nom du script
	$1 		 #premier parametres du code
	$*		 #tt les argument en strings
	$#		 #nbr d'argument
	$$ 		 #Pid
	$? 		 #code de retour de la commande d'avant
	$@		 #tout les argument en arrays
	$_		 #derniere argument de la derniere commande
	$~
	$$       #current shell pid
	$!		 #pid of last process run in background
	$-       #flag set - not reliable
	!!		 #derniere commande

	variable=false
	readonly const=3
```
---
## Tableau et collection
```bash
	list="1 2 3 4 5"
	list=("1" "2" "3" false)
```
---
## Expression

*operateur booleen*

| symbole | definition |
| ---- | ------------------------------- |
| &&   | et                              |
| \|\| | ou                              |
| ^    | xou                             |
| !    | non                             |
| ˽=˽   | egalité                         |
| !=   | inegalité                       |
|  >   | sup                             |
| >=   | supOuEgal                       |
|  <   | inf                             |
| <=   | infOuEgal                       |

*opérateur mathématique*

| symbole | definition |
|--|--|
|  +   | addition                        |
|  -   | negation                        |
|  *   | multiplication                  |
|  /   | division                        |
|  %   | modulo                          |

*opérateur de la commande test*

| option | signifie |
| ------ | -------- |
| -z  | zero
| -eq | equal
| -ne | not equal
| -gt | greater than
| -lt | lesser than
| -ge | greater or equal
| -le | lesser or equal
| -e  | exists : vérifie l'existence d'un fichier
| -f  | file : vérifie l'existence et si c'est un fichier
| -d  | directory : vérifie l'existence d'un répertoire
| -L  | link : vérifie si le fichier est un lien symbolique
| -s  | size : vérifie qu'un fichier n'est pas vide
| -r  | readable : vérifie si un fichier peut être lu
| -w  | writable : vérifie si un fichier peut être écrit ou modifié
| -x  | executable : vérifie si un fichier peut être exécuté
| -nt | newer than : vérifie si un fichier est plus récent qu'un autre
| -ot | older than : vérifie si un fichier est plus ancien qu'un autre

*parenthèses*

| symbole                                       | precision |
| --------------------------------------------- | --------- |
| ( ... )                          	        | subshell |
| (( ... ))              	                | integer arythmetic |
| $(( ... )) 	                                | integer arythmetic with result |
| <( ... )                 	                | file like result |
| >( ... )                                      | pipe instead of file |
| array_like_var=($( ... ))         	| |
| "$( ... )"                             	| interpolation |
| \[ 7 -ne 8 ]                           	| remplace les arguments avec des jokers dedans \*.txt |
| \[\[ 7 -ne 8 ]]                         	| ne remplace pas les arguments avec des jokers |
| echo "list "{destructuration, spreading}  | |
| {0..10}                                   | same with range |

*syntaxe des interpolations*

| interpolation         | def |
| --------------------- | --- |
| ${ interpolation }    |  |
| echo ${url#\*/}       | Remove from the front, the pattern \*/, non-greedy |
| echo ${url##\*/}      | Same, but greedy |
| echo ${url%/\*}       | Remove from the back, matching the pattern /\*, non-greedy |
| echo ${url\%%/\*}     | Same, but greedy |
| echo ${url^^a}        |  |
| echo ${url:2:5}       |  |
| echo ${url/https/ftp} |  |
| echo ${url/[aeiou]/X} |  |
| ${!name}              |  |

*flux*

| symbol | def |
| ------ | --- |
| <      | redirige l'entrée standard |
| >      | redirige la sortie standard |
| >>     | redirige la sortie standard en écrasant |
| <<     |  |
| <<<    |  |
| 0>     | redirige la sortie standard |
| 1>     | redirige l'entrée standard  |
| 2>     | redirige la sortie d'erreur |

---
## Condition
```bash
	if [[ condition ]]; then
		#code
	elif [[ condition ]]; then
		#code
	else
		#code
	fi

	case word in
		pattern_regex_egalité ) instruction ;;
	esac
```
---
### Boucles
```bash
	while [[ condition ]]; do
		#code
	done

	until [[ condition ]]; do  #on peut aussi faire test[condition]
		#code
	done

	for (( i = 0; i < 10; i++ )); do
		#code
	done

	for element in ${allThreads[@]}; #or
	for index   in ${!allThreads[@]}; #or
	for element in $list; do
		#code
	done
```
---
### Function/Sous-programme
```bash
	funk() {
		#code
	}

	function funk {
	}
```
---
## Exception
```bash
	{
		#in case of error
	} || {

	}
```
---
## Preprocessor
```bash
    *      # Correspond à zéro ou plusieurs caractères. Par exemple, *.txt correspond à tous les fichiers avec l'extension .txt.
    ?      # Correspond à un seul caractère. Par exemple, file?.txt correspond à file1.txt, fileA.txt, mais pas à file10.txt.
    [...]  # Correspond à un ensemble de caractères. Par exemple, file[1-3].txt correspond à file1.txt, file2.txt, et file3.txt.
    ! ou ^ # dans un ensemble : Exclut certains caractères. Par exemple, file[!1].txt correspond à tous les fichiers qui ne commencent pas par file1.txt.
    **     # Permet de correspondre à des répertoires de manière récursive. Par exemple, **/*.txt correspond à tous les fichiers .txt dans tous les sous-répertoires.
```
---
## Multithread/task
```bash
	& #ne pas attendre que la commande ce termine 
```
---
## Mot de language
```bash
# $> compgen -k
if
then
else
elif
fi
case
esac
for
select
while
until
do
done
in
function
time
{
}
!
[[
]]
coproc
```
