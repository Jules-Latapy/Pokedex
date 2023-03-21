# C++ résumé

---
## Compilation & lancement

on compile avec `g++ -std=c++17 -Wall exemple.cpp`\
on lance avec `a.exe`

---
## Types

*primitif*
```cpp
	auto i=0;
	auto i2 {0};
	int  i3 = 0;
	std::string f = "hello";
	auto cString = "";
```

*defini par l'utilisateur*
```cpp
	struct point {
		int x;
		int y;
	};

	enum class rep {
		NON,OUI;
	};

	union point {
		char x;
	};
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
| and  | et                              |
| \|\| | ou                              |
| or   | ou                              |
| ^    | xou (binaire aussi)             |
| xor  | xou (binaire aussi)             |
| !    | non                             |
| not  | non                             |
| ==   | egalité                         |
| !=   | inegalité                       |
|  >   | sup                             |
| >=   | supOuEgal                       |
|  <   | inf                             |
| <=   | infOuEgal                       |

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
|  []  | tableau                         |
|  #   | macro                           |
|  &   | adresse de ...                  |
|  ?   | opération ternaire              |
|  ->  | attribut d'une adresse de structure              |
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
	auto lambda = [variableExterne](int param1)mutable->void{code};
	auto lambda = [](){};

  //surcharge d'operateur
  int operator +(int a, int b) {return 2;}

//tt les operateurs surchargeables
 a = b
a += b
a -= b
a *= b
a /= b
a %= b
a &= b
a |= b
a ^= b
a <<= b
a >>= b

++a
--a
a++
a--

+a
-a
a + b
a - b
a * b
a / b
a % b
~a
a & b
a | b
a ^ b
a << b
a >> b

!a
a && b
a || b

a == b
a != b
a < b
a > b
a <= b
a >= b
a <=> b

a[...]
*a
&a
a->b
a.b
a->*b
a.*b

function call
a(...)
comma
a, b
conditional
a ? b : c
```
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
	class e {
      e() = default;
      ~e() {/*destructeur*/}

		public:
		private:
		protected:

		//fonction autorisé à manipulée les données
		friend void d();
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
bitand
bitor
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
not
not_eq
nullptr
operator
or
or_eq
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
xor
xor_eq
```
