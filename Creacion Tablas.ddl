CREATE TABLE Academia (
    id_academia NUMBER PRIMARY KEY,
    nombre VARCHAR2(100),
    tipo VARCHAR2(50)
);

CREATE TABLE Profesor (
    id_profesor NUMBER PRIMARY KEY,
    nombre VARCHAR2(100),
    tipo_contrato VARCHAR2(50),
    id_academia NUMBER,
    CONSTRAINT fk_academia_profesor FOREIGN KEY (id_academia) REFERENCES Academia(id_academia)
);

CREATE TABLE Municipalidad (
    id_municipalidad NUMBER PRIMARY KEY,
    nombre VARCHAR2(100)
);

CREATE TABLE Curso (
    id_curso NUMBER PRIMARY KEY,
    nombre VARCHAR2(100),
    id_academia NUMBER,
    CONSTRAINT fk_academia_curso FOREIGN KEY (id_academia) REFERENCES Academia(id_academia)
);

