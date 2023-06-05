-- Tablas a usar laboratorio 2

BEGIN;

DROP TABLE IF EXISTS emergencia;
CREATE TABLE emergencia
(
    id_emergencia serial NOT NULL,
    asunto character varying(30) COLLATE pg_catalog."default" NOT NULL,
    descripcion character varying(500) COLLATE pg_catalog."default" NOT NULL,
    direccion character varying(50) COLLATE pg_catalog."default" NOT NULL,
    fecha date NOT NULL,
    activa boolean NOT NULL,
    id_institucion integer NOT NULL,
    longitud double precision NOT NULL,
    latitud double precision NOT NULL,
    CONSTRAINT id_emergencia PRIMARY KEY (id_emergencia)
);

SELECT AddGeometryColumn('emergencia','ubicacion','4326','POINT',2);

DROP TABLE IF EXISTS voluntario;
CREATE TABLE voluntario
(
    id_voluntario serial NOT NULL,
    nombre character varying(100) COLLATE pg_catalog."default" NOT NULL,
    fecha_registro date NOT NULL,
    longitud double precision NOT NULL,
    latitud double precision NOT NULL,
    CONSTRAINT id_voluntario PRIMARY KEY (id_voluntario)
);

SELECT AddGeometryColumn('voluntario','ubicacion','4326','POINT',2);

DROP TABLE IF EXISTS institucion;
CREATE TABLE institucion
(
    id_institucion serial NOT NULL,
    nombre character varying(20) COLLATE pg_catalog."default" NOT NULL,
    direccion character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT id_institucion PRIMARY KEY (id_institucion)
);

DROP TABLE IF EXISTS estado_tarea;
CREATE TABLE estado_tarea
(
    id_estado_tarea serial NOT NULL,
    id_tarea integer NOT NULL,
    completada boolean NOT NULL,
    CONSTRAINT id_estado_tarea PRIMARY KEY (id_estado_tarea)
);

DROP TABLE IF EXISTS habilidad;
CREATE TABLE habilidad
(
    id_habilidad serial NOT NULL,
    caracteristica character varying(30) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT id_habilidad PRIMARY KEY (id_habilidad)
);

DROP TABLE IF EXISTS tarea;
CREATE TABLE tarea
(
    id_tarea serial NOT NULL,
    asunto_tarea character varying(30) COLLATE pg_catalog."default" NOT NULL,
    id_emergencia integer NOT NULL,
    id_estado_tarea integer NOT NULL,
    CONSTRAINT id_tarea PRIMARY KEY (id_tarea)
);

DROP TABLE IF EXISTS ranking;
CREATE TABLE ranking
(
    id_ranking serial NOT NULL,
    id_voluntario integer NOT NULL,
    id_tarea integer NOT NULL,
    puntaje integer NOT NULL,
    CONSTRAINT id_ranking PRIMARY KEY (id_ranking)
);

DROP TABLE IF EXISTS eme_habilidad;
CREATE TABLE eme_habilidad
(
    id_eme_habilidad serial NOT NULL,
    id_emergencia integer NOT NULL,
    id_habilidad integer NOT NULL,
    CONSTRAINT id_eme_habilidad PRIMARY KEY (id_eme_habilidad)
);

DROP TABLE IF EXISTS vol_habilidad;
CREATE TABLE vol_habilidad
(
    id_vol_habilidad serial NOT NULL,
    id_voluntario integer NOT NULL,
    id_habilidad integer NOT NULL,
    CONSTRAINT id_vol_habilidad PRIMARY KEY (id_vol_habilidad)
);
END;

DROP TABLE IF EXISTS tarea_habilidad;
CREATE TABLE tarea_habilidad
(
    id_tarea_habilidad serial NOT NULL,
    id_tarea integer NOT NULL,
    id_eme_habilidad integer NOT NULL,
    CONSTRAINT id_tarea_habilidad PRIMARY KEY (id_tarea_habilidad)
);

END;

/*
Demostrar cómo un voluntario va a estar inscrito a una emergencia
=> voluntario -> vol_habilidad -> habilidad -> eme_habilidad -> emergencia 
=> Un voluntario tenga una habilidad en común con la emergencia => Estará automaticamente inscrito (limitacion a diagrama MER de enunciado)

-- SQL para funcionalidad 1
DROP TABLE IF EXISTS emergencia_seleccionada;
CREATE TABLE emergencia_seleccionada AS (
SELECT *
FROM emergencia
WHERE id_emergencia = :id
AND emergencia.activa = true
);

DROP TABLE IF EXISTS voluntario_inscrito;
CREATE TABLE voluntario_inscrito AS (
SELECT voluntario.id_voluntario, voluntario.nombre, habilidad.caracteristica, st_distance(emergencia_seleccionada.ubicacion::geography, voluntario.ubicacion::geography) as distancia_emergencia
FROM emergencia_seleccionada, eme_habilidad, habilidad, vol_habilidad, voluntario
WHERE emergencia_seleccionada.id_emergencia = :id
AND eme_habilidad.id_emergencia = emergencia_seleccionada.id_emergencia
AND habilidad.id_habilidad = eme_habilidad.id_habilidad
AND vol_habilidad.id_habilidad = habilidad.id_habilidad
AND voluntario.id_voluntario = vol_habilidad.id_voluntario
AND st_distance(emergencia_seleccionada.ubicacion::geography, voluntario.ubicacion::geography) < :r --Distancia en metros
);

DROP TABLE IF EXISTS ubicacion_inscrito;
CREATE TABLE ubicacion_inscrito AS (
SELECT DISTINCT voluntario_inscrito.id_voluntario, voluntario_inscrito.nombre, voluntario_inscrito.distancia_emergencia, voluntario.ubicacion
FROM voluntario_inscrito, voluntario
WHERE voluntario_inscrito.id_voluntario = voluntario.id_voluntario
);

*/
