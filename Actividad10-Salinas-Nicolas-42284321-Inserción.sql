use aerolinea;
-- Tabla calle
insert into calle values("Ituzaingo", 1);
insert into calle values("Roca", 2);
insert into calle values("Campichuelo", 3);
insert into calle values("Meeks", 4);
insert into calle values("Mamberti", 5);
insert into calle values("Amebamar", 6);
insert into calle values("Capello", 7);
insert into calle values("San Martin", 8);
insert into calle values("Azara", 9);
insert into calle values("Sarmiento", 10);
insert into calle values("Rivadavia", 11);
insert into calle values("Martinto", 12);
insert into calle values("Bolaños", 13);
insert into calle values("Loria", 14);
    
-- Tabla localidad
insert into localidad values("Lanus", 1);
insert into localidad values("Lomas de Zamora", 2);
insert into localidad values("CABA", 3);
insert into localidad values("Avellaneda", 4);

-- Tabla ciudad
insert into ciudad values(1,"CABA");
insert into ciudad values(2,"Mar Del Plata");
insert into ciudad values(3,"San Carlos de Bariloche");

-- Tabla provincia
insert into provincia values ("Buenos Aires", 1);
insert into provincia values ("CABA", 2);

-- Tabla país
insert into pais values( "Estados Unidos", 1);
insert into pais values("Alemania", 2);

-- Tabla aeropuerto
insert into aeropuerto values ("BUE", "Aeroparque Jorge Newbery", 1);
insert into aeropuerto values ("MDQ", "Astor Piazolla", 2);
insert into aeropuerto values ("BRC", "Teniente Luis Candelaria", 3);

-- Tabla marca
insert into marca values ("Cessna", 1, 1);
insert into marca values ("Beechcraft", 2, 1);
insert into marca values ("Fokker", 3, 2);

-- Tabla modelo
insert into modelo values(1, "Citation", 1);
insert into modelo values(2, "Baron", 2);
insert into modelo values(3, "F-27", 3);
insert into modelo values(4, "King Air", 2);

-- Tabla avion
insert into avion values("LV-ABC", '2010-12-12', 1);
insert into avion values("LV-CDE", '2011-10-01', 2);
insert into avion values("LV-FGH", '2008-05-04', 3);
insert into avion values("LV-IJK", '2014-06-07', 1);
insert into avion values("LV-LMN", '2012-07-08', 4);

-- Tabla vuelo
insert into vuelo values("TT1234", '18-05-01 20:00:00', '18-05-01 23:45:00', "LV-ABC", "BUE", "BRC");
insert into vuelo values("TT3456", '18-05-02 10:00:00', '18-05-02 12:00:00', "LV-CDE", "BUE", "MDQ");
insert into vuelo values("TT1235", '18-05-02 09:00:00', '18-05-02 10:50:00', "LV-ABC", "BRC", "BUE");
insert into vuelo values("TT1256", '18-05-02 08:00:00', '18-05-02 10:05:00', "LV-FGH", "BUE", "MDQ");
insert into vuelo values("TT5632", '18-05-03 07:00:00', '18-05-03 09:15:00', "LV-IJK", "MDQ", "BUE");
insert into vuelo values("TT3333", '18-05-03 07:00:00', '18-05-03 10:50:00', "LV-LMN", "BUE", "BRC");
insert into vuelo values("TT1257", '18-05-04 08:00:00', '18-05-04 10:05:00', "LV-FGH", "BUE", "MDQ");
insert into vuelo values("TT3457", '18-05-04 10:00:00', '18-05-04 12:00:00', "LV-CDE", "MDQ", "BUE");
insert into vuelo values("TT5633", '18-05-05 07:00:00', '18-05-05 09:15:00', "LV-IJK", "BUE", "MDQ");

