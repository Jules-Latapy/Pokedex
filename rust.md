# RUST Résumé

---
## Compilation
on compile avec "rustc leProgramme.c"\
on lance avec "./leProgramme.x"

---
## Types

*primitif*
```rust
  //il y a des entier de i8 a isize
  //et non signé de u8 a usize
  
  i      :i32 ;
	str    :String = "sss";
  
```
---
## Tableau et collection
```rust
  let v : (u32,String,i32) = (25,"something",48) ;
  
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

  if (bool) {
    //code...
  }
  
```
---
### Boucles
```rust

	loop {
     //code...
	}
  
	/*-------------------------------------*/

```
----
### Function/Sous-programme
```rust
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
