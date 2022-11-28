# SQL résumé 

references: mysql

---
## Compilation & lancement

on lance avec "\i script.sql"
sans doute pas pour tout les interpreteurs

---
## Types

*primitif*
```sql
	CHAR(25) / VARCHAR(25)				--fixed length string / variable length string
	
	BINARY(25) / VARBINARY(25)			--binary bytes string (like hashed)
	
	TINYBLOB(size) / BLOB / MEDIUMBLOB / LONGBLOB 	--binary large object like img
	
	BIT(size)
	
	BOOL
	INT(size)
	FLOAT(size, d)
	DOUBLE(size, d)
	
	DATE						--YYYY-MM-DD
	DATETIME(fsp)					--YYYY-MM-DD hh:mm:ss
	TIME(fsp)					--hh:mm:ss
	YEAR
```
---
## Tableau et collection
```sql
	ENUM("lundi", "mardi", "mecredi", ...)	     --doit avoir une valeur dans la liste
	SET ("printemps", "été", "automne", "hiver") --peut avoir une ou plusieur valeur dans la liste
```
---
## Expression

beaucoup d'operateur peuvent etre remplacer par leur versions C-like comme or -> || 

*operateur booleen*
| symbole | definition |
|--|--|
| and  | et                              |
| or   | ou                              |
| not  | non                             |
| xor  | xor                             |
| all  | vrai si tout les éléments remplisse les conditions |
| any  | vrai si un seul éléments remplit la condition |
| some | proche de any (a definir)       |
| like | matches un pattern		 |
| exists | vrai si minimum un element    |
| between | entre 2 index                |
| in   | dans une selection de proposition |
|  =   | egalité                         |
| <>   | inegalité                       |
| <=>  | inegalité mais pas null         |
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

*autre symboles*
| symbole | definition |
|--|--|
|  :=  | affectation	                 |
---
## Condition
```sql
	IF condition THEN
		--code
	ELSIF condition THEN
		--code
	ELSE
		--code
	END IF;
```
---
### Boucles
```sql
	LOOP
		--code
	END LOOP ;
	
	WHILE condition DO
		--code
	END WHILE;
	
	REPEAT
		--code
	UNTIL condition END REPEAT
```
---
### Function/Sous-programme
```sql
	DELIMITER &&
	CREATE PROCEDURE p (INOUT param1 TYPE)  
	BEGIN  
	    --code
	END &&  
	DELIMITER ;
	
	call p ;
	drop procedure p;
	--------------------------------------------
	DELIMITER $$
	CREATE FUNCTION name_of_function(INOUT param1 TYPE)
	RETURNS datatype
	[NOT] DETERMINISTIC	--si elle retourne toujours la meme chose avec les meme param
	BEGIN
		--code
	END $$
	DELIMITER ;
```
---
## Exception
```sql
	--todo
```
---
## INTEROGATION
```sql
	SELECT ...,... 
	FROM ...
	WHERE ...
	ORDER BY ...croissant par defaut(ASC),...sinon(DESC);
```
---
## SUPPRESSION
```sql
	DELETE...,... 
	FROM  ...
	WHERE ...
	LIMIT ...;
```
---
## AJOUT
```sql
	INSERT INTO ... 
	VALUES ('...');
```
---
## MODIFICATION
```sql
	UPDATE ...
	SET ...=...
	WHERE ...
	LIMIT ...;
```
---
## CREATION
```sql
	CREATE TABLE ...
	(... integer 	 not null primary key,
	 ... varchar(20) not null FOREIGN KEY,
	 ... char(15)    unique,
	 ... char        default 'A',
	 ... char        FOREIGN KEY REFERENCES,
	 ... char        CHECK (conditions));
```
---
## MODIFICATION DE TABLE
```sql
	ALTER TABLE ... ADD|DROP|ALTER ... ;
```
---
## CONTRAINTE
```sql
	CONTRAINT ... = nom de la contrainte
	NO ACTION 
	ON DELETE
	ON UPDATE
	CASCADE		  = change aussi les table liées
	SET NULL
	SET DEFAULT
```
---
## JOIN
```sql
	... JOIN ...
	... NATURAL JOIN ...
	... INNER JOIN ...
	... OUTER JOIN ...
	... LEFT JOIN ...
	... RIGHT JOIN ...
	... FULL JOIN ...
```
---
## Mot de language
```sql
	--beaucoup trop de mots clefs
```