-- Tabla pasajero
insert into pasajero values ("Alejo", "Barragan", 11111111, 1, 123, 1, 1, 1);
insert into pasajero values ("Andres Alfredo", "Casas", 22222222, 1, 4561, 2, 3, 2);
insert into pasajero values ("Barbara", "Chaves", 33333333, 0, 6532, 3, 4, 1);
insert into pasajero values ( "Brisa", "Chimbo", 44444444, 1,  562, 4, 2, 1);
insert into pasajero values ("Camila", "Chudoba", 55555555, 0, 2356, 5, 1, 1);
insert into pasajero values ("Carlos", "Cires", 66666666, 1, 2345, 6, 3, 2);
insert into pasajero values ("Carlos Sebastian", "Cusato", 77777777, 0, 1589, 7, 2, 1); 
insert into pasajero values ("Christian", "Dominguez", 88888888, 1,  356, 6, 3, 2);
insert into pasajero values ("Cristian", "Escullini", 99999999, 1, 1296, 4, 2, 1);
insert into pasajero values ("Cristian", "Feijoo", 10111213, 1, 3652, 8, 4, 1);

-- Tabla piloto
insert into piloto values ('1994-10-01', "20-12345678-8",  12345678, "Federico Bernal", "Juarez", 2335, 8, 3, 2);
insert into piloto values ('2003-07-01', "20-34567890-1",  34567890, "Franco", "Lacoste", 1254, 9, 2, 1);
insert into piloto values (' 2001-04-01', "27-45678901-1",  45678901, "Mariana", "Laime", 500, 10, 1, 1);
insert into piloto values ('2013-05-01', "20-56789123-3",  56789123, "Germán Ignacio", "Lopez", 2351, 11, 3, 2);
insert into piloto values ('2010-07-01', "20-67891234-4", 67891234, "Giuliano", "Martinez", 663, 12, 1, 1);
insert into piloto values ('2015-08-01', "27-78912345-5", 78912345, "Adriana", "Medina", 1256, 13, 1, 1);
insert into piloto values ('2011-03-01', "20-90123456-6",  90123456, "Jair Alberto", "Melgarejo", 333, 14, 2, 1);

-- Tabla piloto_realiza_vuelo
insert into piloto_realiza_vuelo values("TT1234", "20-12345678-8");
insert into piloto_realiza_vuelo values("TT3456", "27-78912345-5");
insert into piloto_realiza_vuelo values("TT1235", "20-12345678-8");
insert into piloto_realiza_vuelo values("TT1256", "27-45678901-1");
insert into piloto_realiza_vuelo values("TT5632", "20-56789123-3");
insert into piloto_realiza_vuelo values("TT3333", "20-12345678-8");
insert into piloto_realiza_vuelo values("TT1257", "27-45678901-1");
insert into piloto_realiza_vuelo values("TT3457", "27-78912345-5");
insert into piloto_realiza_vuelo values("TT5633", "20-56789123-3");

-- Tabla pasajero_toma_vuelo
insert into pasajero_toma_vuelo values("TT1234", 44444444);
insert into pasajero_toma_vuelo values("TT1234", 55555555);
insert into pasajero_toma_vuelo values("TT1234", 66666666);
insert into pasajero_toma_vuelo values("TT3456", 77777777);
insert into pasajero_toma_vuelo values("TT3456", 88888888);
insert into pasajero_toma_vuelo values("TT3456", 99999999);
insert into pasajero_toma_vuelo values("TT1235", 44444444);
insert into pasajero_toma_vuelo values("TT1235", 55555555);
insert into pasajero_toma_vuelo values("TT1256", 11111111);
insert into pasajero_toma_vuelo values("TT1256", 22222222);
insert into pasajero_toma_vuelo values("TT1256", 33333333);
insert into pasajero_toma_vuelo values("TT5632", 77777777);
insert into pasajero_toma_vuelo values("TT5632", 88888888);
insert into pasajero_toma_vuelo values("TT5632", 99999999);
insert into pasajero_toma_vuelo values("TT3333", 77777777);
insert into pasajero_toma_vuelo values("TT3333", 88888888);
insert into pasajero_toma_vuelo values("TT3333", 99999999);
insert into pasajero_toma_vuelo values("TT1257", 22222222);
insert into pasajero_toma_vuelo values("TT3457", 77777777);
insert into pasajero_toma_vuelo values("TT3457", 88888888);
insert into pasajero_toma_vuelo values("TT3457", 99999999);
insert into pasajero_toma_vuelo values("TT5633", 77777777);
insert into pasajero_toma_vuelo values("TT5633", 88888888);
insert into pasajero_toma_vuelo values("TT5633", 99999999);	