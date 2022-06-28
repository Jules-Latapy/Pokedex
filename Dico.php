//a finir
	/*-------------------Compilation/lancement----------*/

	/*-------------------Types--------------------------*/

	/*-------------------Tableau et collection----------*/
		$type = 0 ; //typage faible il y a aussi les fonction fléché et les types callable
	/*-------------------Tableau et collection----------*/
		$arrayName = array('clef' => valeur, );
		$arrayName = [0,2,3,6];

		enum Suit
		{
		    case Hearts;
		    case Diamonds;
		    case Clubs;
		    case Spades;
		}
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
	/*-------------------expression---------------------*/

	/*-------------------if-----------------------------*/

	/*-------------------boucles------------------------*/
		while (condition) {
			// code...
		}

		do{
			// code...
		}
		while(condition)

		for ($i=0; $i < $value; $i++) { 
			// code...
		}

		foreach ($variable as $key => $value) {
			// code...
		}
		
	/*-------------------function/sous programme--------*/


	/*-------------------function/sous programme--------*/
		function FunctionName($value=''):iterable
		{
			//retourne un iterable
		}
	/*-------------------package------------------------*/

	/*-------------------Exception----------------------*/

	/*-------------------Multithread/task---------------*/
		?
	/*--------------------------------------------------*/
	/*                    Objet                         */
	/*--------------------------------------------------*/
		class Client2 extends Client
		{
			
		}
	/*-------------------heritage-----------------------*/

	/*-------------------mot de language----------------*/
	
	__halt_compiler()	abstract	and	array()	as
	break	callable	case	catch	class
	clone	const	continue	declare	default
	die()	do	echo	else	elseif
	empty()	enddeclare	endfor	endforeach	endif
	endswitch	endwhile	eval()	exit()	extends
	final	finally	fn (as of PHP 7.4)	for	foreach
	function	global	goto	if	implements
	include	include_once	instanceof	insteadof	interface
	isset()	list()	match (as of PHP 8.0)	namespace	new
	or	print	private	protected	public
	readonly (as of PHP 8.1.0) *	require	require_once	return	static
	switch	throw	trait	try	unset()
	use	var	while	xor	yield
?>

