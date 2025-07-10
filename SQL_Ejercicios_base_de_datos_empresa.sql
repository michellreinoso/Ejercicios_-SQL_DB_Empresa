USE  DB_EMPRESA;

-- Actividad
-- Mostrar productos con stock menor a 10.
SELECT * FROM producto WHERE stock < 10;

-- Mostrar ventas hechas por el colaborador 3.
SELECT * FROM venta WHERE colaborador_id_colaborador = 3;

/** FILTRO **/
-- productos que tienen un stock crítico. Se considera crítico si el stock es menor a 20 unidades.
SELECT nombre, stock as stock_critico FROM PRODUCTO WHERE stock < 20;

-- reporte de los productos cuyo precio está entre $50,000 y $100,000, para diseñar una campaña de descuentos.
SELECT * FROM PRODUCTO WHERE precio BETWEEN 50000 AND 100000;

-- analizar las ventas realizadas por un grupo específico de colaboradores: 3, 7, 11 y 15.
SELECT * FROM VENTA WHERE COLABORADOR_ID_COLABORADOR IN (3, 7, 11, 15);

-- extraer todos los clientes que utilizan correos de .net, para una campaña de email marketing.
SELECT * FROM CLIENTE WHERE CORREO LIKE '%net';


/** FUNCIONES **/
-- Mostrar todos los nombre de los productos en mayuscula
SELECT UPPER(NOMBRE) FROM PRODUCTO;

-- Mostrar los precios de los productos redondeados 1 decimal
SELECT ROUND(PRECIO, 1) FROM PRODUCTO;

-- Mostrar el año en el que se realizaron las ventas
SELECT year(fecha_venta) FROM VENTA;

/** FUNCIONES DE AGREGACION **/
-- Total de ventas por cada mes del año
SELECT MONTH(FECHA_VENTA) AS MES, COUNT(TOTAL_VENTA) AS CONTEO, SUM(total_venta) AS VENTA_TOTAL_MES
FROM VENTA
GROUP BY MES
HAVING MES IN (3, 6, 8)
ORDER BY MES ASC;

-- Ranking de los productos mas vendidos por cantidad
SELECT *
FROM DETALLE_VENTA;

SELECT SUM(CANTIDAD) AS SUMA, PRODUCTO_ID_PRODUCTO AS PRODUCTO
FROM DETALLE_VENTA
GROUP BY PRODUCTO
ORDER BY SUMA DESC;

-- Total de ventas por mes
SELECT MONTH(FECHA_VENTA) AS MES, COUNT(TOTAL_VENTA) AS CONTEO, SUM(total_venta) AS VENTA_TOTAL_MES
FROM VENTA
GROUP BY MES
ORDER BY MES ASC;

/**  JOINS **/
-- INNER JOIN – 
-- Obtener ventas 

SELECT C.NOMBRE AS nombre_cliente, V.TOTAL_VENTA AS total_Venta
FROM VENTA AS V
INNER JOIN CLIENTE AS C ON V.CLIENTE_ID_CLIENTE = C.ID_CLIENTE;
--
SELECT C.NOMBRE AS nombre_cliente, SUM(V.TOTAL_VENTA) AS total_Venta
FROM VENTA AS V
INNER JOIN CLIENTE AS C ON V.CLIENTE_ID_CLIENTE = C.ID_CLIENTE
GROUP BY nombre_cliente
ORDER BY total_venta DESC
LIMIT 10;



-- LEFT JOIN – Clientes sin Ventas
-- Saber qué clientes aún no han realizado ninguna compra.
-- ver todos los productos aunque no se hayan vendido

SELECT *
FROM PRODUCTO AS P
LEFT JOIN DETALLE_VENTA DV ON P.ID_PRODUCTO = DV.PRODUCTO_ID_PRODUCTO;


-- INNER JOIN – Ventas por Cliente
-- Conocer el detalle de todas las ventas realizadas, junto con el nombre y correo de cada cliente.

SELECT C.NOMBRE, C.CORREO, V.TOTAL_VENTA, V.FECHA_VENTA, PG.REFERENCIA_CONVENIO
FROM VENTA V
INNER JOIN CLIENTE C ON V.CLIENTE_ID_CLIENTE = C.ID_CLIENTE
INNER JOIN PAGO PG ON PG.VENTA_ID_VENTA = V.ID_VENTA;

/** SUBCONSULTAS **/
-- cual es el producto mas caro comprado por un cliente especifico?
SELECT P.NOMBRE, P.PRECIO
FROM PRODUCTO P
WHERE ID_PRODUCTO > (
		SELECT DV.PRODUCTO_ID_PRODUCTO
        FROM DETALLE_VENTA DV
        INNER JOIN VENTA V ON V.ID_VENTA = DV.VENTA_ID_VENTA
        WHERE CLIENTE_ID_CLIENTE = 1
        ORDER BY DV.SUB_TOTAL DESC
        LIMIT 1
        )
