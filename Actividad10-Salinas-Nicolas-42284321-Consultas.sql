use aerolinea;
-- a. Listado de pasajeros de la empresa (apellido, nombre, dni).
select p.apellido, p.nombre, p.dni from pasajero p;
-- b. Listado de pasajeros de la empresa (apellido, nombre, dni, domicilio).
select p.apellido, p.nombre, p.dni, p.domicilio, c.nombre as calle, l.nombre as localidad, po.nombre as provincia
 from pasajero p
 inner join calle c on c.idCalle = p.calle_idCalle
 inner join localidad l on l.idLocalidad = p.localidad_idLocalidad
 inner join provincia po on po.idProvincia = p.provincia_idProvincia;
-- c. Listado de pasajeros de la empresa (apellido, nombre, dni, domicilio)
-- mostrando sólo a los que participan del programa de viajeros frecuentes,
-- ordenados por apellido y nombre.
select p.apellido, p.nombre, p.dni, p.domicilio, c.nombre as calle, l.nombre as localidad, po.nombre as provincia
 from pasajero p
 inner join calle c on c.idCalle = p.calle_idCalle
 inner join localidad l on l.idLocalidad = p.localidad_idLocalidad
 inner join provincia po on po.idProvincia = p.provincia_idProvincia
 where p.viajero_frecuente = true
 order by p.apellido, p.nombre;
