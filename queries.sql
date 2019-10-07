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
