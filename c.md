# C résumé 

---
## Compilation & lancement

on compile avec `gcc -Wall leProgramme.c -o execuble.x`\
on lance avec `./execuble.x`

---
## Types

*primitif*
```C
	static int d ; //variables persistante qui reste donc jusqu'à la fin du programme
	unsigned 
	signed
	char
	short
	int	
	long
	long long
	float
	double
	int *pointeur //&addresse
	void *type_incompler
	int (*pointeur_sur_fonction)(int);	//pointeur sur une fonction prennant un int return un int
```
*defini par l'utilisateur*
```c
	struct agrega1
	{
		//aggrega de types
		
	}var1,var2;

	union agrega2
	{
		//aggrega de types mais qui partage la meme memoire 
		//chacun peut avoir une valeur a la fois
	};

	enum enumeration 
	{
		LUNDI,
		MARDI=2,
		MERCREDI,
		JEUDI,
		VENDREDI,
		SAMEDI,
		DIMANCHE;
	};

	//on peut utiliser typedef pour ne pas avoir a repeter le type de base (struct, enum, union)
	typedef union agrega2 agrega2;
	
	struct agrega1 a1 = (struct agrega1){valeur1, valeur2};
	struct agrega1 a2 = (struct agrega1){.attribut=valeur1, .attribut2=valeur2};
	//  on accede a un element avec un point: "nom.attribut"
	//  si l'element est un pointeur on peut utiliser la fleche plutot que de s'embeter avec les parenthese et les '&' pour acceder a un element.
```
---
## Tableau et collection
```C
	char* s = (char*) malloc (12*sizeof(char));	//ne pas oublier de verifier != NULL et de free()
	char  tab[4] = {'h','e','l','l'};
	// un tableau est en realité un pointeur sur son premier element
```
---
## Expression

*operateur booleen*
| symbole | definition |
|--|--|
| &&   | et                              |
| \|\|   | ou                            |
| ^    | xou (binaire aussi)             |
| !    | non                             |
| ==   | egalité                         |
| !=   | inegalité                       |
|  >   | sup                             |
| >=   | supOuEgal                       |
|  <   | inf                             |
| <=   | infOuEgal                       |

*operateur mathématique*
| symbole | definition |
|--|--|
|  +   | addition                     |
|  -   | negation                     |
|  *   | multiplication               |
|  /   | division                     |
|  %   | modulo                       |
| i++  | ajout 1, donne la valeur     |
| ++i  | donne la valeur, ajout 1     |
| +=   | ajout direct(même chose avec les autres opérateur) |

*operateur binaire*
| symbole | definition |
|--|--|
| >>  | decalement binaire droite   			|
| <<  | decalement binaire gauche   			|
| \|  | ou binaire            				|
| &   | et binaire                    			|
| ~   | complement binaire    				|

*autre symboles*
| symbole | definition |
|--|--|
|  =   | affectation                     |
|  :   | switch/label/else ternaire      |
|  ... | nbr variable d'argument         |
|  {}  | block                           |
|  []  | tableau                         |
|  #   | macro                           |
|  &   | adresse de ...                  |
|  ?   | opération ternaire              |
|  ->  | attribut d'une adresse de structure              |
---
## Condition
```C
	if (condition) 
	{
		/* code */
	}
	else
	{
		/* code */
	}

	/*-----------------------------------------*/

	switch( v )
	{
		case 3 : printf("3");break;
		default: printf("default");
	}
```
---
### Boucles
```C

	while (condition)
	{
		/* code */
	}

	/*-----------------------------------------*/
	
	do
	{
		/* code */
	}
	while(condition);

	/*-----------------------------------------*/
	
	for (int i = 0; i < count; ++i)
	{
		/* code */
	}

```
----
### Function/Sous-programme
```C
	static void privateFunctionOnlyWhereItsDefined(){}
	
	/*-----------------------------------------*/
	
	void funk()
	{
		/* code */
	}
	
	/*-----------------------------------------*/

	int funky(char *c, int... n)
	{
		return 3 ;
	}
	
	/*-----------------------------------------*/
	
	#define VAR_NAME(v)\
			(#v)
	
```
----
## Package
```C

	#include <librairie.h>
	#include "userMadePack.h"	
	
	//les fichiers header ne servent normalement uniquement qu'a avoir les prototypes de fonctions les corps se trouvent dans des fichiers ".c"
	//on pourrait direct mettre le prototypes dans le fichier qui les imports ca ferait pareil

```
----
## Préprocesseur/Macro
```C
	/*
	le preprocesseur remplace directement le code
	par exemple 
	#define TAILLE 4 n'est pas une variable et n'a pas d'addresse
	TAILLE va etre remplacer par 4 dans tout le programme
	pour ecrire en plusieur ligne on utilise \
	*/

	#include
	#define
	#undef
	#if		#endif  //apres les directive en 'if' placer un endif
	#ifdef
	#ifndef
	#error
	#pragma
    
	//des variables prédéfinie
    
	__FILE__
	__LINE__
	__DATE__
	__TIME__
	__TIMESTAMP__
	__STDC__
    
	//des opérateurs de macro
    
	# macro operator //transforme en chaine
	## macro operator concatenation //fusionne les 2 côtés

```
----
## Exception
```C
	//type d'erreur
	
	errno=	EAGAIN
		EBADF
		EDOM
		EFAULT
		EIO
		ERANGE
	
	/*-----------------------------------------*/
	
	if (errno!=0)
		printf("Une erreur c'est produite\n");
```
----
## Multithread/task
```C
	
	int pid = fork()  //divise le programme en 2 lecture séparé
			//seulement les PID change

```
## Mot de language
```C
	auto		//inutile "durée de vie automatique" => destruction de la variable à la fin du scope, Le mot-clé ne sert à rien vu que c'est le comportement par défaut
	typedef
	break	
	case
	const	
	continue
	default	
	do
	else	
	extern		//dans un autre fichier
	for	
	goto	
	if	
	inline		//lorsqu'une fonction est tres simple se mots remplace sont appel par les instruction qui la compose (souvent utiliser avec static)
	register	//la variable va dans le CPU plutot que la memoire /!\ on ne peut acceder a l'addresse et elle doit etre local
	restrict	//signifie que ce pointeurs est unique et qu'il n'y aura pas d'autre objet pointant au meme endroit --> alors le compilateur optimisera
	return
	sizeof	
	static		//variables persistante jusqu'a la fin du programme
	switch	
	volatile	//empeche l'optimisation du code de la variable car modifiables de l'exterieur
	while
```


		
