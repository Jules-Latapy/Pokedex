# ADA résumé 

---
## Compilation & lancement

on compile avec gnat ou `gcc -c leProgramme.adb` / `gnatmake leProgramme.adb`\
on lance avec `./leProgramme.x`

---
## Types

*primitif*
```ada
	Natural	
	Integer 
	Float	
	Long_Float 
	Long_Long_Float 
	Character 
	Boolean 
	String(1..6)
	Unbounded_String 
```
*defini par l'utilisateur*

```ada
	type My_Int is range 0 .. 100;
	type My_Mod is mod 2 ; 
	type My_FLo is digits 3; --precision
	type My_Del is delta 10.0 range 0.0 .. 250.0; --marge d'erreur 
	type addresse is access type_addesse;
```
---
## Tableau et collection
```ada
	type Liste is array (Mois range <>) of Natural ;
	Matrice : array (1..2 , 1..5) of Natural := (others=>(others=>0));
	type Jour is (Lundi,Mardi,Mecredi,Jeudi,Vendredi,Samedi,Dimanche);
	subtype week_end is Jour range Samedi .. dimanche ; --type defini a partie d'un autre
	type Date is record 
		--aggrega de type
	end record ;
```
---
## Expression

*operateur booleen*
| symbole | definition |
|--|--|
| and  | et                              |
| or   | ou                              |
| xor  | xou                             |
| not  | non                             |
|  =   | egalité                         |
| /=   | inegalité                       |
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
|  **  | puisssance                      |
| mod  | modulo                          |
| rem  | reste de la division            |
| abs  | valeur absolue                  |

*autre symboles*
| symbole | definition |
|--|--|
| :=   | affectation                     |
|  :   | nommage (variables/label)       |
|  &   | concatenation                   |
|  #   | base comme 2#1110_0000#         |
|  '   | caractere/attribut defini par le language |
|  .   | spécification                   |
|  ..  | range		                 |
| =>   | selection (switch/exception)    |
|<\<a>>| flags (pour les goto)           |
| <>   | type non contraint              |
|  @   | resultat dans un calcul '+=' -> ':=@+' |

---
## Condition
```ada
	if condition then
     		--code
	elsif condition then
     		--code
	else
		--code
	end if;

	-----------------------------------------

	t:integer:=(	if bool
			then 0
			else 3);

	-----------------------------------------

	case int is
		when 0 | 360 =>
			Put_Line (" 0 ou 360 ");
		when 270 =>
			Put_Line (" 270 ");
		when 271 .. 359 =>
			Put_Line (" 271 .. 359 ");
		when others =>
			Put_Line ("Autre");
	end case;

	-----------------------------------------

	Hours := (case D is
			when Mon .. Thurs => 8,
               		when Fri => 6,
               		when Sat | Sun => 0);
```
---
### Boucles
```ada

	while condition loop
		--code
	end loop;

	-----------------------------------------
	
	for i in 0..10 loop
		--code
	end loop;

	-----------------------------------------
	
	for T of Liste loop
		--code
	end loop;

	-----------------------------------------
	
	loop
		--code
	end loop;
	
	-----------------------------------------
	-- evaluation de liste 
	(for some x in Liste => x>2);	--si un seul correspond alors vrai
	(for all  y in Liste => x<3);	--si tous correspondent alors vrai
```
----
### Function/Sous-programme
```ada
	procedure pro is
		--var
	begin
		--code
	end pro ;
	
	-----------------------------------------

	function funk return Integer is
		--var
	begin
		return 3 ;
	end funk;
	
	-----------------------------------------

	function funkyOneLine(x,y :integer) return Integer is (x*y) ;
	
	-----------------------------------------

	procedure ProcedureInParameter( Process  : access procedure (int : integer) ) ;

	-----------------------------------------
	--return statement
	return Node : Cell do
		Node.Value := Result;
		Node.Succ := Next_Node;
	end return;
```
----
## Package
```ada
	--fichier ads
	package pack is
		--maquettes, types, variables globales
	end pack;
	
	
	--fichier adb
	package body pack is
		--corps des function
	end pack;

	-----------------------------------------
	
	with pack ; use pack

	-----------------------------------------sur le même principe:
	
	--si un package est generic --> il doit etre instancié
	Generic 
		--le type generic
	package F is
		--maquettes, types, variables globales
	private
		--zone caché qui ne peut etre utilisé
	end F ;

	-----------------------------------------
	
	package instance is new f(integer);
	use instance ;
```
----
## Exception
```ada

	raise exception  with "My exception message";
	
	-----------------------------------------
	
	exception
		when CONSTRAINT_ERROR => Put_line("erreur utilisateur") ; 
		when others           => Put_line("erreur inatendu") ;
```
----
## Multithread/task
```ada
	task t;

	task body t is
	end t;

	protected	--synchronisé

	abort nom_tache ;	--on tue la tache
	TERMINATE        	--on termine la tache ou l'on ce trouve

	--rendez vous ou attente des taches
	entry point_entrer ;

	--si on a le choix entre plusieur point
	select
		--quant on intercepte l'entrer
		accept point_entrer do
			--instruction
		end point_entrer ;

	or when var > 0
		--autre instruction 
```
----
## Objet
```ada
	package Object_Pack is
     
		type Object is tagged private

		procedure Methode(Self : Object);
		--appel par Object.Methode ou Methode(Object) --c'est le tagged qui permet la notation avec le points

		--Abstraction
		type destructible is interface;

		procedure detruire(self: destructible ) is abstract ;
     
	private--encapsulation
     
		type Object is tagged record
			X : Integer;
		end record;
     
	end Object_Pack;


	package Object_Pack2 is
     
		type Derived is new Object and destructible with record
		    Y : Integer;
		    --ajout d'attribut
		end record;
     
		overriding procedure Methode (Self : in out Derived);
		
		overriding procedure detruire(self: destructible ) is null ;
     
	end Object_Pack2 ;
```
## Mot de language
```ada
	synchronized (Ada 2005)	--qui ne peux etre implementé que par des taches
	abstract (Ada 95)
	interface (Ada 2005)
	overriding (Ada 2005)	
	tagged (Ada 95)
	limited					--signifie ne peut pas etre utilisé à l'exterieur

	constant
	null
	access
	all		
	type
	subtype	
	record
	array
	range
	digits
	delta	
	function
	return	
	procedure
	renames	
	at			
	aliased (Ada 95)

	abort
	terminate	
	protected (Ada 95)
	entry		
	accept	
	select	
	separate
	requeue (Ada 95)	

	not	
	or	
	and	
	xor

	new	
	generic	
	package	
	body		
	private	
	task	

	pragma	
			
	declare		

	others	

	goto			--a utilisé avec des flag comme <<a>>

	if
	then
	else
	elsif
	case
	when
	some (Ada 2012)	--(for some var in range => predicate)

	loop
	exit
	while
	do
	for
	of
	reverse	

	is	
	begin
	end	
	in
	out	
	with	
	use	
	raise	
	exception
	delay	
	until (Ada 95)	

	rem	--le reste de la division
	mod	
	abs	
```
