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
		
		/*-----------------------------------------*/

		do{

		}while();
		
		/*-----------------------------------------*/

		for (var i = 0; i < Things.length; i++) {
			Things[i]
		}
		
		/*-----------------------------------------*/

		for (var i in collection) {
			
		}
		
		/*-----------------------------------------*/

		for(var i of collection) {
			
		}
		
		/*-----------------------------------------*/

		collection.forEach();
```
----
### Function/Sous-programme
```js
	function funk(...argument) {
		// body...
	}
	
	/*-----------------------------------------*/
	
	function funky(...argument) {
		// body...
	}
	
	/*-----------------------------------------*/
	
	(arg1,arg2) => {
		/*function anonyme le mot-clef 'function' est optionnel avant les parentheses*/
	}
```
----
## Package
```js
	//on met export devant chaque element a exporter
	
	export function funky(arg1){
	
	}
	
	//ou alors on utilise le mots export devant un groupe
	
	export { variable, fonction, classes, etc };
	
	/*-----------------------------------------*/
	
	import { variable, fonction, classes, etc } from 'modul_name.js'
	
```
----
## Exception
```js
	try {
	
	}
	catch(err) {
	
	}
	finally {

	}
	
	/*-----------------------------------------*/

	throw new Error('Exception message');	//on est pas obligé de throw des Error (chaines, objet, etc...)
```
----
## Multithread/task
```js
```
## Mot de language
```js
	abstract	
	arguments	
	await*	
	boolean
	break	
	byte	
	case	
	catch
	char	
	class
	const	
	continue
	debugger	
	default	
	delete	
	do
	double	
	else	
	enum
	eval
	export
	extends	
	false	
	final
	finally	
	float	
	for	
	function
	goto	
	if	
	implements	
	import
	in	
	instanceof	
	int	
	interface
	let
	long	
	native	
	new
	null	
	package	
	private	
	protected
	public	
	return	
	short	
	static
	super
	switch	
	synchronized	
	this
	throw	
	throws	
	transient	
	true
	try	
	typeof	
	var	
	void
	volatile	
	while	
	with	
	yield
```
