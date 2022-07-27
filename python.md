# PYTHON résumé 

---
## lancement

lancement en ligne de commande avec juste "_$>python"
lancement d'un script avec  "_$>python nom.py"

---
## Types

*primitif*
```python
	b :bool      = True 
	by:bytes     = 0    
	i :int       = 3    
	f :float     = 3.2  
	c :complex   = complex(i,f) 
	s :str       = "capybara"
	ca:callable  = uneFonction
```
---
## Tableau et collection
```python

	#le type iter est le superset de Lists, tuples, dictionaries, etc

	d :dict      = {'lion':'grrrr','doge':'waouf'}
	l :list      = ['venus','saturn','jupiter']
	t :tuple     = (1,2)            #list immutable
	r :range     = range(1,32,2)    #start stop step
	se:set       = {'moon','earth'} #list sans doublons
	fs:frozenset = frozenset(se)    #set immutable
	ba:bytearray = bytearray('ABC', 'utf-8')
```
---
## Expression

*operateur booleen*
| symbole | definition |
|--|--|
| and  | et                              |
| or   | ou                              |
|  ^   | xou                             |
| not  | non                             |
|  ==  | egalité                         |
|  !=  | inegalité                       |
|  >   | sup                             |
| >=   | supOuEgal                       |
|  <   | inf                             |
| <=   | infOuEgal                       |

*operateur mathématique*
| symbole | definition |
|--|--|
|  +   | addition                        |
|  -   | soustraction                    |
|  *   | multiplication                  |
|  /   | division                        |
|  //  | division reel                   |
|  **  | puisssance                      |
|  %   | modulo                          |
|  @   | multiplication matriciel        |
|  &   | 'et' bit a bit                  |
| \|   | 'ou' bit a bit (aussi union)    |

*autre symboles*
| symbole | definition |
|--|--|
|  =   | affectation                     |
|  :   | typage/debut de block           |
|  #   | commentaire                     |
|  ->  | type de retour                  |

---
## Condition
```python

	if condition:
		pass
	elif condition:
		pass
	else:
		pass

	#-----------------------------------------

	var = 3 if condition else 3

	#-----------------------------------------

	(valeur_si_vrai,valeur_si_fausse)[condition]

	#pas de switch case -> utiliser les dictionnaires

```
---
### Boucles
```python

	while condition:
		pass

	for x in range(10):
		pass

```
----
### Function/Sous-programme
```python

	def function():
		pass

	def funkExtensible(i, *vararg):
		pass

	#funkExtensible(1,"a","b","c")

	def funkKeyworder(i, *withNameAndValue):
		pass

	#funkKeyworder(1,a=1,c=2,d=3)

	def funkDefaut(var:str=3) -> str:
		pass

	 x = lambda a : a + 10

```
----
## Package
```python

	#TODO

```
----
## Exception
```python

	raise Exception("msg")

	#-----------------------------------------

	try:
		pass
	except Exception as e:
		pass
	else:
		pass
	finally:
		pass

```
----
## Multithread/task
```python

	#TODO

```
----
## OBJET
```python
	class Etre_Vivant:

		def __init__(self,__nom):
			self.__nom = __nom   #private as double underscore before name

		def __str__(self):
			return self.nom
			
	class destructible(ABC):
		
		@abstractmethod
		def detruire(self):
			pass

	#heritage
	class Animal(Etre_Vivant, detruire):

		def __init__(self,nom, posX, posY):
			super(Animal, self).__init__(nom)
			self.posX = posX
			self.posY = posY
			
		def detruire(self)
			print("booom")

		def __str__(self):
			return super(Animal,self).__str__() + " x:" + str(self.posX) + ",y:"+ str(self.posY)
```
## mot de language
```python

	await 	
	else 	
	import 	
	pass
	break 	
	in 	
	raise
	class
	finally 	
	is 	
	return
	and 	
	continue 	
	for 	
	lambda 	
	try
	except
	as 	
	def 	
	from 	
	nonlocal 	
	while
	assert 	
	del 	
	global 	
	not 	
	with
	async 	
	elif 	
	if 	
	or 	
	yield

```


