	/*-------------------Compilation---------------------*/
		//javac Dico.java -encoding utf8
		//java Dico args
	

	/*-------------------Types---------------------------*/

		boolean bool = true ;

		byte   b = 1 ;
		int    i = 1 ;
		long   l = 3 ;
		float  f = 1 ;
		double d = 1 ;

		char   c = 'c';
		String s = "sss";

	/*--------------------Tableau et collection----------*/
		int[] tab  = new int[3] ;
		int[] tab2 = {1,2,3,4,5,6};

	/*-------------------expression----------------------*/
	/*
		||=ou
		&&=et
		^ =xou
		!= inegalité
		== egalité
		>= supOuEgal
		<= infOuEgal
		+ concatenation
	*/

	/*-------------------if-------------------------------*/

		if (bool) {}

		(bool?valeur1:valeur2)

		switch(){
			case '' -> ;
		}

	/*-------------------boucles-------------------------*/

		while (bool) {}
		do {} while (bool);
		while();

		for (int i=0 ;i<10 ;i++ ) {}
		for (objet t : iterableCollection) {}

	/*-------------------function/sous programme---------*/

		public static void main     (String[] args)   		{}
		public        void procedure(int param,int param2)	{}
		private       int  function ()						{ return 0 ;}

	/*-------------------package-------------------------*/
		package test;
		import  test;
	/*-------------------Exception-----------------------*/
		public void methode1() throws Exception ;
		throw new Exception ;

		try{

		}catch(Exception e){

		}finally{

		}
	/*--------------------Multithread/task---------------*/
		public class t extends Thread / implements Threadable{
			public void run()
			{}
		}

		
		synchronized //accès exclusif à un objet pendant l’exécution de la méthode
		//---> appel avec start();
	/*---------------------------------------------------*/
	/*                     Objet                         */
	/*---------------------------------------------------*/

		//constructeur
		public Dico(){} //----> appeller avec new

		//affichage
		public String toString(){}

		class classInterne{}

	/*-------------------heritage------------------------*/

		final class 			//classe qui ne peut etre deriver
		abstract class 			//classe qui doit etre heriter	

		extends Thread 			//class superieur
		implements Threadable 	//interface 

		abstract void methode1();
		default  void methode2();

		super. //methodes de la classe mere 
		this.  //celle ci 

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
