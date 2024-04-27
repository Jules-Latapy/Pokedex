# C++ résumé

---
## Compilation & lancement

on compile avec `g++ -std=c++17 -Wall exemple.cpp`\
on lance avec `a.exe`

---
## Types

*primitif*
```cpp
	static int	//variables persistante qui reste donc jusqu'à la fin du programme
	register int	//variable sans adresse, sert à optimiser, le compilo le fait seul
	unsigned int
	signed int
	char
	short
	int	
	long
	long long
	float
	double
	int* pointeur
	void* type_incompler
	int (*pointeur_sur_fonction)(int);	//pointeur sur une fonction prennant un int return un int
	std::string s = "hello"s;
	auto Cstring = "hello";
```

*defini par l'utilisateur*
```cpp
	struct agrega1 {

		//aggrega de types
		
	}
	var1,var2;

	union agrega2
	{
		//aggrega de types mais qui partage la meme memoire 
		//chacun peut avoir une valeur a la fois
	};

	enum class rep {
		NON,OUI; //pas de conversion implicit
	};

	enum enumeration 
	{
		LUNDI,
		MARDI=2,
		MERCREDI,
		JEUDI,
		VENDREDI,
		SAMEDI,
		DIMANCHE;
	};

	//on peut utiliser typedef pour ne pas avoir a repeter le type de base (struct, enum, union)
	typedef union agrega2 agrega2;
	
	struct agrega1 a1 = (struct agrega1){valeur1, valeur2};
	struct agrega1 a2 = (struct agrega1){.attribut=valeur1, .attribut2=valeur2};
```
---
## Tableau et collections
```cpp
	//taille fixe
	std::array<int,3> n = {1,2,3};

	//equivalent herité du c:
	int n[3] ;

	std::vector<char> c = {'e','e'};

	std::map<std::string,int> e = {{"hello",2},{"world",3}};
```
---
## Expressions

*operateur booleen*
| symbole | definition |
|--|--|
| &&   | et                              |
| \|\| | ou                              |
| ^    | xou (binaire aussi)             |
| !    | non                             |
| ==   | egalité                         |
| !=   | inegalité                       |
|  >   | sup                             |
| >=   | supOuEgal                       |
|  <   | inf                             |
| <=   | infOuEgal                       |

certain opérateur on des synonimes comme "and" pour &&

*operateur mathématique*
| symbole | definition |
|--|--|
|  +   | addition                     |
|  -   | negation                     |
|  *   | multiplication               |
|  /   | division                     |
|  %   | modulo                       |
| i++  | ajout 1, donne la valeur     |
| ++i  | donne la valeur, ajout 1     |
| +=   | ajout direct(même chose avec les autres opérateur) |

*operateur binaire*
| symbole | definition |
|--|--|
| >>  | decalement binaire droite(injection)|
| <<  | decalement binaire gauche(injection)|
| \|  | ou binaire            				|
| &   | et binaire                    		|
| ~   | complement binaire    				|

*autre symboles*
| symbole | definition |
|--|--|
|  =   | affectation                     |
|  :   | switch/label/else ternaire      |
|  ... | nbr variable d'argument         |
|  {}  | block                           |
| \[]  | tableau, closure de lambda      |
|  #   | macro                           |
|  &   | adresse de ... /reference       |
|  ?   | opération ternaire              |
|  .   | membre de struct/classe         |
|  ->  | attribut d'une adresse de structure              |
| ::   | namespace						 |
| \<T> | template 						 |

