CREATE TABLE estudiantes (
	id int auto_increment,
	dni varchar(64),
	nombre varchar(64),
	apellido varchar(64),
	email varchar(128),
	PRIMARY KEY(id)
);

CREATE TABLE profesores (
	id int auto_increment,
	dni varchar(64),
	nombre varchar(64),
	apellido varchar(64),
	email varchar(128),
	profesion varchar(128),
	telefono varchar(64),
	PRIMARY KEY(id)
);

CREATE TABLE cursos (
	id int auto_increment,
	nombre varchar(64),
	descripcion text,
	profesor_id int,
	PRIMARY KEY(id)
);

ALTER TABLE cursos.cursos
	ADD CONSTRAINT cursos_profesores_FK
	FOREIGN KEY (profesor_id)
	REFERENCES cursos.profesores(id);

CREATE TABLE cursos_estudiantes (
	curso_id int,
	estudiante_id int,
	PRIMARY KEY (curso_id, estudiante_id)
);

