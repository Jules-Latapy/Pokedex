	//--------------------Compilation/lancement-----------//
		gcc leProgramme.c -o execuble.x
		./execuble.x
	//--------------------Types---------------------------//
		unsigned 
		signed
		auto	//instruction de création de variable(on force a crée)

		char

		short

		int	
		long
		long long

		float

		double

		*int pointeur 
		&addresse
	//--------------------Tableau et collection-----------//
		char* s = (char*) malloc (12*sizeof(char*));
		*s[0] = s ;

		struct aggrega
		{
			//aggrega de types
		};

		union aggrega2{
			//aggrega de types mais qui partage la meme memoire 
			//chacun peut avoir une valeur a la fois
		};

		enum enumeration {
			LUNDI,
			MARDI=2,
			MERCREDI,
			JEUDI,
			VENDREDI,
			SAMEDI,
			DIMANCHE;
		}
	//--------------------expression----------------------//

		|| ou
		&& et
		^  xou
		!= inegalité
		== egalité
		>= supOuEgal
		<= infOuEgal
	//--------------------if------------------------------//
		if (/* condition */)
		{
			/* code */
		}else{

		}

		((boolean)?val1:val2)

		switch(){
			case : break ;
			default : ;
		}
	//--------------------boucles-------------------------//
		while(){
			/* code */
		}

		do{
			/* code */
		}while();

		for (int i = 0; i < count; ++i)
		{
			/* code */
		}
	//--------------------function/sous programme---------//
		int function()
		{return 3;}

	//--------------------package-------------------------//
		//renommer le fichier en .h
		#import <stdio.h> ;
		extern
	//--------------------Exception-----------------------//

	//--------------------Multithread/task----------------//
		int pid=fork();
		wait(NULL);    //point de rendez vous

	//--------------------mot de language-----------------//

		
	break	
	case	
	const	
	continue
	default	
	do
	else	
	extern		//dans un autre fichier
	for	
	goto	
	if	
	register	//la variable va dans le CPU plutot que la memoire /!\ on ne peut acceder a l'addresse et elle doit etre local
	return
	sizeof	
	static		//variables persistante jusqu'a la fin du programme
	switch	
	volatile	//empeche l'optimisation du code de la variable
	while
