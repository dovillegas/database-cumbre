-- Estudiantes válidos
INSERT INTO estudiantes (nombre_completo, fecha_nacimiento, perfil_tecnico, correo_electronico, estado_verificacion_correo, dni) 
VALUES ('Juan Pérez', '2000-05-15', 'programador', 'juan.perez@example.com', 1, '12345678');

INSERT INTO estudiantes (nombre_completo, fecha_nacimiento, perfil_tecnico, correo_electronico, estado_verificacion_correo, dni) 
VALUES ('María López', '1985-10-25', 'analista', 'maria.lopez@example.com', 0, '87654321');


-- Cursos válidos
INSERT INTO cursos (codigo, tema, descripcion, cupo_maximo) 
VALUES ('CUR001', 'Bases de Datos', 'Curso introductorio sobre bases de datos relacionales', 30);

INSERT INTO cursos (codigo, tema, descripcion, cupo_maximo) 
VALUES ('CUR002', 'Programación Python', 'Curso avanzado de programación en Python', 25);

-- Intereses válidos
INSERT INTO intereses (tema) 
VALUES ('Bases de Datos');

INSERT INTO intereses (tema) 
VALUES ('Analista funcional');

INSERT INTO intereses (tema) 
VALUES ('Programación Python');


-- Inscripciones válidas
INSERT INTO inscripciones (id_estudiante, id_curso) 
VALUES (1, 1);

INSERT INTO inscripciones (id_estudiante, id_curso) 
VALUES (2, 2);

-- Intereses de estudiantes válidos
INSERT INTO interes_estudiante (id_estudiante, id_interes) 
VALUES (1, 1);

INSERT INTO interes_estudiante (id_estudiante, id_interes) 
VALUES (2, 3);

SELECT * FROM estudiantes;
SELECT * FROM intereses;
SELECT * FROM cursos;
SELECT * FROM interes_estudiante;
SELECT * FROM inscripciones;

-- ERRORES

-- Estudiante
INSERT INTO estudiantes (nombre_completo, fecha_nacimiento, perfil_tecnico, correo_electronico, estado_verificacion_correo, dni) 
VALUES ('Carlos Menor', '2010-08-20', 'diseñador UX', 'carlos.menor@example.com', 0, '12345678');
-- Esto debe fallar: EL DNI es duplicado.

-- Estudiante
INSERT INTO estudiantes (nombre_completo, fecha_nacimiento, perfil_tecnico, correo_electronico, estado_verificacion_correo, dni) 
VALUES ('Ana Mayor', '1985-03-10', 'entusiasta', 'ana.mayor@example.com', 3, '34567890');
-- Esto debe fallar: el estado de verificación está fuera del rango.

-- Estudiante - Interés
INSERT INTO interes_estudiante (id_estudiante, id_interes) 
VALUES (1, 10);
-- Integridad referencial: interés inexistente