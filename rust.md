# RUST Résumé

---
## Compilation
on compile avec "rustc leProgramme.c"\
on lance avec "./leProgramme.x"

---
## Types

*primitif*
```rust
	//typage non obligatoire
	//les variables ne sont pas mutables par defaut 
	//immutables != constantes
  	//type d'entier : [i8,i16,i32,i64,i128,isize]
  
	let i    :i32 ;
	let str  :String = "sss";
	
	let mut var = 0 ; //mutable
	const c     = 3 ;
```
---
## Tableau et collection
```rust
  let v : (u32,String,i32) = (25,"something",48) ;
  //acces par v.1
  
  //deconstruction du tuple
  let (x, y, z) = v ;
  
  let t : [i64;5] = [1,2,3,4,5] ;
  
  //[type;taille;valeurDefaut]
```
---
## Expression
	
*operateur booleen*
| symbole | definition |
|--|--|
| &&   | ou                              |
| \|\| | et                              |
| ^    | xou                             |
| !    | non                             |
| ==   | inegalité                       |
| !=   | egalité                         |
|  >   | sup                             |
| >=   | supOuEgal                       |
|  <   | inf                             |
| <=   | infOuEgal                       |

*operateur mathématique*
| symbole | definition |
|--|--|
| +  | concatenation / addition     |
| -  | negation                     |
| *  | multiplication               |
| /  | division                     |
| %  | modulo                       |
| i++| ajout 1 direct               |
| += | ajout direct                 |

*autre symboles*
| symbole | definition |
|--|--|
|  =  | affectation                  |
| ->  | type de retour               |
| ::  | package/methodes             |
| \<T>| generique                    |
| ... | nombre variables d'arguments |
| @T  | annotations                  |
| {}  | section                      |
| []  | tableau                      |
| .   | specification                |
|  :  |	switch/label                 |

---
## Condition
```rust

	if bool {
		/* code */
	}

	variable = if condition { valeur } else { return valeur };

	/*-----------------------------------------*/
	
	match value {
		1=>expression,
		2|3=>expression,
		3..6=>expression
		_=>defaut,
	}
  
```
---
### Boucles
```rust

	loop {
     		/* code */
	}
  
	/*-----------------------------------------*/
	
	while condition {
		/* code */
	}
	
	/*-----------------------------------------*/
	
	for element in collection {
		/* code */
	}

```
----
### Function/Sous-programme
```rust
	fn funk(i:i32) {}
	
	fn funk(i:i32)->f64 { 5 }
```
----
## Package
```rust
```
----
## Préprocesseur/Macro
```rust
```
----
## Exception
```rust
```
----
## Multithread/task
```rust
```
----
## Objet
```rust
```
## Mot de language
```rust
```
