<?php
	/*-------------------Compilation/lancement----------*/
		//?
	/*-------------------Types--------------------------*/
		$type = 0 ;
	/*-------------------Tableau et collection----------*/
		$arrayName = array('clef' => valeur, );
	/*-------------------expression---------------------*/
		||=ou
		&&=et
		^ =xou
		!= inegalité
		== egalité
		>= supOuEgal
		<= infOuEgal
		. concatenation
	/*-------------------if-----------------------------*/
		if (condition) {
			// code...
		}elseif (condition) {
			// code...
		}else{

		}

		$var = (bool)?"oui":"non";

		switch (variable) {
			case 'value':
				// code...
				break;
			
			default:
				// code...
				break;
		}
	/*-------------------boucles------------------------*/

		while (condition) {
			// code...
		}

		do{

		}
		while()

		for ($i=0; $i < $value; $i++) { 
			// code...
		}

		foreach ($variable as $key => $value) {
			// code...
		}
	/*-------------------function/sous programme--------*/
		function FunctionName($value='')
		{
			//peut retourner nimporte quoi
		}
	/*-------------------package------------------------*/
		--> renommer sont fichier en ".inc.php"
	/*-------------------Exception----------------------*/
		try {
			
		} catch (Exception $e) {
			
		}
	/*-------------------Multithread/task---------------*/

	/*--------------------------------------------------*/
	/*                    Objet                         */
	/*--------------------------------------------------*/

	class Client{

		//attribut
		private $ncli;
		private $nom;
		private $adr;

		//valeur par default necessaire
		public function __construct($i=-1,$n="",$a="") {
			$this->ncli = $i;
			$this->nom = $n;
			$this->adr = $a;
		}

		public function getIdcli() { return $this->ncli; }
		public function getNom() { return $this->nom;}
		public function getAdresse() { return $this->adr; }

		public function __toString() {
			$res = "idcli:".$this->ncli."\n";
			$res = $res ."nom:".$this->nom."\n";
			$res = $res ."adresse:".$this->adr."\n";
			$res = $res ."<br/>";
		 return $res;
		}
	}

	/*-------------------heritage-----------------------*/

	class Client2 extends Client
	{
		
		function __construct(argument)
		{

		}
	}

	/*-------------------mot de language----------------*/

		echo "string";
?>