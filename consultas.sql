select * from productos;
select * from ventas;
--select para filtrar por categoria y precio los productos

select nombre, precio, stock from productos
where categoria = 'Laptop'
and precio >= 1000;

--productos con ventas totales mayores a 50 unidades

select producto_id, sum(cantidad) from ventas 
group by producto_id 
having sum(cantidad)< 10;

select producto_id, sum(cantidad) from ventas 
where cantidad < 10
group by producto_id ;

select producto_id, count(cantidad) from ventas 
where cantidad < 10
group by producto_id;

--consulta de categorias con precio promedio mayor a 500 y un stock total mayor a 100 unidades

select categoria, round(avg(precio),2) as precio_promedio, sum(stock) as stock_total from productos
group by categoria
having sum(stock) between 100 and 200 and avg(precio)>500;


select * from ventas
where fecha between '2024-08-03' and '2024-08-06'
order by cantidad;  --(select min(fecha) from ventas) and (select min(fecha)+2 from ventas);

-- total de ventas por categoria

select p.categoria, sum(v.cantidad) as "total ventas"
from productos p
join ventas v on p.id = v.producto_id
group by p.categoria;