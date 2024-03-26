# Haskell résumé 

---
## Compilation & lancement

on compile avec `ghc leProgramme.hs`
on lance avec `leProgramme.exe`

---
## Types

*primitif*
```haskell
   String
   Bool
   Int
```

*defini par l'utilisateur*
```haskell
   data MyType = MyValue1 | MyValue2

   data Point = TwoD   Int Int
              | ThreeD Int Int Int

   data Maybe a = Just a | Nothing

   --alias avec surcharge de constructeur
   newtype Home = H String
   
   --alias
   type FirstName = String

   --composite
   data Card = Card {value :: CardValue, 
                      suit :: Suit}

```
---
## Tableau et collection
```haskell
   list::[a]
   list = ["hello", "world"]

   arbre::Tree a
   arbre = Branch (Branch (Leaf 1) (Leaf 2) ) (Leaf 3)
```
---
## Expression

*operateur booleen*
| symbole | definition |
|--|--|
| &&   | et                              |
| \|\|   | ou                              |
| ^    | xou                             |
| not  | non                             |
| ==   | egalité                         |
| /=   | inegalité                       |
|  >   | sup                             |
| >=   | supOuEgal                       |
|  <   | inf                             |
| <=   | infOuEgal                       |

*operateur mathématique*
| symbole | definition |
|--|--|
|  +   | addition                        |
|  -   | negation                        |
|  *   | multiplication                  |
|  /   | division                        |
|  %   | modulo                          |
|  ^   | puissance                       |
|  :+  | partie imaginaire               |

*autre symboles*
| symbole | definition |
|--|--|
|  =   | affectation                     |
|  ::  | cast/typage                     |
|  ..  | range                           |
|  {}  | inline => do,mdo,let            |
| \[\] | tableau                         |
|  ++  | concaténation                   |
|  :   | ajout d'element, décomposition  |
|  @   | groupe d'element décomposé      | 
|  ->  | typage de fonction/lambda       |
|  $   | évalue la premiere partie puis la seconde |
|  &   | opposé de $                     |
|  .   | donne la premiere fonction a la seconde |
|  !!  | prend l'element a l'index donnée |

---
## Condition
```haskell
   -- attention ici le else est obligatoire
   if   condition
   then code
   else code

   case a of 
      value     -> code
      value1    -> code
      otherwise -> code
```
---
### Boucles
```haskell
   --il faut utiliser map, pas de while
```
---
### Function/Sous-programme
```haskell

   name::(Contrainte a b) => a -> b -> c
   name param1 param2 = code

   name2 param1 param2 = sub_fct param1
      where sub_fct param = code

   name2 = let { d1 ; dn } in code

   --lambda
   \p1 p2 -> p1 * p2 + p2

   param1 ^-^ param2 = code

   ----------application

   name param1 param2

   param1 `name` param2

   param1 ^-^ param2

   name param1 --retourne une fonction, le dernier parametre manquant de cette expression est le parametre de la fonction retourné
```
---
## Package
```haskell
module Foo (

) where 

--body

import GHC.Num
import Text.ParserCombinators.ReadP( ReadP, readP_to_S, pfail )
import qualified Text.Read.Lex as L
import Data.Char hiding ( isControl
                        , isMark)

```
---
## Préprocesseur/Macro
```haskell
{-# LANGUAGE CPP #-}

#ifndef TRUC
   --ce sont les mêmes macro qu'en CPP déclencher avec ghc -XCPP foo.hs
#endif
```
*Pragma*
```haskell
{-# OPTIONS_GHC flags #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# INCLUDE "stdio.h" #-}
{-# DEPRECATED f, C, T "Don't use these" #-}
{-# WARNING unsafePerformIO "This is unsafe; I hope you know what you're doing" #-}
{-# MINIMAL (==) | (/=) #-}
{-# INLINE fct #-}
{-# RULES "map/map" forall f g xs.  map f (map g xs) = map (f . g) xs #-}
```
---
## Exception
```C
   //code
```
---
## Multithread/task
```C
   //code
```
---
## Objet
```haskell
   --interface
   class Foo t where
      fct::t->String

   --implémentation
   instance Foo Bar where
      fct bar = "code"

   data Contact = Contact  { ctName  :: String
                     , ctEmail :: String
                     , ctPhone :: String }

```
---
## Mot de language
```haskell
_ 
case 
class 
data 
default 
deriving 
do 
else 
family 
forall
foreign 
if 
import 
in 
infix 
infixl 
infixr 
instance 
let 
mdo
module 
newtype 
of 
proc 
rec 
signature 
then 
type 
via 
where
```
