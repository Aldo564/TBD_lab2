# Laboratorio 2 Taller de Base de Datos
## Contexto
> En nuestro país, con la ocurrencia de desastres naturales, se da con frecuencia que voluntarios concurren espontáneamente al sitio del suceso. Si bien su presencia es de gran ayuda, puede resultar difícil coordinar sus esfuerzos para la realización de tareas. Para este fin, se propone crear un sistema para la gestión del voluntariado espontáneo.
El sistema de voluntariado debe estar asociado a una institución de voluntariado. En cada institución hay coordinadores que decretan emergencias para iniciar el reclutamiento de voluntarios. En estas emergencias se definen requisitos para los voluntarios (por ejemplo: los voluntarios deben tener determinado equipamiento, salud compatible, etc).
Posteriormente los voluntarios seleccionados serán rankeados según estos requisitos, voluntarios con mayor número de requisitos tienen mayor ranking. Los voluntarios declaran su disponibilidad para ser reclutados a una emergencia. Una vez que son contactados, el coordinador les asigna tareas. Los voluntarios finalmente actualizan el estado de las tareas, para ser consultados por el coordinador.

## Equipo de trabajo

- Integrantes:
    - Luis Mellado (Backend)
    - Karen Garrido (Backend)
    - Aldo Castillo (Frontend)
    - Eduardo Abarca (Frontend)
 - Semestre: 2-2022
 - Fecha de entrega: 15/11/2022

## Manual de instalación

Las siguientes subsecciones tienen por objetivo presentar el conjunto de instrucciones necesario para poder ejecutar el proyecto contenido en este repositorio. Es necesario seguir el orden en el cuál se presentan, pues cada paso requiere que los anteriores se hayan completado satisfactoriamente. Como observación, este conjunto de instrucciones estará orientado a S.O. Windows, y no se garantiza que funcione en otros S.O.. Sujeto a cambios (Por ahora).

### Programas necesarios a instalar
 - PostgreSQL, versión 12.0
 - SpringToolSuite4 o Visual Studio Code, con extensión "Gradle for Java"
 - Npm, versión 8.12.1
 - Node.js, versión 16.14.2
 - PostGIS 3.x.x
 - QGIS Desktop 3.2.2 Bialowieza

### Configurar usuario de PostgreSQL 'postgres' y crear base de datos 'lab2' con extensión PostGIS (Windows)

```bash
# Abrir cmd o PowerShell, conectarse a psql (Si no se ha manipulado el usuario 'postgres' anteriormente, presionar enter bastará)
$ psql -U postgres

# Asignar contraseña 'postgres' a usuario postgres
$ ALTER USER postgres WITH PASSWORD 'postgres';

# Crear base de datos que usará el proyecto
$ CREATE DATABASE lab2;

# Activar extensión PostGIS en base de datos
$ CREATE EXTENSION postgis;

# Cerrar terminal psql
$ \q
```

### Cargar datos de archivos .SQL a base de datos

1. Abrir PgAdmin4, ingresar clave maestra
2. Click en Servers
3. Ingresar contraseña asignada al usuario 'postgres'
4. Desplegar: PostgreSQL 12 -> lab2
5. Click derecho en lab2, seleccionar 'Query Tool'
6. Click en pestaña a la derecha de botón Execute/Refresh, seleccionar 'Auto rollback on error?'
7. Click en Open File, seleccionar 'division_regional.sql'
8. Click en Execute/Refresh (En caso de error, re-ejecutar)
9. Click en Open File, seleccionar 'dbCreate.sql'
10. Click en Execute/Refresh (En caso de error, re-ejecutar)
11. Click en Open File, seleccionar 'loadData.sql'
12. Click en Execute/Refresh (En caso de error, re-ejecutar)
13. Cerrar PgAdmin4

### Ejecutar back-end

```bash
# Dirigirse a directorio de aplicación back-end desde terminal (Se asume ubicación en Escritorio ('escritorio'))
$ cd /escritorio/Grupo2_Lab2_TBD/lab1_backend

# Ejecutar el proyecto, cuyo acceso será: http://localhost:3000
$ ./gradlew bootRun
```

### Ejecutar front-end

```bash
# Dirigirse a directorio de aplicación front-end desde terminal (Se asume ubicación en Escritorio ('escritorio'))
$ cd /escritorio/Grupo2_Lab2_TBD/lab1_frontend

# Instalar dependencias necesarias para la ejecución
$ npm install

# Ejecutar el proyecto, cuyo acceso será: http://localhost:8080
$ npm run dev

# Acceder a la vista del proyecto, ingresando en su navegador de preferencia la URL presentada en el paso anterior
```