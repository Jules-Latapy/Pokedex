# Lisp résumé 

---
## Compilation & lancement

on lance avec "clips 'programme.lisp'"

---
## Types

*primitif*
```lisp
	(let (name)
		(value))

	(defvar name 3)

	; variable golbale

	(defvar *name* value ; pas obligatoire
	  "Documentation string")

	(defparameter *name* value
	  "Documentation string")  

	(defconstant name value
		"documentation-string")
```

*defini par l'utilisateur*
```lisp
	//code
```
---
## Tableau et collection
```lisp
	#(5 2 3 "cc" (1) 'e)
	(vector 2 5 3 6 )
	(vector-push element array_name) ;'element' obsionel ca enleve le dernier 
	(vector-pop  element array_name)
	(make-array 10 :fill-pointer  0)

	(cons '(hello) (world))
```
---
## Expression

*operateur booleen*
| symbole | definition |
|--|--|
| and  | et                              |
| or   | ou                              |
| ^    | xou                             |
| not  | non                             |
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
```lisp
	(if (condition) instructionthen instructionElse)
	(if condition then (statement1) else (statement2))

```
---
### Boucles
```lisp
	(while (condition) 
		do (statement))

	(dotimes ( number )
		(statement))

	(loop
		(statement)
		(when (condition) (return 1)))

	(loop for variable in liste
		do (statement))

	(loop for variable from 0 to 2 by 3
		do (statement))

	(dolist (liste)
		(statement))
```
---
### Function/Sous-programme
```lisp
	(defun name (parameters)
		"Documentation for name."
		(statement))

	(lambda (p1 p2 p3) (return "oui"))
```
---
## Package
```lisp
	
```
---
## Préprocesseur/Macro
```lisp
	(defmacro name (parameters)
		"Documentation for name."
		())
```
---
## Exception
```lisp
	(block name (statement))
```
---
## Multithread/task
```lisp
	//code
```
---
## Objet
```lisp
	
```
---
## Mot de language
```lisp
	//code
```
