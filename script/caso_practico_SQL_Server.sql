-- SQL Server

CREATE TABLE estudiantes (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nombre_completo VARCHAR(255) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    perfil_tecnico VARCHAR(100) NOT NULL,
    correo_electronico VARCHAR(255) NOT NULL UNIQUE,
    estado_verificacion_correo TINYINT NOT NULL DEFAULT 0,
    dni CHAR(8) NOT NULL UNIQUE,
    CHECK (DATEDIFF(YEAR, fecha_nacimiento, GETDATE()) > 12 AND 
           DATEDIFF(YEAR, fecha_nacimiento, GETDATE()) < 100)
);

CREATE TABLE cursos (
    id INT IDENTITY(1,1) PRIMARY KEY,
    codigo VARCHAR(50) NOT NULL,
    tema VARCHAR(100) NOT NULL,
    descripcion TEXT,
    cupo_maximo INT NOT NULL CHECK (cupo_maximo > 0)
);

CREATE TABLE intereses (
    id INT IDENTITY(1,1) PRIMARY KEY,
    tema VARCHAR(100) NOT NULL
);

CREATE TABLE inscripciones (
    id_estudiante INT,
    id_curso INT,
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

