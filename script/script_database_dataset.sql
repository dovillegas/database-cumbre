-- MariaDB
USE cumbre2024_curso;

INSERT INTO estudiantes (nombre_completo, fecha_nacimiento, perfil_tecnico, correo_electronico, dni) VALUES
('Juan Perez', '2000-05-12', 'Desarrollador Web', 'juan.perez@gmail.com', '12345678'),
('Maria Lopez', '1999-11-24', 'Analista de Datos', 'maria.lopez@hotmail.com', '23456789'),
('Carlos Sanchez', '1998-08-14', 'Especialista en Seguridad', 'carlos.sanchez@yahoo.com', '34567890'),
('Ana Martinez', '2001-01-10', 'Desarrollador Móvil', 'ana.martinez@gmail.com', '45678901'),
('Luis Gomez', '2000-09-18', 'Administrador de Sistemas', 'luis.gomez@hotmail.com', '56789012'),
('Laura Torres', '1999-07-22', 'Científico de Datos', 'laura.torres@yahoo.com', '67890123'),
('Jose Diaz', '1998-03-05', 'Ingeniero de Software', 'jose.diaz@gmail.com', '78901234'),
('Sara Morales', '2001-10-30', 'Desarrollador Backend', 'sara.morales@hotmail.com', '89012345'),
('Miguel Alvarez', '2000-04-15', 'Especialista en Redes', 'miguel.alvarez@yahoo.com', '90123456'),
('Isabel Castillo', '1999-12-20', 'Desarrollador Frontend', 'isabel.castillo@gmail.com', '01234567'),
('Pedro Vargas', '2001-06-25', 'Analista de Datos', 'pedro.vargas@hotmail.com', '12345098'),
('Lucia Romero', '2000-11-11', 'Especialista en Seguridad', 'lucia.romero@yahoo.com', '23456109'),
('Diego Torres', '1999-01-16', 'Desarrollador Móvil', 'diego.torres@gmail.com', '34567210'),
('Elena Herrera', '1998-06-07', 'Administrador de Sistemas', 'elena.herrera@hotmail.com', '45678321'),
('Raul Gutierrez', '2001-02-27', 'Científico de Datos', 'raul.gutierrez@yahoo.com', '56789432'),
('Marta Ruiz', '2000-10-13', 'Ingeniero de Software', 'marta.ruiz@gmail.com', '67890543'),
('Victor Flores', '1999-05-19', 'Desarrollador Backend', 'victor.flores@hotmail.com', '78901654'),
('Laura Jimenez', '2001-08-23', 'Especialista en Redes', 'laura.jimenez@yahoo.com', '89012765'),
('Andres Herrera', '2000-03-12', 'Desarrollador Frontend', 'andres.herrera@gmail.com', '90123876'),
('Claudia Castillo', '1999-09-05', 'Analista de Datos', 'claudia.castillo@hotmail.com', '01234987');


INSERT INTO cursos (codigo, tema, descripcion, cupo_maximo) VALUES
('BD101', 'Bases de Datos', 'Curso introductorio sobre bases de datos relacionales y no relacionales', 30),
('AD201', 'Análisis de Datos', 'Curso avanzado sobre técnicas de análisis de datos y visualización', 25),
('IA301', 'Inteligencia Artificial', 'Curso sobre fundamentos y aplicaciones de la inteligencia artificial', 20),
('DS401', 'Ciencia de Datos', 'Curso completo sobre ciencia de datos y machine learning', 15),
('RS501', 'Redes y Seguridad', 'Curso sobre redes de computadoras y seguridad informática', 20),
('DW601', 'Desarrollo Web', 'Curso sobre desarrollo de aplicaciones web con tecnologías modernas', 30),
('DM701', 'Desarrollo Móvil', 'Curso sobre desarrollo de aplicaciones móviles para iOS y Android', 25),
('IS801', 'Ingeniería de Software', 'Curso sobre metodologías y herramientas para la ingeniería de software', 20),
('FS901', 'Full Stack', 'Curso sobre desarrollo full stack con backend y frontend', 30),
('CI101', 'Computación en la Nube', 'Curso sobre servicios y aplicaciones de computación en la nube', 15);

INSERT INTO intereses (tema) VALUES
('Desarrollo Web'),
('Inteligencia Artificial'),
('Análisis de Datos'),
('Ciencia de Datos'),
('Redes y Seguridad'),
('Desarrollo Móvil'),
('Ingeniería de Software'),
('Computación en la Nube'),
('Desarrollo Backend'),
('Desarrollo Frontend'),
('Administración de Sistemas'),
('Ciberseguridad'),
('DevOps'),
('Automatización de Procesos'),
('Big Data');

INSERT INTO interes_estudiante (id_estudiante, id_interes) VALUES
(1, 1), (1, 2), (2, 3), (2, 4), (3, 5),
(3, 6), (4, 7), (4, 8), (5, 9), (5, 10),
(6, 11), (6, 12), (7, 13), (7, 14), (8, 15),
(9, 1), (10, 2), (11, 3), (12, 4), (13, 5),
(14, 6), (15, 7), (16, 8), (17, 9), (18, 10);


-- Insertar datos en la tabla inscripciones 
INSERT INTO inscripciones (id_estudiante, id_curso, codigo_inscripcion, fecha_inscripcion) VALUES
(1, 1, MD5(CONCAT(1, '-', 1)), CURDATE()), 
(1, 2, MD5(CONCAT(1, '-', 2)), CURDATE()), 
(2, 3, MD5(CONCAT(2, '-', 3)), CURDATE()), 
(2, 4, MD5(CONCAT(2, '-', 4)), CURDATE()), 
(3, 5, MD5(CONCAT(3, '-', 5)), CURDATE()), 
(3, 6, MD5(CONCAT(3, '-', 6)), CURDATE()), 
(4, 7, MD5(CONCAT(4, '-', 7)), CURDATE()), 
(4, 8, MD5(CONCAT(4, '-', 8)), CURDATE()), 
(5, 9, MD5(CONCAT(5, '-', 9)), CURDATE()), 
(5, 10, MD5(CONCAT(5, '-', 10)), CURDATE()), 
(6, 1, MD5(CONCAT(6, '-', 1)), CURDATE()), 
(6, 2, MD5(CONCAT(6, '-', 2)), CURDATE()), 
(7, 3, MD5(CONCAT(7, '-', 3)), CURDATE()), 
(7, 4, MD5(CONCAT(7, '-', 4)), CURDATE()), 
(8, 5, MD5(CONCAT(8, '-', 5)), CURDATE()), 
(8, 6, MD5(CONCAT(8, '-', 6)), CURDATE()), 
(9, 7, MD5(CONCAT(9, '-', 7)), CURDATE()), 
(10, 8, MD5(CONCAT(10, '-', 8)), CURDATE()), 
(11, 9, MD5(CONCAT(11, '-', 9)), CURDATE()), 
(12, 10, MD5(CONCAT(12, '-', 10)), CURDATE()), 
(13, 1, MD5(CONCAT(13, '-', 1)), CURDATE()), 
(14, 2, MD5(CONCAT(14, '-', 2)), CURDATE()), 
(15, 3, MD5(CONCAT(15, '-', 3)), CURDATE()), 
(16, 4, MD5(CONCAT(16, '-', 4)), CURDATE()), 
(17, 5, MD5(CONCAT(17, '-', 5)), CURDATE());
