/*facultad*/
INSERT INTO `facultad` 
    (`cod_facultad`, `nombre`) 
VALUES 
    (NULL, 'Ciencias Exactas y Naturales'), 
    (NULL, 'Medicina'), 
    (NULL, 'Ciencias Sociales');

/*investigador*/
insert into investigador (cod_investigador, nombre, apellido, cod_facultad) values (1, 'Bram', 'Hallwood', 1);
insert into investigador (cod_investigador, nombre, apellido, cod_facultad) values (2, 'Bendix', 'Fattori', 2);
insert into investigador (cod_investigador, nombre, apellido, cod_facultad) values (3, 'Jolie', 'Drinnan', 1);
insert into investigador (cod_investigador, nombre, apellido, cod_facultad) values (4, 'Porty', 'Paling', 2);
insert into investigador (cod_investigador, nombre, apellido, cod_facultad) values (5, 'Kylie', 'Mellonby', 1);
insert into investigador (cod_investigador, nombre, apellido, cod_facultad) values (6, 'Abbot', 'Alwen', 1);

/*reserva*/
insert into reserva (cod_reserva, cod_investigador, inicio, fin) values (1, 1, '2018/12/16', '2019/04/01');
insert into reserva (cod_reserva, cod_investigador, inicio, fin) values (2, 1, '2019/01/27', '2019/02/01');
insert into reserva (cod_reserva, cod_investigador, inicio, fin) values (3, 1, '2019/08/22', '2019/08/27');
insert into reserva (cod_reserva, cod_investigador, inicio, fin) values (4, 3, '2019/09/08', '2019/09/13');
insert into reserva (cod_reserva, cod_investigador, inicio, fin) values (5, 4, '2019/02/04', '2019/05/24');
insert into reserva (cod_reserva, cod_investigador, inicio, fin) values (6, 4, '2019/01/20', '2019/01/25');
insert into reserva (cod_reserva, cod_investigador, inicio, fin) values (7, 1, '2019/03/06', '2019/09/23');
insert into reserva (cod_reserva, cod_investigador, inicio, fin) values (8, 3, '2019/01/28', '2019/08/26');
insert into reserva (cod_reserva, cod_investigador, inicio, fin) values (9, 5, '2019/01/02', '2019/01/07');
insert into reserva (cod_reserva, cod_investigador, inicio, fin) values (10, 2, '2019/05/29', '2019/09/18');

/*equipo*/
insert into equipo (nro_serie, descripcion, cod_facultad) values (1, 'in libero ut', 1);
insert into equipo (nro_serie, descripcion, cod_facultad) values (2, 'vestibulum ac est', 2);
insert into equipo (nro_serie, descripcion, cod_facultad) values (3, 'ac enim in', 3);
insert into equipo (nro_serie, descripcion, cod_facultad) values (4, 'viverra eget congue', 3);
insert into equipo (nro_serie, descripcion, cod_facultad) values (5, 'tincidunt lacus at velit', 2);

/*detalle_reserva*/
insert into detalle_reserva (cod_reserva, nro_serie) values (1,1);
insert into detalle_reserva (cod_reserva, nro_serie) values (1,2);
insert into detalle_reserva (cod_reserva, nro_serie) values (1,3);
insert into detalle_reserva (cod_reserva, nro_serie) values (1,4);
insert into detalle_reserva (cod_reserva, nro_serie) values (2,1);
insert into detalle_reserva (cod_reserva, nro_serie) values (2,4);
insert into detalle_reserva (cod_reserva, nro_serie) values (3,1);
insert into detalle_reserva (cod_reserva, nro_serie) values (3,2);
insert into detalle_reserva (cod_reserva, nro_serie) values (3,3);
insert into detalle_reserva (cod_reserva, nro_serie) values (4,2);
insert into detalle_reserva (cod_reserva, nro_serie) values (4,3);
insert into detalle_reserva (cod_reserva, nro_serie) values (4,4);
insert into detalle_reserva (cod_reserva, nro_serie) values (5,1);
insert into detalle_reserva (cod_reserva, nro_serie) values (5,2);
insert into detalle_reserva (cod_reserva, nro_serie) values (5,3);
insert into detalle_reserva (cod_reserva, nro_serie) values (6,1);
insert into detalle_reserva (cod_reserva, nro_serie) values (6,3);
insert into detalle_reserva (cod_reserva, nro_serie) values (6,4);
insert into detalle_reserva (cod_reserva, nro_serie) values (7,1);
insert into detalle_reserva (cod_reserva, nro_serie) values (7,3);
insert into detalle_reserva (cod_reserva, nro_serie) values (7,4);
insert into detalle_reserva (cod_reserva, nro_serie) values (8,1);
insert into detalle_reserva (cod_reserva, nro_serie) values (8,2);
insert into detalle_reserva (cod_reserva, nro_serie) values (8,3);
insert into detalle_reserva (cod_reserva, nro_serie) values (8,4);
insert into detalle_reserva (cod_reserva, nro_serie) values (9,1);
insert into detalle_reserva (cod_reserva, nro_serie) values (9,3);
insert into detalle_reserva (cod_reserva, nro_serie) values (9,4);
insert into detalle_reserva (cod_reserva, nro_serie) values (10,1);
insert into detalle_reserva (cod_reserva, nro_serie) values (10,2);
insert into detalle_reserva (cod_reserva, nro_serie) values (10,3);
