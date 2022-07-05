# JAVA Résumé

---
## Compilation
javac Ex.java -encoding utf8 -> crée un executable(.class) pour la machine virtuelle de java\
java Ex args  -> lance la vm sur se fichier
	

---
## Types

*primitif*
```java
	boolean bool = true ;
	byte    b    = 1    ;
	int     i    = 1    ;
	long    l    = 3    ;
	float   f    = 1    ;
	double  d    = 1    ;
	char    c    = 'c'  ;
	String  s    = "sss";
```
---
## Tableau et collection
```java
	int[] tab  = new int[3] ;
	int[] tab2 = {1,2,3,4,5,6};

	List<Integer> l = new ArrayList<Integer>() ;
```
---
## Expression
	
*operateur booleen*
| symbole | definition |
|--|--|
| && | ou                           |
| \|\| | et                           |
| ^  | xou                          |
| !  | non                          |
| == | inegalité                    |
| != | egalité                      |
| >= | supOuEgal                    |
| <= | infOuEgal                    |

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

*autre operateur*
| symbole | definition |
|--|--|
| -> | lambda                       |
| :: | reference a une fonction     |
| \<T>| generique                    |
| ...| nombre variables d'arguments |
| @T | annotations                  |
| {} | section                      |
| [] | tableau                      |
| .  | specification                |
|f:{}| flag                         |

---
## Condition
```java

	if (bool) {

	}else {

	}

	/*-------------------------------------*/

	(bool?valeur1:valeur2)

	/*-------------------------------------*/

	switch(){
		case '' -> ;
		case '' : break ;
		default -> ;
	}

```
---
### Boucles
```java

	while (bool) {

	}

	/*-------------------------------------*/

	do {

	} 
	while (bool);

	/*-------------------------------------*/

	while();

	/*-------------------------------------*/

	for (int i=0 ;i<10 ;i++ ) {}

	/*-------------------------------------*/

	for (objet t : iterableCollection) {}

```
----
### Function/Sous-programme
```java

	public static void main     (String[] args)   		{}
	public        void procedure(int param,int param2)	{}
	private       int  function ()						{ return 0 ;}
```
----
## Package
```java

	package test;
	import  test;

```
----
## Exception
```java
	public void methode1() throws Exception ;
	throw new Exception ;

	/*-------------------------------------*/

	try{

	}catch(Exception e){

	}finally{

	}
```
----
## Multithread/task
```java
	public class t extends Thread / implements Threadable{
		public void run()
		{}
		//---> appel avec start();
	}

	
	synchronized //accès exclusif à un objet pendant l’exécution de la méthode
	volatile     //la variables doit toujours etre lus a nouveau a partir de la memoire centrale avant les operations
```
----
## OBJET
```java
		//il y a
		class/enum/record

		public class Object{

			private int attribut ; //encapsulation
			//constructeur
			public Object(){}      //----> appeller avec new	
			
			public void methode(){}		
		}

		//abstraction
		public interface destructible<GenericType T>{
			T detruire() ;
		}

		//heritage
		public class Derived extends Object implements destructible<Integer> {

			public Derived(){
				super();
			}

			@Override
			Integer detruire(){return 3;}
		}

	/*---------------------mot de language----------------*/

	abstract	
	continue	
	for	
	new	
	switch
	assert	
	default	
	goto	//ne pas utiliser
	package	
	synchronized
	do	
	if	
	private
	break	
	implements	
	protected	
	throw
	else	
	import	
	public	
	throws
	case	
	enum
	instanceof	
	return	
	transient
	catch	
	extends
	try
	final	
	interface	
	static
	class	
	finally
	strictfp
	volatile
	const	//ne pas utiliser
	native	
	super
	this
	while
