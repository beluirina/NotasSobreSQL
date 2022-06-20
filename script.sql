
Operadores logicos - AND / OR

<> - differente de
On - condicion 

New row query
| SELECT
| WHERE
| ORDER BY
| FROM

SELECT F.nombre, F.dni FROM factura AS F = F.nombre

JOIN cliente AS C ON ____ → C.DNI = F.cliente

WHERE dni IN (504, 505) == OR  [en el WHERE …IN se busca evitar ser repetitivo. Ex or 504 or 505 ….]
IN(subconsulta)

QUERY MINIMO → SELECT * FROM [tabla]

Para agrupar y que no salga un mismo usuario x veces → GROUP BY [dni] DISTINCT [dni]
SELECT COUNT GROUP BY * AS [renombrar columna nueva] FROM [tabla]

SELECT COUNT * as [cantidad], min DNI as [nombre columna = maximo], max DNI as  [nombre columna], avg DNI as [nombre columna], sum DNI as [nombre columna]

HAVING COUNT (*) > 1 → mas de 1 entrada //row

AUTOSCRIPT - mejor evitar. Escribe más por escribir de la manera más formal posible.


SELECT * FROM facturas AS f
WHERE f.dni IN(SELECT p.dni FROM personas AS p) 
// WHERE p.dni = f.dni
ORDER BY p.dni, p.nombre
SELECT p.dni, p.nombre, f.numFactura
FROM personas as p full outer join facturas as f on p.dni - f.dni
WHERE p.dni is NULL or f.dni is NULL


