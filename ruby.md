# RUBY résumé 

---
## Compilation & lancement

lancement en ligne de commande avec juste "$>ruby"\
lancement d'un script avec "$>ruby nom.rb"

---
## Types
```rb
	CONST  = "en maj";
	chaine = "something" + %(hello) + 'something' + /something(regex)/;
	nombre = 3.0 ;
	$x     = "globalvar";
```
---
## Tableau et collection
```rb
	tab = [1, "hello"]; #accolade pas obligé
	tab[1..5] 			#tranche
	tab + [1,2,5] * 5 	

	ash = {'lion' => 'grrrr','doge' => 'waouf'}
	ash = {:lion  => 'grrrr',:doge  => 'waouf'} #symbole unique

	a,b,c = [0,1,2]
```
---
## Expression

*operateur booleen*
| symbole | definition |
|--|--|
| &&   | et                              |
| and  | et                              |
| \|\| | ou                              |
| or   | ou                              |
| ^    | xou                             |
| !    | non                             |
| not  | non                             |
| ==   | egalité                         |
| ===  | egalité dans les switchs        |
| eql? | egalité dans les hashs          |
| equal? | comparaison de code (ne pas override) |
| !=   | inegalité                       |
|  >   | sup                             |
| >=   | supOuEgal                       |
|  <   | inf/heritage                    |
| <=   | infOuEgal                       |

*operateur mathématique*
| symbole | definition |
|--|--|
|  +   | addition                        |
|  -   | negation                        |
|  *   | multiplication                  |
|  **  | puissance                       |
|  /   | division                        |
|  %   | modulo                          |

*autre symboles*

| symbole | definition |
|--|--|
|  =   | affectation                     |
|  :   | else ternaire /symbole(token unique)|
|  ::  | acces au constante de classe/module |
|  ... | range(exclut)                   |
|  ..  | range(inclut)                   |
|  {}  | block = remplace do-end mais avec plus grande priorité |
|  []  | tableau                         |
|  #   | commentaire                     |
|  &   | et binaire/transformation en proc |
|  ?   | opération ternaire              |
|  ->  | lambda					         |
|  =>  | hashage				         |
|  =~  | matche					         |
|  @   | attributs				         |
|  @@  | attributs	static			     |


---
## Condition
```rb
	if condition then #<- mots clef pas obligé si on saute une ligne
		#code
	else
		#code
	elsif condition 
		#code
	end

	#-------------------------------------

	(truc; a; faire) if condition ;

	#-------------------------------------

	unless !condition
		#code
	else
		#code
	end

	#-------------------------------------

	(truc; a; faire) unless condition ;

	#-------------------------------------

	case var
		when 'e'
			#code
		when 0..1 then
			#code
		else
			#code
	end

	#-------------------------------------

	(condition) ? (code_vrai) : (code_faux)
```
---
### Boucles
```rb

	loop do
		#code
	end

	#-------------------------------------

	while condition do #<- mots clef pas obligé si on saute une ligne
		#code
	end

	#-------------------------------------

	(truc; a; faire) while condition ;
	
	#-------------------------------------

	begin
		code
	end while condition;

	#-------------------------------------

	until condition #do
		code
	end

	#-------------------------------------

	(truc; a; faire) until condition ;
	
	#-------------------------------------

	for i in 0..2
		code
	end

	#-------------------------------------

	(0..2).each { |e| code }

	#equivalent

	(0..2).each do |e| 
		#code
	end

	[10,5].each_with_index { |element,i| code }

	#-------------------------------------

	break
	redo
	next
```
---
### Function/Sous-programme
```rb
	def method_name(arg,arg2=3); #parenthese pas obligatoire de meme qu'a l'appel
		#code
	end

	#-------------------------------------

	#block
	method(param) { |param| code }

	#proc
	pr = proc { |param| code }

	#lambda
	la = lambda { |param| code }
	la = -> (param) { code }
```

| fonction | Block | Proc | Lambda |
|--|--|--|--|
| Classe 					| Proc 	| Proc 	| Proc 	|
| Stockable en variable 	| non 	| oui 	| oui 	|
| interrompt l'execution	| ?		| oui	| non 	|
| sensible au nbr d'arg		| non 	| non 	| oui	|

---
## Package
```rb
	module pack
		class example
			#code
 		end

 		module pack2
 			#code
 		end
	end
```
---
## Exception
```rb
	begin
			#risky-code
		rescue Error => e
			#code
		ensure
			#code
	end

	#-------------------------------------

	raise SomeError ;
```
---
## Objet
```rb
	class name < ParentClass1, ParentClass2

		def initialize(args)
			super
			@attribut1 = 1
			@@static_attribut = args
		end
		#appel avec Name.new( args )
		
	#-------------------------------------

		def attribut1=(new_one)
			@attribut1 = new_one ;
		end
		
		def attribut1
			return @attribut1 ;
		end

		#equivalent a:
		attr_accessor :attribut1

		#equivalent a:
		attr_reader :attribut1
		attr_writer :attribut1
	#-------------------------------------

		private
			#encapsulation

		#equivalent a:
		private :method_name

	#dans le meme style
		public
			#methodes public
		protected
			#methodes protected

	end
```
---
## Mot de language
```rb
	__ENCODING__  #The script encoding of the current file.
	__LINE__	    #The line number of this keyword in the current file.
	__FILE__	    #The path to the current file.
	BEGIN			    #Runs before any other code in the current file.
	END				    #Runs after any other code in the current file.
	alias			    #Creates an alias between two methods (and other things).
	and				    #Short-circuit Boolean and with lower precedence than &&
	begin		    	#Starts an exception handling block.
	break		    	#Leaves a block early.
	case			    #Starts a case expression.
	class		    	#Creates or opens a class.
	def			    	#Defines a method.
	defined?	    #Returns a string describing its argument.
	do			    	#Starts a block.
	else		    	#The unhandled condition in case, if and unless expressions.
	elsif		    	#An alternate condition for an if expression.
	end			    	#The end of a syntax block. Used by classes, modules, methods, exception handling and control expressions.
	ensure	    	#Starts a section of code that is always run when an exception is raised.
	false		    	#Boolean false.
	for			    	#A loop that is similar to using the each method.
	if			    	#Used for if and modifier if expressions.
	in			    	#Used to separate the iterable object and iterator variable in a for loop.
	module	    	#Creates or opens a module.
	next		    	#Skips the rest of the block.
	nil		    		#A false value usually indicating “no value” or “unknown”.
	not			    	#Inverts the following boolean expression. Has a lower precedence than !
	or		    		#Boolean or with lower precedence than ||
	redo		    	#Restarts execution in the current block.
	rescue	    	#Starts an exception section of code in a begin block.
	retry		    	#Retries an exception block.
	return	    	#Exits a method.
	self		    	#The object the current method is attached to.
	super		    	#Calls the current method in a superclass.
	then		    	#Indicates the end of conditional blocks in control structures.
	true		     	#Boolean true.
	undef		    	#Prevents a class or module from responding to a method call.
	unless		  	#Used for unless and modifier unless expressions.
	until		    	#Creates a loop that executes until the condition is true.
	when		    	#A condition in a case expression.
	while		    	#Creates a loop that executes while the condition is true.
	yield		    	#Starts execution of the block sent to the current method.
```
