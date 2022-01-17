#!/bin/sh

	#--------------------Compilation/lancement-----------*/
		#chmod +x dico.sh
		#./dico.sh
	#--------------------Types---------------------------*/
		$0		 #nom du script
		$1 		 #premier parametres du code
		$*		 #tt les argument
		$#		 #nbr d'argument
		$$ 		 #Pid
		$? 		 #code de retour de la commande d'avant
		$@		 #equivalent de $*
		$_		 #derniere argument de la derniere commande 

		variable=$false

	#--------------------Tableau et collection-----------*/
		machines="01 02 03 04 05 06 07 08 09 10"
	#--------------------expression----------------------*/
		$variable = $true #espace signifie le test
		-eq #(equal) : « égal à » (signe « = ») ;
		-ne #(not equal) : « différent de » (signe « ≠ ») ;
		-gt #(greater than) : « strictement supérieur à » (signe « > ») ;
		-lt #(lesser than) : « strictement inférieur à » (signe « < ») ;
		-ge #(greater or equal) : « supérieur ou égal à » (signe « ≥ ») ;
		-le #(lesser or equal) : « inférieur ou égal à » (signe « ≤ ») ;
		-e  #(exists) : vérifie l'existence d'un fichier ;
		-f  #(file) : vérifie l'existence d'un fichier, et le fait qu'il s'agisse bien d'un fichier au sens strict ;
		-d  #(directory) : vérifie l'existence d'un répertoire ;
		-L  #(link) : vérifie si le fichier est un lien symbolique ;
		-s  #(size) : vérifie qu'un fichier n'est pas vide ;
		-r  #(readable) : vérifie si un fichier peut être lu ;
		-w  #(writable) : vérifie si un fichier peut être écrit ou modifié ;
		-x  #(writable) : vérifie si un fichier peut être exécuté ;
		-nt #(newer than) : vérifie si un fichier est plus récent qu'un autre ;
		-ot #(older than) : vérifie si un fichier est plus ancien qu'un autre.

		#les operateur de base sont possible
	#--------------------if------------------------------*/
		if [ condition ]; then
			#statements
		fi

		case word in
			pattern_regex_egalité ) instruction ;;
		esac
	#--------------------boucles-------------------------*/
		while [ condition ]; do
			#statements
		done

		until [ condition ]; do  #on peut aussi faire test[condition]
			#statements
		done

		for (( i = 0; i < 10; i++ )); do
			#statements
		done

		for i in $salle; do
			#statements
		done

	#--------------------function/sous programme---------*/
		funk(){
			#statement
		}
	#--------------------package-------------------------#
	#--------------------Exception-----------------------#
	#--------------------Multithread/task----------------#
		& #ne pas attendre que la commande ce termine 
		pid=fork() 

	#--------------------mot de language-----------------*/

	echo "coucou"
	shift #decal le argument du programme
	break ;


