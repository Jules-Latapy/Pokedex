#!/usr/bin/perl
	#--------------------Compilation/lancement-----------#
		#perl -e 'une ligne de commande;'
		#perl nomDuProgramme.pl
		#chmod +x nomDuProgramme.pl  ->
		#./nomDuProgramme.pl

	#--------------------Types---------------------------#
		#typage scalaire suivant l'interpretation
		my $v			#declaration sans contexte
		$s = "string" ; 
		$i = 12 ;

		$x=undef; #ou undef($x); non definie 
		$_ #variables dans implicit des iteration
		$^O #system d'expl
		$^X #nom de l'exe

		our $w #argument du main comme "-w" vaut 1 si activer et undefined sinon peut etre place nimporte quand 
		\$i    #reference de i
		$$v    #ce qui est poité par v

	#--------------------Tableau et collection-----------#
		@t   = (1..10, "age", "a".."z") #on designe le tableau
		$t[1]							#-1 est le dernier -2 avant dernier etc

		push(@t,"element rajouter a la fin");
		pop(@t)#on vire le dernier element
		shift(@t)#on vire le premier element
		unshift(@t,"element rajouter au debut");
		delete $t[1];
		#split join sort

		%h 								#on designe une table de hachage clef/valeur
		$h{uneclef} 
	#--------------------expression----------------------#
		. #concatenation
		#numérique	de chaînes
		égalité     ==	eq
		différence	!=	ne
		infériorité	<	lt
		supériorité	>	gt
		inf ou égal	<=	le
		sup ou égal	>=	ge
		comparaison	<=>	cmp

		||
		&&
	#--------------------if------------------------------#
		if (bool) {
			# body...
		}

		instruction if( condition );

		unless( expression ) #inverse

		my $smaller = $x < $y ? $x : $y;

		#--
		use Switch;

		switch(argument) {
   			case 1            { print "number 1" }
   			else			  {}
   		}
	#--------------------boucles-------------------------#
		while (bool) {
			# body...
		}

		until(bool){
			#body
		}

		do{
			# body...
		}while(bool) ;

		instruction while( condition );

		for (my $var = 0; $var < expression; $var++) {
			# body...
		}

		foreach my $x (@array) {
			# body...
		}

		foreach (@ARGV)
		{
		}
	#--------------------function/sous programme---------#
		sub function_name {
			@_    #tableau d'argument
			$_[0] #premier argument
			return 0;
		}

		&function_name(21); #appel
	#--------------------package-------------------------#
		package nom_de_paqu ;
		import module ;

		use try::tiny #chagre un module 
	#--------------------Exception-----------------------#
	try{
	}catch(){};
	#--------------------Multithread/task----------------#

	#----------------------------------------------------#
	#                    Objet                           #
	#----------------------------------------------------#
		sub nouveau {
		   my ($class,$argument1,$argument2) = @_;
		   my $this = {};		#table de hachage contenant les attributs
		   bless($this, $class);#on associe au package la reference

		   $this->{CLEF_1} = $argument1;
		   $this->{CLEF_2} = $argument2;


		   return $this;
		}

		#methode
		sub roule {
			my ($this,$vitesse) = @_;
			print "Avec $this->{NB_ROUES} roues, je roule à $vitesse.\n";
		}
	#--------------------heritage------------------------#

	#--------------------mot de language-----------------#

	next last redo 
	@ARGV #tableau d'argument

	chomp $s #supprime le saut de ligne
	<>		 #entrer utilisateur
	int(rand(49))#nombre aleatoire entre 0 inclu et 49 exclu

	use strict;  #rend le programme moins permissif
	use warnings;#envoie les warning en console 

	"bon"x3 vaut "bonbonbon" #pour les liste aussi