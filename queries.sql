/*punto 0*/
SELECT i.apellido apellido_inv, i.nombre nombre_inv, fi.nombre facultad_inv, e.nro_serie, e.descripcion equipo, fe.nombre facultad_eq, r.inicio, r.fin
FROM reserva r, investigador i, facultad fi, equipo e, facultad fe, detalle_reserva dr
WHERE r.cod_investigador = i.cod_investigador
AND i.cod_facultad = fi.cod_facultad
AND dr.cod_reserva = r.cod_reserva
AND dr.nro_serie = e.nro_serie
AND e.cod_facultad = fe.cod_facultad;

/*punto 1*/
SELECT COUNT(*), i.apellido, i.nombre
FROM investigador i, reserva r
WHERE i.cod_investigador = r.cod_investigador
GROUP BY i.apellido, i.nombre
HAVING COUNT(*) > 1;

/*punto 2*/
SELECT COUNT(*), i.apellido, i.nombre
FROM investigador i, reserva r
WHERE i.cod_investigador = r.cod_investigador
GROUP BY i.apellido, i.nombre
HAVING COUNT(*) = 1;

/*punto 3*/
SELECT COUNT(*), i.apellido, i.nombre
FROM investigador i, reserva r
WHERE i.cod_investigador = r.cod_investigador
GROUP BY i.apellido, i.nombre
HAVING COUNT(*) > 1;

/*punto 4*/
SELECT f.nombre
FROM facultad f, investigador i
WHERE f.cod_facultad = i.cod_facultad
AND i.cod_investigador NOT IN
(SELECT r.cod_investigador
 FROM reserva r);

/*punto 5*/
SELECT e.*, f.nombre
FROM equipo e, facultad f
WHERE e.cod_facultad = f.cod_facultad
AND e.nro_serie NOT IN
(SELECT dr.nro_serie
 FROM detalle_reserva dr);

/*punto 6*/
SELECT i.apellido apellido_inv, i.nombre nombre_inv, fi.nombre facultad_inv, e.nro_serie, e.descripcion equipo, fe.nombre facultad_eq, r.inicio, r.fin
FROM reserva r, investigador i, facultad fi, equipo e, facultad fe, detalle_reserva dr
WHERE r.cod_investigador = i.cod_investigador
AND i.cod_facultad = fi.cod_facultad
AND dr.cod_reserva = r.cod_reserva
AND dr.nro_serie = e.nro_serie
AND e.cod_facultad = fe.cod_facultad
AND r.inicio IN
(SELECT MIN(r2.inicio)
 FROM reserva r2);

/*punto 7*/
SELECT i.apellido apellido_inv, i.nombre nombre_inv, fi.nombre facultad_inv, e.nro_serie, e.descripcion equipo, fe.nombre facultad_eq, r.inicio, r.fin
FROM reserva r, investigador i, facultad fi, equipo e, facultad fe, detalle_reserva dr
WHERE r.cod_investigador = i.cod_investigador
AND i.cod_facultad = fi.cod_facultad
AND dr.cod_reserva = r.cod_reserva
AND dr.nro_serie = e.nro_serie
AND e.cod_facultad = fe.cod_facultad
AND r.inicio IN
(SELECT MAX(r2.inicio)
 FROM reserva r2);

/*punto 8*/
SELECT *
FROM investigador i
WHERE i.cod_investigador NOT IN
(SELECT r.cod_investigador
 FROM reserva r);

/*punto 9*/
SELECT *
FROM facultad f
WHERE f.cod_facultad NOT IN
(SELECT e.cod_facultad
 FROM equipo e);
