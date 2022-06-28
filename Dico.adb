	---------------------Compilation/lancement-----------#
		gnatmake Dico.adb
		gcc -c hello.adb

		Dico.x
	---------------------Types---------------------------#
		Natural	
		Integer 
		Float	
		Long_Float 
		Long_Long_Float 
		Character 
		Boolean 
		String(1..6)
		Unbounded_String 

		type My_Int is range 0 .. 100;
		type My_Mod is mod 2 ;
		type My_FLo is digits 3;
		type addresse is access type_addesse;

	---------------------Tableau et collection-----------#
		type Liste is array (Mois range <>) of Natural ;
		type Jour is (Lundi,Mardi,Mecredi,Jeudi,Vendredi,Samedi,Dimanche);
		type Date is record 
			--aggrega de type
		end record ;
	---------------------expression----------------------#
		or
		and
		xor
		not --negation
		/=  --inegalité
		=   --egalité
		>=  --supOuEgal
		<=  --infOuEgal
		&   --concatenation
	---------------------if------------------------------#
		if (condition) then

		elsif

		else
			
		end if;

		case int is
			when 0 | 360 =>
				Put_Line (" 0.360 ");
			when 270 =>
				Put_Line (" 270 ");
			when 271 .. 359 =>
				Put_Line (" 271 .. 359 ");
			when others =>
				Put_Line ("Autre");
		end case;
	---------------------boucles-------------------------#
		while() loop
			
		end loop;

		for i in 0..10 loop
			
		end loop;

		for T of Liste loop
			
		end loop;

		loop
			
		end loop;
	---------------------function/sous programme---------#
		procedure Procedure is
			
		begin -- Procedure
			
		end Procedure;

		function function return Integer is
			
		begin -- function
			return 3 ;
		end function;
	---------------------package-------------------------#
		package pack is
			--maquettes attribut et types
		end pack;

		package body pack is
			--corps des function
		end pack;

		with # use #
	---------------------Exception-----------------------#
		raise exception  with "My exception message";

		exception
		   when CONSTRAINT_ERROR => Put_line("erreur utilisateur") ; 
		   when others           => Put_line("erreur inatendu") ; 
	---------------------Multithread/task----------------#
		task t;

		task body t is
		end t;

		protected--synchronisé

		abort nom_tache ;--on tue la tache
		TERMINATE        --on termine la tache ou l'on ce trouve

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

	-----------------------------------------------------#
	--                    Objet                          #
	-----------------------------------------------------#
	package Object_Pack is

	    type Object is tagged private

	    procedure Methode(Self : in out My_Class);
	    --appel par My_class.Methode ou Methode(My_Class)

	private--encapsulation

		type Object is tagged record
	   		X : Integer;
	   	end record;

	end Object_Pack;
	---------------------heritage------------------------#

	package Object_Pack2 is

		type Derived is new My_Class with record
		    Y : Integer;
		    --ajout d'attribut
		end record;

		overriding procedure Methode (Self : in out Derived);

	end Object_Pack2 ;

	---------------------mot de language-----------------#
	synchronized (Ada 2005)	--qui n epux etre implementé que par des taches
	abstract (Ada 95)
	interface (Ada 2005)
	overriding (Ada 2005)		
	tagged (Ada 95)
	limited	

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

		
