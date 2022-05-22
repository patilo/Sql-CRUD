-- como ya creamos las tablas, ahora insertamos datos en ellas
-- la palabra reservada es insert into
insert into vendedor (nombre, area)
values 
	('jaime', 'tecnologia'),
    ('fer', 'deportes'),
    ('jano', 'zapatos');
    
insert into producto(nombre, vendido_por, marca, precio)
values
	('redmi pro 11', 1,'xiaomi', 390.000),
    ('jordan air',3,'nike', 90.000),
    ('iphone pro 11', 1,'apple', 590.000),
    ('polera mbappe', 2,'adidas', 35.000),
    ('raqueta paddel', 2,'adidas', 115.000),
    ('acero y lluvia', 1,'caterpilar', 390.000);
-- una vez que tengamos insertado algunos datos, seguimos con las consultas o modificaciones 
-- de las tablas o datos, podemos usar alter, drop o delete para terminar de modificar
select * from producto;
-- consultamos la tabla y sus datos ingresados
-- actualizaremos un datos usando la palabra reservada UPDATE
update producto set nombre ='jordain air max' where id= 2; -- cambiamos el nombre del id2
update producto set nombre ='jordan new air max', precio = 99.000 where id=2; -- cambiamos mas datos del id2
-- ahora eliminaremos 
delete from producto where id = 3; -- si no utilizamos el where, no nos dejara hacer el delete por seguridad
-- por ejemplo con una columna
delete from producto where marca = 'nike'; -- aqui nos dejaria un msj de safe mode ya que habrian muchos nike
