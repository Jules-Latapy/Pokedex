# C résumé 

---
## Compilation & lancement

"gcc leProgramme.c -o execuble.x"
on lance avec "./execuble.x"

---
## Types

*primitif*
```C
	unsigned 
	signed
	auto	    //variable qui se crée a chaque fois (on force a crée)
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
---
## Tableau et collection
```C
	char* s = (char*) malloc (12*sizeof(char*));	//ne pas oublier de verifier != NULL et de free()
	char  tab[12] ;

	struct aggrega1
	{
		//aggrega de types
		//Peut être initialiser comme un tableau {valeur1, valeur2}
		//Ou avec une initialisation sélective {.attribut=valeur1, .attribut2=valeur2}
		//On peut mélanger les 2 types d'initialisation 
	};

	union aggrega2
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
	}

	//on peut utiliser typedef pour ne pas avoir a repeter le type de base (struct, enum, union)
```
---
## Expression

*operateur booleen*
| symbole | definition |
|--|--|
| &&   | et                              |
| \|\|   | ou                              |
| ^    | xou                             |
| !    | non                             |
|  =   | egalité                         |
| !=   | inegalité                       |
|  >   | sup                             |
| >=   | supOuEgal                       |
|  <   | inf                             |
| <=   | infOuEgal                       |

*operateur mathématique*
| symbole | definition |
|--|--|
|  +   | addition                        |
|  -   | negation                        |
|  *   | multiplication                  |
|  /   | division                        |
|  %   | modulo                          |

*autre symboles*
| symbole | definition |
|--|--|
|  =   | affectation                     |
|  :   | switch/label                    |
|  ... | nbr variable d'argument         |
|  {}  | block                           |
|  []  | tableau                         |
|  #   | macro                           |
|  &   | adresse de ...                  |
|  ->  | attribut d'une adresse de structure              |
---
## Condition
```C
	if (condition) 
	{

	}
	else
	{

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
	
	void funk()
	{
		/* code */
	}
	
	/*-----------------------------------------*/

	int funky(char *c,int... n)
	{
		return 3 ;
	}
	
```
----
## Package
```C

	#include <librairie.h>
	#include "userMadePack.h"

```
----
## Préprocesseur
```C

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
    
    # macro operator
    ## macro operator

```
----
## Exception
```C

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
## mot de language
```C
	auto
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
	inline	
	register	//la variable va dans le CPU plutot que la memoire /!\ on ne peut acceder a l'addresse et elle doit etre local
	restrict
	return
	sizeof	
	static		//variables persistante jusqu'a la fin du programme
	switch	
	volatile	//empeche l'optimisation du code de la variable
	while
```


		
