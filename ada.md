# ADA résumé 

----
## Compilation & lancement

compilation avec gnat (gcc -c) -> gnatmake Dico.adb
creer ensuite un executable

----
## Types

*primitif*

	Natural	
	Integer 
	Float	
	Long_Float 
	Long_Long_Float 
	Character 
	Boolean 
	String(1..6)
	Unbounded_String 

*defini par l'utilisateur*

	type My_Int is range 0 .. 100;
	type My_Mod is mod 2 ;
	type My_FLo is digits 3;
	type addresse is access type_addesse;

----
## Tableau et collection
	type Liste is array (Mois range <>) of Natural ;
	type Matrice is array (1..2 , 1..5) of Natural := (other=>(other=>0));
	type Scalar is range 1..50 ;
	type Jour is (Lundi,Mardi,Mecredi,Jeudi,Vendredi,Samedi,Dimanche);
	type Date is record 
		--aggrega de type
	end record ;
----
## Expression
| symbole | definition |
|--|--|
| or  | ou            |
| and | et            |
| xor | xou           |
| not | negation      |
| /=  | inegalité     |
| =   | egalité       |
| >=  | supOuEgal     |
| <=  | infOuEgal     |
| &   | concatenation |
| :=  | affectation   |

----
## Condition
	if (condition) then
     
	elsif
     
	else
		
	end if;

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
----
### Boucles

	while loop
		
	end loop;

	for i in 0..10 loop
		
	end loop;

	for T of Liste loop
		
	end loop;

	loop
		
	end loop;

----
### Function/Sous-programme
	procedure pro is
		
	begin
		
	end pro ;

	function funk return Integer is
		
	begin -- funk
		return 3 ;
	end funk;

	function funkyOneLine(x,y :integer) return Integer is (x*y) ;

	procedure ProcedureInParameter( Process  : access procedure (int : integer) ) ;

----
## Package
	--fichier ads
	package pack is
		--maquettes attribut et types
	end pack;

	--fichier adb
	package body pack is
		--corps des function
	end pack;

	with # use #

----
## Exception
	raise exception  with "My exception message";

	exception
		when CONSTRAINT_ERROR => Put_line("erreur utilisateur") ; 
		when others           => Put_line("erreur inatendu") ;

----
## Multithread/task
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

----
## OBJET
	package Object_Pack is
     
	    type Object is tagged private
     
	    procedure Methode(Self : in out My_Class);
	    --appel par My_class.Methode ou Methode(My_Class) --c'est le tagged qui permet le points
     
	private--encapsulation
     
		type Object is tagged record
	   		X : Integer;
	   	end record;
     
	end Object_Pack;


	package Object_Pack2 is
     
		type Derived is new My_Class with record
		    Y : Integer;
		    --ajout d'attribut
		end record;
     
		overriding procedure Methode (Self : in out Derived);
     
	end Object_Pack2 ;

	---------------------mot de language-----------------#
	synchronized (Ada 2005)	--qui ne peux etre implementé que par des taches
	abstract (Ada 95)
	interface (Ada 2005)
	overriding (Ada 2005)		
	tagged (Ada 95)
	limited					--ne peut pas etre utilisé

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

	goto--a utilisé avec des flag comme <<a>>

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