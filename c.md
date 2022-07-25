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
	*int pointeur 
	&addresse
	*void type incompler
```
---
## Tableau et collection
```C
	char* s = (char*) malloc (12*sizeof(char*));
	char  tab[12] ;

	struct aggrega
	{
		//aggrega de types
                //Peut être initialiser comme un tableau {valeur1, valeur2}
                //Ou avec une initialisation sélective {.attribut=valeur1, attribut2=valeur2}
                //On peut mélanger les 2 types d'initialisation 
	};

	union aggrega2{
		//aggrega de types mais qui partage la meme memoire 
		//chacun peut avoir une valeur a la fois
	};

	enum enumeration {
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
|  ... | swnbr variable d'argument       |
|  {}  | block                           |
|  []  | tableau                         |
|  #   | macro                           |
|  &   | adresse de ...                  |
|  ->  | attribut d'une adresse de structure              |
---
## Condition
```C
	if (condition) {

	}
	else{

	}

	/*-----------------------------------------*/

	switch( v ){
		case 3 : printf("3");break;
		default: printf("default");
	}
```
---
### Boucles
```C

	while (condition){

	}

	/*-----------------------------------------*/
	
	do{

	}while(condition);

	/*-----------------------------------------*/
	
	for (int i = 0; i < count; ++i)
	{
		/* code */
	}

```
----
### Function/Sous-programme
```C
	
	void funk(){

	}
	
	/*-----------------------------------------*/

	int funky(char *c,int... n){
		return 3 ;
	}
	
```
----
## Package
```C

	#import <librairie.h>
	#import "userMadePack.h"

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
	register	//la variable va dans le CPU plutot que la memoire /!\ on ne peut acceder a l'addresse et elle doit etre local
	return
	sizeof	
	static		//variables persistante jusqu'a la fin du programme
	switch	
	volatile	//empeche l'optimisation du code de la variable
	while
```


		
