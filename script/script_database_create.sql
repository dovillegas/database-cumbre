-- MariaDB
-- CREATE DATABASE cumbre2024_curso;

USE cumbre2024_curso;

CREATE TABLE estudiantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_completo VARCHAR(255) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    perfil_tecnico VARCHAR(100) NOT NULL,
    correo_electronico VARCHAR(255) NOT NULL UNIQUE,
    estado_verificacion_correo TINYINT(1) NOT NULL DEFAULT 0,
    dni CHAR(8) NOT NULL UNIQUE
);


CREATE TABLE cursos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo VARCHAR(50) NOT NULL,
    tema VARCHAR(100) NOT NULL,
    descripcion TEXT,
    cupo_maximo INT NOT NULL CHECK (cupo_maximo > 0)
);

CREATE TABLE intereses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tema VARCHAR(100) NOT NULL
);

CREATE TABLE inscripciones (
    id_estudiante INT,
    id_curso INT,
    codigo_inscripcion VARCHAR(64) NOT NULL,
    fecha_inscripcion DATE NOT NULL,
    PRIMARY KEY (id_estudiante, id_curso),
    FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id),
    FOREIGN KEY (id_curso) REFERENCES cursos(id)
);

CREATE TABLE interes_estudiante (
    id_estudiante INT,
    id_interes INT,
    PRIMARY KEY (id_estudiante, id_interes),
    FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id),
    FOREIGN KEY (id_interes) REFERENCES intereses(id)
);