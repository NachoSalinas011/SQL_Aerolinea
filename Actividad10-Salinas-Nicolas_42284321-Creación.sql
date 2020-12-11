create schema if not exists aerolinea;
use aerolinea;
-- drop de todas las tablas
/*
drop table pasajero;
drop table piloto;
drop table aeropuerto;
drop table calle;
drop table localidad;
drop table ciudad;
drop table provincia;
drop table avion;
drop table modelo;
drop table marca;
drop table pais;
drop table vuelo;
*/
-- tabla calle
create table calle(
	nombre varchar(30) not null,
    idCalle int primary key
    );

-- tabla localidad
create table localidad(
	nombre varchar(30) not null,
    idLocalidad int primary key
    );
    select * from localidad;
    
-- tabla ciudad
create table ciudad(
	idCiudad int primary key,
    nombre varchar(30) not null
    );
    
-- tabla provincia
create table provincia(
	nombre varchar(30) not null,
    idProvincia int primary key
    );
    
-- tabla pais
create table pais(
	nombre varchar(30) not null,
    idPais int primary key
    );

-- tabla aeropuerto
create table aeropuerto(
	codigo_iata varchar(3) primary key,
    nombre varchar(30) not null,
    ciudad_idCiudad int not null,
    foreign key (ciudad_idCiudad) references ciudad(idCiudad)
    );
    
-- tabla marca
create table marca(
	nombre varchar(30) not null,
    codigo int primary key,
    pais_idPais int not null,
    foreign key (pais_idPais) references pais(idPais)
    );

-- tabla modelo
create table modelo(
	idModelo int primary key,
    nombre varchar(30) not null,
    marca_codigo int not null,
    foreign key (marca_codigo) references marca(codigo)
    );
    
-- tabla avion
create table avion(
	matricula varchar(6) primary key,
    fecha_entrada_servicio date not null,
    modelo_idModelo int not null,
    foreign key (modelo_idModelo) references modelo(idModelo)
    );
    
-- tabla pasajero
create table pasajero(
	nombre varchar(25) not null,
    apellido varchar(25) not null,
    dni int primary key,
    viajero_frecuente boolean not null,
    domicilio int not null,
    calle_idCalle int not null,
    localidad_idLocalidad int not null,
    provincia_idProvincia int not null,
    foreign key (calle_idCalle) references calle(idCalle),
    foreign key (localidad_idLocalidad) references localidad(idLocalidad),
    foreign key (provincia_idProvincia) references provincia(idProvincia)
    );
    
-- tabla piloto
create table piloto(
	fecha_ingreso date not null,
    cuil varchar(13) primary key,
    dni int not null,
    nombre varchar(25) not null,
    apellido varchar(25) not null,
	domicilio int not null,
    calle_idCalle int not null,
    localidad_idLocalidad int not null,
    provincia_idProvincia int not null,
    foreign key (calle_idCalle) references calle(idCalle),
    foreign key (localidad_idLocalidad) references localidad(idLocalidad),
    foreign key (provincia_idProvincia) references provincia(idProvincia)
    );
    
create table vuelo(
	codigo varchar(10) primary key,
    fecha_partida date not null,
    fecha_llegada date not null,
    marca_idMarca int not null,
    modelo_idModelo int not null,
	avion_matricula varchar(10) not null,
    aeropuertoOrigen_idAeropuerto int not null,
	aeropuertoDestino_idAeropuerto int not null,
    foreign key (marca_idMarca) references marca(idMarca),
    foreign key (modelo_idModelo) references modelo(idModelo),
    foreign key (avion_matricula) references avion(matricula),
	foreign key (aeropuertoOrigen_idAeropuerto) references aeropuerto(idAeropuerto),
    foreign key (aeropuertoDestino_idAeropuerto) references aeropuerto(idAeropuerto)
    );


