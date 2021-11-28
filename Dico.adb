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
			
		end if;
	---------------------boucles-------------------------#
		while()
		loop
			
		end loop;

		for i in 0..10 loop
			
		end loop;

		for T of Liste loop
			
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
		try :
		end try ;
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

	    type Object is tagged record
	   		X : Integer;
	   	end record;

	    procedure Methode(Self : in out My_Class);
	    --appel par My_class.Methode ou Methode(My_Class)

	end Object_Pack;
	---------------------heritage------------------------#

	type Derived is new My_Class with record
	    Y : Integer;
	    --ajout d'attribut
	end record;

	overriding procedure Methode (Self : in out Derived);

	---------------------mot de language-----------------#

	in out

	pragma assert(true);
	pragma suppress(index_check) ;

	exit when i = 1 ;
	==if exit

	delay until (clock + Delai_Attente) ;

	delay 0.1 ;
		