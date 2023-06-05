BEGIN;

INSERT INTO institucion (id_institucion, nombre, direccion) VALUES (1, 'institucion 1', 'direccion institucion 1');
INSERT INTO institucion (id_institucion, nombre, direccion) VALUES (2, 'institucion 2', 'direccion institucion 2');
INSERT INTO institucion (id_institucion, nombre, direccion) VALUES (3, 'institucion 3', 'direccion institucion 3');

INSERT INTO habilidad (id_habilidad, caracteristica) VALUES (1, 'TRABAJO EN ALTURA');
INSERT INTO habilidad (id_habilidad, caracteristica) VALUES (2, 'TRABAJO EN AGUA');
INSERT INTO habilidad (id_habilidad, caracteristica) VALUES (3, 'RESISTENCIA AL CALOR');
INSERT INTO habilidad (id_habilidad, caracteristica) VALUES (4, 'CAPACIDAD DE IMPROVISACIÓN');
INSERT INTO habilidad (id_habilidad, caracteristica) VALUES (5, 'MANEJO INGENIERIL');

-- RM
INSERT INTO voluntario (id_voluntario, nombre, fecha_registro, longitud, latitud, ubicacion) VALUES (1, 'Sula', '19/10/2022', -70.54797, -33.34093, ST_SetSRID(ST_MakePoint(-70.54797, -33.34093), 4326));
-- RM
INSERT INTO voluntario (id_voluntario, nombre, fecha_registro, longitud, latitud, ubicacion) VALUES (2, 'Hertha', '18/8/2022', -70.50531, -33.37518, ST_SetSRID(ST_MakePoint(-70.50531, -33.37518), 4326));
-- Entre 2 islas
INSERT INTO voluntario (id_voluntario, nombre, fecha_registro, longitud, latitud, ubicacion) VALUES (3, 'Gilberto', '10/9/2022', -80.808, -33.804, ST_SetSRID(ST_MakePoint(-80.808, -33.804), 4326));
-- Entre 2 islas
INSERT INTO voluntario (id_voluntario, nombre, fecha_registro, longitud, latitud, ubicacion) VALUES (4, 'Joseito', '8/9/2022', -78.844,-33.699, ST_SetSRID(ST_MakePoint(-78.844,-33.699), 4326));
-- Arica
INSERT INTO voluntario (id_voluntario, nombre, fecha_registro, longitud, latitud, ubicacion) VALUES (5, 'Noland', '10/9/2022', -69.6107,-18.0240, ST_SetSRID(ST_MakePoint(-69.6107,-18.0240), 4326));
-- RM
INSERT INTO voluntario (id_voluntario, nombre, fecha_registro, longitud, latitud, ubicacion) VALUES (6, 'Skyler', '24/8/2022', -70.9128,-33.4419, ST_SetSRID(ST_MakePoint(-70.9128,-33.4419), 4326));
-- Temuco
INSERT INTO voluntario (id_voluntario, nombre, fecha_registro, longitud, latitud, ubicacion) VALUES (7, 'Trudy', '7/10/2022', -71.5778,-38.7483, ST_SetSRID(ST_MakePoint(-71.5778,-38.7483), 4326));
-- Temuco
INSERT INTO voluntario (id_voluntario, nombre, fecha_registro, longitud, latitud, ubicacion) VALUES (8, 'Farrel', '9/10/2022', -72.7104,-38.7687, ST_SetSRID(ST_MakePoint(-72.7104,-38.7687), 4326));
-- Temuco
INSERT INTO voluntario (id_voluntario, nombre, fecha_registro, longitud, latitud, ubicacion) VALUES (9, 'Arni', '17/10/2022', -73.3008,-38.4531, ST_SetSRID(ST_MakePoint(-73.3008,-38.4531), 4326));
-- Valparaiso
INSERT INTO voluntario (id_voluntario, nombre, fecha_registro, longitud, latitud, ubicacion) VALUES (10, 'Mercedes', '18/9/2022', -71.7046,-33.1160, ST_SetSRID(ST_MakePoint(-71.7046,-33.1160), 4326));
-- RM
INSERT INTO voluntario (id_voluntario, nombre, fecha_registro, longitud, latitud, ubicacion) VALUES (11, 'Lonee', '15/10/2022', -69.7843,-33.3659, ST_SetSRID(ST_MakePoint(-69.7843,-33.3659), 4326));
-- Rancagua
INSERT INTO voluntario (id_voluntario, nombre, fecha_registro, longitud, latitud, ubicacion) VALUES (12, 'Winfield', '24/10/2022', -70.3206,-34.0396, ST_SetSRID(ST_MakePoint(-70.3206,-34.0396), 4326));
-- Rancagua
INSERT INTO voluntario (id_voluntario, nombre, fecha_registro, longitud, latitud, ubicacion) VALUES (13, 'Erwin', '27/10/2022', -71.6110,-34.4386, ST_SetSRID(ST_MakePoint(-71.6110,-34.4386), 4326));
-- Rancagua
INSERT INTO voluntario (id_voluntario, nombre, fecha_registro, longitud, latitud, ubicacion) VALUES (14, 'Tamara', '17/9/2022', -70.6041,-34.1784, ST_SetSRID(ST_MakePoint(-70.6041,-34.1784), 4326));
-- Valparaiso
INSERT INTO voluntario (id_voluntario, nombre, fecha_registro, longitud, latitud, ubicacion) VALUES (15, 'Anya', '26/8/2022', -70.1160,-32.9582, ST_SetSRID(ST_MakePoint(-70.1160,-32.9582), 4326));
-- Puerto Montt
INSERT INTO voluntario (id_voluntario, nombre, fecha_registro, longitud, latitud, ubicacion) VALUES (16, 'Ilyse', '3/9/2022', -72.3154,-39.5637, ST_SetSRID(ST_MakePoint(-72.3154,-39.5637), 4326));
-- Punta Arenas
INSERT INTO voluntario (id_voluntario, nombre, fecha_registro, longitud, latitud, ubicacion) VALUES (17, 'Alene', '26/9/2022', -66.7957,-55.3134, ST_SetSRID(ST_MakePoint(-66.7957,-55.3134), 4326));
-- Concepción
INSERT INTO voluntario (id_voluntario, nombre, fecha_registro, longitud, latitud, ubicacion) VALUES (18, 'Lon', '2/11/2022', -73.5160,-37.0370, ST_SetSRID(ST_MakePoint(-73.5160,-37.0370), 4326));
-- Arica
INSERT INTO voluntario (id_voluntario, nombre, fecha_registro, longitud, latitud, ubicacion) VALUES (19, 'Katha', '18/10/2022', -69.7141,-19.0426, ST_SetSRID(ST_MakePoint(-69.7141,-19.0426), 4326));
-- Chiloe
INSERT INTO voluntario (id_voluntario, nombre, fecha_registro, longitud, latitud, ubicacion) VALUES (20, 'Candace', '10/11/2022', -73.9347,-42.6707, ST_SetSRID(ST_MakePoint(-73.9347,-42.6707), 4326));

