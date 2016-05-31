CREATE DATABASE UDTT;
-- GO

USE UDTT;
-- GO

-- Disabilidades:
-- Vision
-- Movimiento
-- Pensamiento
-- Memoria
-- Aprendimiento
-- Comunicacion
-- Audicion
-- Salud Mental
-- Relaciones Sociales

CREATE TABLE Observacion
(
	ID_Observacion bigint PRIMARY KEY AUTO_INCREMENT -- IDENTITY(1,1)
	, Titulo varchar(100) NOT NULL
   , Descripcion text NULL
	, Correo varchar(320) NULL
);
-- GO

CREATE TABLE Regulacion
(
	ID_Regulacion smallint PRIMARY KEY AUTO_INCREMENT -- IDENTITY(1,1)
	, Titulo varchar(100) NOT NULL
	, Descripcion text NOT NULL
	-- Para quien aplica la regulacion
	, Vision bit NOT NULL DEFAULT 1
	, Movimiento bit NOT NULL DEFAULT 1
	, Pensamiento bit NOT NULL DEFAULT 1
	, Memoria bit NOT NULL DEFAULT 1
	, Aprendimiento bit NOT NULL DEFAULT 1
	, Comunicacion bit NOT NULL DEFAULT 1
	, Audicion bit NOT NULL DEFAULT 1
	, Salud_Mental bit NOT NULL DEFAULT 1
	, Relaciones_Sociales bit NOT NULL DEFAULT 1
);
-- GO

INSERT INTO Regulacion VALUES (1,"Articulo 249" ,"Toda violacion de los preceptos de este reglamento, sera motivo de una  sancion que correspondera a la gravedad de la falta, ya sea esta de caracter individual o colectivo.",1,1,1,1,1,1,1,1,1);

INSERT INTO Regulacion VALUES (2,"Articulo 250" ,"Las sanciones, seran aplicadas considerando la gravedad de la falta y a criterio del director del plantel o funcionarios de la Direccion General de Institutos Tecnologicos.",1,1,1,1,1,1,1,1,1);

INSERT INTO Regulacion VALUES (3,"Articulo 251" ,"Si los alumnos incurren en las faltas siguientes:
   a)El procedimiento  fraudulento dentro de las  evaluaciones de cualquier tipo.
   b)La suplantacion de persona. 
   c)  Para el nivel de  Doctorado certificado completo de estudios de maestria.",1,1,1,1,1,1,1,1,1);

INSERT INTO Regulacion VALUES (4,"Articulo 252" ,"Si los alumnos incurren en las faltas siguientes:
La  portacion  o  uso  de  cualquier  arma dentro de la institucion.
Los actos contrarios a la moral.
Las faltas persistentes de disciplina o asistencia.
Hacer cualquier tipo de novatada a los alumnos de nuevo ingreso.
Las vejaciones o malos tratos que unos alumnos causen a otros.
Las que lesionen el buen nombre de la Institucion.",1,1,1,1,1,1,1,1,1);

INSERT INTO Regulacion VALUES (5,"Articulo 253" ,"Si los alumnos incurren en las faltas siguientes:
   a)Causar daños o perjuicios a los bienes del personal y del alumnado de la institucion.
   b)La alteracion, falsificacion o sustraccion no autorizada de documentos oficiales.
   c)La realizacion  de  actos  que  atenten contra las actividades docentes y/o administrativas.
   d)La  toma  o  cierre  de  instalaciones, edificios o aulas como motivo de presion para satisfacer  intereses personales o de grupo.
   e)La sustraccion de los bienes pertenecientes al Instituto Tecnologico sin la debida autorizacion por  parte de las autoridades del plantel.
   f)El  deterioro  de  los  bienes pertenecientes al  Instituto  Tecnologico.
   g)Causar  daños  o  perjuicios a los bienes muebles o inmuebles de la institucion, o apoderarse de los mismos.
   h)Poner  en  riesgo  la  integridad  fisica,  emocional  o  moral de los alumnos, personal y funcionarios del Instituto tecnologico o del  Sistema  Nacional  de  Institutos  Tecnologicos.
   i)La  acumulacion  o  reincidencia de las faltas mencionadas en los  Articulos  252  y  253 de este reglamento.
   Se haran acreedores a las siguientes sanciones: Baja definitiva del Instituto Tecnologico. Baja  definitiva del  Sistema  Nacional  de  Institutos  Tecnologicos. Las sanciones anteriores seran aplicadas por la Direccion  General  de  Institutos  Tecnologicos, a traves de sus  instancias y  a solicitud de la  direccion  del  Instituto  Tecnologico.",1,1,1,1,1,1,1,1,1);

INSERT INTO Regulacion VALUES (6,"Articulo 254" ,"En los periodos de suspension de labores y recesos, los estudiantes que cometan faltas anotadas en este reglamento seran acreedores a las  sanciones  correspondientes.",1,1,1,1,1,1,1,1,1);

INSERT INTO Regulacion VALUES (7,"Articulo 255" ,"Todo estudiante al que se le dictamine baja definitiva del  Sistema Nacional de Institutos Tecnologicos, por ningun motivo podra inscribirse en alguna Institucion dependiente de la Direccion General de Institutos Tecnologicos",1,1,1,1,1,1,1,1,1);

INSERT INTO Regulacion VALUES (8,"Articulo 256" ,"Cuando fuera de la institucion, el alumno incurra en actos  que  menoscaben el prestigio de la institucion, queda a discrecion de la  Direccion  General  de Institutos  Tecnologicos, aplicar la sancion correspondiente conforme a lo previsto por este reglamento.",1,1,1,1,1,1,1,1,1);

INSERT INTO Regulacion VALUES (9,"Articulo 257" ,"En los casos de faltas o delitos que ocurran dentro del Instituto y  que caigan bajo la  sancion  de  los  codigos  civiles  y/o  penales, la direccion del plantel levantara las actas correspondientes y  las turnara a las autoridades competentes, independientemente de la imposicion de la sancion reglamentaria que corresponda.",1,1,1,1,1,1,1,1,1);