-- d. Listado de los aviones de la compañía, (marca, modelo, matrícula, fecha de
-- entrada en servicio, país de origen).
select marca.nombre as marca, modelo.nombre as modelo, av.matricula, av.fecha_entrada_servicio, pais.nombre as pais
from avion av
inner join modelo on modelo.idModelo = av.modelo_idModelo
inner join marca on marca.codigo = modelo.marca_codigo
inner join pais on pais.idPais = marca.pais_idPais;
-- e. Listado de los aviones de la compañía, (marca, modelo, matrícula, fecha de
-- entrada en servicio, país de origen) cuyo país de origen sea “Alemania”.
select marca.nombre as marca, modelo.nombre as modelo, av.matricula, av.fecha_entrada_servicio, pais.nombre as pais
from avion av
inner join modelo on modelo.idModelo = av.modelo_idModelo
inner join marca on marca.codigo = modelo.marca_codigo
inner join pais on pais.idPais = marca.pais_idPais
where pais.nombre = "Alemania";
-- f. Listado de vuelos realizados mostrando código, marca, modelo y matrícula
-- del avión, Código IATA del Aeropuerto origen, Código IATA del Aeropuerto
-- destino, fecha hora partida, fecha hora llegada y CUIL piloto.
select vu.codigo, mar.nombre as marca, mo.nombre as modelo, av.matricula, aero.codigo_iata as codIATA_aeoruperto_origen,
aero2.codigo_iata as codIATA_aeropuerto_destino, vu.fecha_partida, vu.fecha_llegada, prv.piloto_cuil from vuelo vu
inner join piloto_realiza_vuelo prv on prv.vuelo_codigo = vu.codigo
inner join aeropuerto aero on aero.codigo_iata = vu.aeropuertoOrigen_codigo_iata
inner join aeropuerto aero2 on aero2.codigo_iata = vu.aeropuertoDestino_codigo_iata
inner join avion av on av.matricula = vu.avion_matricula
inner join modelo mo on mo.idModelo = av.modelo_idModelo
inner join marca mar on mar.codigo = mo.marca_codigo
group by vu.codigo;
-- g. Listado de vuelos realizados mostrando código, marca, modelo y matrícula
-- del avión, Código IATA del Aeropuerto origen, Código IATA del Aeropuerto
-- destino, fecha hora partida, fecha hora llegada y CUIL piloto que hayan
-- partido del aeropuerto “BUE” ordenados por fecha hora de partida.
select vu.codigo, mar.nombre as marca, mo.nombre as modelo, av.matricula, aero.codigo_iata as codIATA_aeoruperto_origen,
aero2.codigo_iata as codIATA_aeropuerto_destino, vu.fecha_partida, vu.fecha_llegada, prv.piloto_cuil from vuelo vu
inner join piloto_realiza_vuelo prv on prv.vuelo_codigo = vu.codigo
inner join aeropuerto aero on aero.codigo_iata = vu.aeropuertoOrigen_codigo_iata
inner join aeropuerto aero2 on aero2.codigo_iata = vu.aeropuertoDestino_codigo_iata
inner join avion av on av.matricula = vu.avion_matricula
inner join modelo mo on mo.idModelo = av.modelo_idModelo
inner join marca mar on mar.codigo = mo.marca_codigo
where aero.codigo_iata = "BUE"
group by vu.codigo
order by vu.fecha_partida;
-- h. Listado de vuelos realizados mostrando codigo, Código IATA del Aeropuerto
-- origen, Código IATA del Aeropuerto destino, fecha hora partida y fecha hora
-- llegada que hayan partido del aeropuerto “BUE” y hayan arribado al aeropuerto “MDQ”.
select vu.codigo, mar.nombre as marca, mo.nombre as modelo, av.matricula, aero.codigo_iata as codIATA_aeoruperto_origen,
aero2.codigo_iata as codIATA_aeropuerto_destino, vu.fecha_partida, vu.fecha_llegada, prv.piloto_cuil from vuelo vu
inner join piloto_realiza_vuelo prv on prv.vuelo_codigo = vu.codigo
inner join aeropuerto aero on aero.codigo_iata = vu.aeropuertoOrigen_codigo_iata
inner join aeropuerto aero2 on aero2.codigo_iata = vu.aeropuertoDestino_codigo_iata
inner join avion av on av.matricula = vu.avion_matricula
inner join modelo mo on mo.idModelo = av.modelo_idModelo
inner join marca mar on mar.codigo = mo.marca_codigo
where aero.codigo_iata = "BUE" and aero2.codigo_iata = "MDQ"
group by vu.codigo;
-- i. Listado de todos los vuelos realizados y sus pasajeros, (código, apellido, nombre, dni)
select vu.codigo, p.apellido, p.nombre, p.dni from vuelo vu
inner join pasajero_toma_vuelo ptv on ptv.vuelo_codigo = vu.codigo
inner join pasajero p on p.dni = ptv.pasajero_dni;
-- j. Cantidad de vuelos realizados que hayan partido del aeropuerto “BUE” y hayan arribado al aeropuerto “BRC”
select count(vu.codigo) as vuelos_desde_BUE_a_BRC from vuelo vu
inner join aeropuerto aero on aero.codigo_iata = vu.aeropuertoOrigen_codigo_iata
inner join aeropuerto aero2 on aero2.codigo_iata = vu.aeropuertoDestino_codigo_iata
where aero.codigo_iata = "BUE" and aero2.codigo_iata = "BRC";
-- k. Cantidad de vuelos realizados que hayan partido del aeropuerto “MDQ”
select count(vu.codigo) as vuelos_desde_MDQ from vuelo vu
inner join aeropuerto aero on aero.codigo_iata = vu.aeropuertoOrigen_codigo_iata
where aero.codigo_iata = "MDQ";
-- l. Cantidad de vuelos realizados, por aeropuerto de origen (Código IATA,
-- cantidad)
select aero.codigo_iata, count(vu.codigo) as cantidad_vuelos from vuelo vu
inner join aeropuerto aero  on aero.codigo_iata = vu.aeropuertoOrigen_codigo_iata
group by aero.codigo_iata;
-- m. Cantidad de pasajeros transportados, por localidad del pasajero (localidad, cantidad)
select l.nombre, count(p.localidad_idLocalidad) as cantidad from pasajero p
inner join localidad l on l.idLocalidad = p.localidad_idLocalidad
group by p.localidad_idLocalidad;
-- n. Cantidad de pasajeros transportados, por dìa (fecha, cantidad)
select vu.fecha_partida, count(ptv.pasajero_dni) as cantidad from pasajero_toma_vuelo ptv
inner join vuelo vu on vu.codigo = ptv.vuelo_codigo
group by vu.fecha_partida;
-- o. Cantidad de vuelos por pasajero (apellido, nombre, dni, cantidad)
select pas.apellido, pas.nombre, pas.dni, count(ptv.pasajero_dni) as cantidad from pasajero pas
inner join pasajero_toma_vuelo ptv on ptv.pasajero_dni = pas.dni
group by pas.dni;