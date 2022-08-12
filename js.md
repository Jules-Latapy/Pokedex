# Javascript Résumé

---
## lancement
	sur une page web avec votre navigateur
	avec node/deno/bun

## Types

*primitif*
```js
	//faible typage
	Omega=3			//portée global
	var   Alpha=1 ;		//portée plus grande
	let   Beta="ouije";	//portée plus local
	const Ceta = NaN ;
```
---
## Tableau et collection
```js
	var a   = new Array();
	var b   = [1,"2"];
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
| ==   | egalité                         |
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
|  =>  | fonction anonyme                |
---
## Condition
```js
		if (true) {

		}
		else{

		}

		(true)?"oui":"non";

		switch(){
			case "monday" : /*blabla*/ break ;
			default:
		}

```
---
### Boucles
```js
		while(true){

		}

		do{

		}while();

		for (var i = 0; i < Things.length; i++) {
			Things[i]
		}

		for (var i in collection) {
			
		}

		for(var i of collection) {
			
		}

		collection.forEach();
```
----
### Function/Sous-programme
```js
		function function_name(argument) {
			// body...
		}
```

UNFINISHED...
	/*--------------------package-------------------------*/

	/*--------------------Exception-----------------------*/
		try{

		}catch(error)

		throw new Error("la erreur");

	/*--------------------Multithread/task----------------*/

	/*----------------------------------------------------*/
	/*                    Objet                           */
	/*----------------------------------------------------*/

	/*--------------------heritage------------------------*/

	/*--------------------mot de language-----------------*/