LIMIT 1;

-- El gerente desea saber cual es el producto mas caro que ha sido vendido

SELECT P.NOMBRE, P.PRECIO, DV.ID_DETALLE_VENTA
FROM PRODUCTO AS P
INNER JOIN DETALLE_VENTA DV ON P.ID_PRODUCTO = DV.PRODUCTO_ID_PRODUCTO
WHERE P.PRECIO >= (SELECT ROUND(SUB_TOTAL / DV.CANTIDAD) PRECIO_UNITARIO
								FROM DETALLE_VENTA DV
                                ORDER BY PRECIO_UNITARIO DESC
                                LIMIT 1);
	
/** VIEW **/
-- CREAR UNA VIEW

CREATE VIEW consultar_tabla_producto AS
SELECT *
FROM producto
WHERE precio BETWEEN 20000 AND 60000;

-- Consultar una view
SELECT * FROM CONSULTAR_TABLA_PRODUCTO;

-- Quiz
-- Ejercicios del reto:
-- 1. Total gastado por cada cliente
-- Mostrar el nombre de los clientes y el total que ha gastado en todas sus compras.

SELECT C.NOMBRE AS CLIENTE, SUM(V.total_venta) AS TOTAL_COMPRA
FROM VENTA V
INNER JOIN CLIENTE C ON V.CLIENTE_ID_CLIENTE = C.ID_CLIENTE
GROUP BY C.ID_CLIENTE, C.NOMBRE;

-- 2 2.	Clientes con gasto superior al promedio
-- Mostrar los nombres de los clientes cuyo gasto total es mayor al promedio del total gastado por todos los clientes.

SELECT C.NOMBRE AS CLIENTE, SUM(V.TOTAL_VENTA) AS TOTAL_COMPRA_MAYOR_PROMEDIO
FROM VENTA V
INNER JOIN CLIENTE C ON V.CLIENTE_ID_CLIENTE = C.ID_CLIENTE
GROUP BY C.ID_CLIENTE, C.NOMBRE
HAVING SUM(V.TOTAL_VENTA) > (SELECT AVG(total_compras_cliente) AS promedio_total_gastado
								FROM (SELECT SUM(total_venta) AS total_compras_cliente
                                FROM venta
                                GROUP BY cliente_id_cliente) AS PROMEDIO
                                );
                                
-- 3.	Producto más vendido por cantidad total
-- Nombre y cantidad del producto que más unidades ha vendido.

SELECT P.NOMBRE AS NOMBRE_PRODUCTO, SUM(DV.CANTIDAD) AS CANTIDAD_TOTAL
FROM PRODUCTO AS P
INNER JOIN DETALLE_VENTA DV ON P.ID_PRODUCTO = DV.PRODUCTO_ID_PRODUCTO
GROUP BY P.ID_PRODUCTO
ORDER BY CANTIDAD_TOTAL DESC
LIMIT 1;

-- 4.	Colaborador con más ventas en dinero
-- Nombre y total del colaborador que ha vendido más dinero en total.

SELECT CO.NOMBRE AS NOMBRE_COLABORADOR, SUM(V.TOTAL_VENTA) AS VENTA_TOTAL
FROM COLABORADOR AS CO
INNER JOIN VENTA V ON CO.ID_COLABORADOR = V.COLABORADOR_ID_COLABORADOR
GROUP BY CO.ID_COLABORADOR
ORDER BY VENTA_TOTAL DESC
LIMIT 1;

-- 5.	Productos más vendidos y con mayor precio
-- Mostrar los productos que se han vendido en más de 3 ventas distintas y que su precio sea superior a $100.000

SELECT P.NOMBRE AS NOMBRE_PRODUCTO, P.PRECIO, COUNT(DISTINCT DV.VENTA_ID_VENTA) AS VENTAS_DISTINTAS, SUM(DV.CANTIDAD) AS CANTIDAD_TOTAL_VENDIDA
FROM PRODUCTO P
INNER JOIN DETALLE_VENTA DV ON P.ID_PRODUCTO = DV.PRODUCTO_ID_PRODUCTO
WHERE P.PRECIO > 10000
GROUP BY P.ID_PRODUCTO, P.NOMBRE, P.PRECIO
HAVING COUNT(DISTINCT DV.VENTA_ID_VENTA) > 3
ORDER BY CANTIDAD_TOTAL_VENDIDA DESC, P.PRECIO DESC;



