-- patilo --
-- como ya tenemos casi todo el CRUD--
-- nos falta el read que es leer la info de las tablas--

select * from producto; -- nos muestra todo de la tabla producto
select * from producto limit 1; -- aqui nos mostrara solo el valor del 1er dato
select * from producto where precio > 100; -- aqui podemos usar < = > para buscarlos por precio
select * from producto where marca != 'nike';  -- aqui buscamos todo en marca que sea diferente a nike
select * from producto where precio between 100 and 200; -- aqui buscamos precio entre 100 y 200
select * from producto order by precio asc; -- le decimos que ordene los precios por orden ascendente - a +
select * from producto order by precio desc; -- y aqui le decimos que busque por orden descendente + a -


-- uso de like -- 
select * from producto where marca like '%apple%'; -- aqui buscamos solo que tenga toda la palabra apple
select * from producto where marca like 'ad%';  -- aqui busca que el inicio tenga AD en sus palabras, buscara todo lo que tenga ad en marca
select * from producto where marca like '%e';  -- y aqui buscara todas las marcas que terminen con E

-- uso  de maximo y minimo --
-- cambiaremos momentaneamente el nombre de la tabla
-- con la palabra reservada AS, no se cambiara para siempre solo por el momento

select max(precio) as mas_caro  from producto; -- buscara el precio mas alto y nos dira el precio con un nombre CARO 
select max(precio) as mas_caro, nombre  from producto; -- buscara el precio mas alto y nos dira el precio con un nombre CARO y el nombre
select min(precio) as mas_barato, id, nombre from producto; -- buscara el precio minimo y le cambiamos el precio a MAS BARATO y el id y nombre

-- busqueda sin el  *  usaremos solo columnas

select nombre, precio, id from producto; -- aqui buscara solo las columnas indicadas y no todas
select nombre as name, precio as price, id as indicador from producto; -- aqui podemos cambiarle el nombre a la columna de forma momentanea

-- saludos! -- 