-- Entre 2 islas
INSERT INTO emergencia (id_emergencia, asunto, descripcion, direccion, fecha, activa, id_institucion, longitud, latitud, ubicacion) VALUES (1, 'vestibulum', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.', 'direccion falsa 1', '30/9/2021', true, 1, -79.8684,-33.7122, ST_SetSRID(ST_MakePoint(-79.8684,-33.7122), 4326));
-- RM
INSERT INTO emergencia (id_emergencia, asunto, descripcion, direccion, fecha, activa, id_institucion, longitud, latitud, ubicacion) VALUES (2, 'a feugiat', 'Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.', 'direccion falsa 2', '6/5/2021', true, 1,-70.51496,-33.35781,ST_SetSRID(ST_MakePoint(-70.51496,-33.35781), 4326));
-- RM
INSERT INTO emergencia (id_emergencia, asunto, descripcion, direccion, fecha, activa, id_institucion, longitud, latitud, ubicacion) VALUES (3, 'consequat metus', 'Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum.', 'direccion falsa 3', '6/6/2021', false, 1, -70.5022,-33.1891, ST_SetSRID(ST_MakePoint(-70.5022,-33.1891), 4326));
-- Arica
INSERT INTO emergencia (id_emergencia, asunto, descripcion, direccion, fecha, activa, id_institucion, longitud, latitud, ubicacion) VALUES (4, 'erat curabitur gravida', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.', 'direccion falsa 4', '10/6/2021', true, 2, -69.619,-17.694, ST_SetSRID(ST_MakePoint(-69.619,-17.694), 4326));
-- RM
INSERT INTO emergencia (id_emergencia, asunto, descripcion, direccion, fecha, activa, id_institucion, longitud, latitud, ubicacion) VALUES (5, 'nibh', 'Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', 'direccion falsa 5', '20/10/2021', true, 2, -70.2844,-33.5822, ST_SetSRID(ST_MakePoint(-70.2844,-33.5822), 4326));
-- RM
INSERT INTO emergencia (id_emergencia, asunto, descripcion, direccion, fecha, activa, id_institucion, longitud, latitud, ubicacion) VALUES (6, 'non pretium', 'Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 'direccion falsa 6', '5/12/2021', true, 2, -71.3279,-33.9139, ST_SetSRID(ST_MakePoint(-71.3279,-33.9139),4326));
-- Temuco
INSERT INTO emergencia (id_emergencia, asunto, descripcion, direccion, fecha, activa, id_institucion, longitud, latitud, ubicacion) VALUES (7, 'magna', 'Nunc purus. Phasellus in felis.', 'direccion falsa 7', '20/3/2021', false, 3, -73.9248,-38.3771, ST_SetSRID(ST_MakePoint(-73.9248,-38.3771), 4326));
-- Temuco
INSERT INTO emergencia (id_emergencia, asunto, descripcion, direccion, fecha, activa, id_institucion, longitud, latitud, ubicacion) VALUES (8, 'sed', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit.', 'direccion falsa 8', '27/2/2021', true, 3, -71.5632,-39.2627, ST_SetSRID(ST_MakePoint(-71.5632,-39.2627), 4326));
-- Concepcion
INSERT INTO emergencia (id_emergencia, asunto, descripcion, direccion, fecha, activa, id_institucion, longitud, latitud, ubicacion) VALUES (9, 'mi in porttitor', 'Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.', 'direccion falsa 9', '7/8/2021', true, 3, -71.995,-37.076, ST_SetSRID(ST_MakePoint(-71.995,-37.076), 4326));
-- Isla
INSERT INTO emergencia (id_emergencia, asunto, descripcion, direccion, fecha, activa, id_institucion, longitud, latitud, ubicacion) VALUES (10, 'justo', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 'direccion falsa 10', '3/8/2021', false, 3, -109.5043,-27.0906, ST_SetSRID(ST_MakePoint(-109.5043,-27.0906), 4326));


INSERT INTO eme_habilidad(id_eme_habilidad, id_emergencia, id_habilidad) VALUES(1, 1, 2);
INSERT INTO eme_habilidad(id_eme_habilidad, id_emergencia, id_habilidad) VALUES(2, 1, 3);
INSERT INTO eme_habilidad(id_eme_habilidad, id_emergencia, id_habilidad) VALUES(3, 2, 1);
INSERT INTO eme_habilidad(id_eme_habilidad, id_emergencia, id_habilidad) VALUES(4, 2, 5);
INSERT INTO eme_habilidad(id_eme_habilidad, id_emergencia, id_habilidad) VALUES(5, 3, 3);
INSERT INTO eme_habilidad(id_eme_habilidad, id_emergencia, id_habilidad) VALUES(6, 3, 5);
INSERT INTO eme_habilidad(id_eme_habilidad, id_emergencia, id_habilidad) VALUES(7, 4, 3);
INSERT INTO eme_habilidad(id_eme_habilidad, id_emergencia, id_habilidad) VALUES(8, 5, 1);
INSERT INTO eme_habilidad(id_eme_habilidad, id_emergencia, id_habilidad) VALUES(9, 5, 3);
INSERT INTO eme_habilidad(id_eme_habilidad, id_emergencia, id_habilidad) VALUES(10, 5, 5);
INSERT INTO eme_habilidad(id_eme_habilidad, id_emergencia, id_habilidad) VALUES(11, 6, 3);
INSERT INTO eme_habilidad(id_eme_habilidad, id_emergencia, id_habilidad) VALUES(12, 6, 4);
INSERT INTO eme_habilidad(id_eme_habilidad, id_emergencia, id_habilidad) VALUES(13, 7, 2);
INSERT INTO eme_habilidad(id_eme_habilidad, id_emergencia, id_habilidad) VALUES(14, 7, 4);
INSERT INTO eme_habilidad(id_eme_habilidad, id_emergencia, id_habilidad) VALUES(15, 8, 2);
INSERT INTO eme_habilidad(id_eme_habilidad, id_emergencia, id_habilidad) VALUES(16, 8, 4);
INSERT INTO eme_habilidad(id_eme_habilidad, id_emergencia, id_habilidad) VALUES(17, 9, 4);
INSERT INTO eme_habilidad(id_eme_habilidad, id_emergencia, id_habilidad) VALUES(18, 10, 2);
INSERT INTO eme_habilidad(id_eme_habilidad, id_emergencia, id_habilidad) VALUES(19, 10, 3);
INSERT INTO eme_habilidad(id_eme_habilidad, id_emergencia, id_habilidad) VALUES(20, 10, 4);

INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (1, 1, 1);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (2, 1, 5);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (3, 2, 4);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (4, 3, 2);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (5, 3, 3);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (6, 4, 2);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (7, 4, 3);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (8, 4, 4);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (9, 5, 3);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (10, 5, 4);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (11, 5, 5);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (12, 6, 1);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (13, 6, 4);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (14, 7, 2);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (15, 8, 2);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (16, 9, 2);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (17, 9, 4);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (18, 10, 4);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (19, 10, 5);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (20, 11, 1);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (21, 11, 3);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (22, 11, 5);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (23, 12, 2);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (24, 12, 3);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (25, 13, 2);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (26, 13, 4);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (27, 13, 5);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (28, 14, 2);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (29, 14, 4);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (30, 15, 2);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (31, 15, 4);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (32, 16, 2);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (33, 17, 2);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (34, 18, 2);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (35, 18, 4);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (36, 18, 5);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (37, 19, 1);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (38, 19, 3);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (39, 19, 4);
INSERT INTO vol_habilidad(id_vol_habilidad, id_voluntario, id_habilidad) VALUES (40, 20, 2);


END;