---
## Conditions
```cpp
	if (condition) {
		/*code*/
	}
	else {
		/*code*/
	}
	/*-----------------------------------------*/

	(condition?valeur1:valeur2);

	/*-----------------------------------------*/

	switch( v ); auto initVar = 9
	{
		case 3 : printf("3");break;
		default: printf("default");
	}
```
---
### Boucles
```cpp
	while (condition) {
		/*code*/
	}

	/*-----------------------------------------*/

	do {

	}
	while (condition);

	/*-----------------------------------------*/

	for (int i = 0; i < count; ++i)
	{
		/* code */
	}

	/*-----------------------------------------*/

	for (std::vector<int>::iterator i = list.begin(); i != list.end(); ++i)
	{
		/*code*/
	}

	//equivalent 

	for (auto i : list) {
		/*code*/
	}
```
---
### Functions/Sous-programmes
```cpp
	void f() {}
	auto lambda = [closure/*by ref or value*/](int param1)mutable->void{code};

	//surcharge d'operateur
	int operator +(int a, int b) {return 2;}
```
*tt les operateurs surchargeables*
| assignment | increment/decrement | arithmetic | logical  | comparison | member/access | other        |
|------------|---------------------|------------|----------|------------|---------------|--------------|
|  a = b     |                     | +a         |          |            |               |              |
| a += b     |                     | -a         |          |            |               |              |
| a -= b     |                     | a + b      |          |            |               |              |
| a \*= b    | ++a                 | a - b      | !a       | a == b     | a\[...]       | appel de fct |
| a /= b     | --a                 | a * b      | a && b   | a != b     | \*a           | a(...)       |
| a %= b     | a++                 | a / b      | a \|\| b | a < b      | &a            | virgule      |
| a &= b     | a--                 | a % b      |          | a > b      | a->b          | a, b         |
| a \|= b    |                     | \~a        |          | a <= b     | a.b           | conditional  |
| a ^= b     |                     | a & b      |          | a >= b     | a->\*b        | a ? b : c    |
| a <<= b    |                     | a \| b     |          | a <=> b    | a.\*b         |              |
| a >>= b    |                     | a ^ b      |          |            |               |              |
|            |                     | a << b     |          |            |               |              |
|            |                     | a >> b     |          |            |               |              |


---
## Packages
```cpp
	//comme en C
	//> dans un fichier.h
	#ifndef PACKAGE_GUARD
	#define PACKAGE_GUARD
		//les declarations (templates, struct, classe)
		void f();
	#endif

	//on fait un autre fichier.c ou il y aura les implémentation
	//et on importe le fichier.h
	#include "fichier.h"

	/*-----------------------------------------*/

	namespace std {
		void print(){}
	}

	std::print();

	//pour ne pas repeter std::
	using namespace std;
```
---
## Préprocesseurs/Macros
```cpp
	//les preprocesseur remplace juste betement les token 
	#define toStr(v)(#v) 	  //transforme en chaine toStr(t) => "t"
	#define conc(a,b)(a ## b) //concat les 2 params  conc(3,R) => 3R
```
---
## Exceptions
```cpp
	try {

	}
	catch(std::Exception e) {
		throw ;
	}
```
---
## Multithread/tasks
```C++
	//code
```
---
## Objets
```cpp
	class Obj {

	/*encapsulation*/
	private:
		int attr;
	public:
    	Obj() = default;
    	Obj(Obj& o) = 0; //suppression de la methode
    	~Obj() {/*destructeur*/}
	protected:
		void method() {}
		friend void d(); //fonction autorisé à manipulée les données
	}

	class Derived : public Obj {

	private:
		void method() {/*override*/}
	}
```
---
## Mots de languages
```C++
alignas
alignof
and
and_eq
asm
atomic_cancel
atomic_commit
atomic_noexcept
auto
bool
break
case
catch
char
char8_t
char16_t
char32_t
class
compl
concept
const
consteval
constexpr
constinit
const_cast
continue
co_await
co_return
co_yield
decltype
default
delete
do
double
dynamic_cast
else
enum
explicit
export
extern
false
float
for
friend
goto
if
inline
int
long
mutable
namespace
new
noexcept
nullptr
operator
private
protected
public
reflexpr
register
reinterpret_cast
requires
return
short
signed
sizeof
static
static_assert
static_cast
struct
switch
synchronized
template
this
thread_local
throw
true
try
typedef
typeid
typename
union
unsigned
using
virtual
void
volatile
wchar_t
while
not
not_eq
or
or_eq
bitand
bitor
xor
xor_eq
```
