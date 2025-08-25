CREATE DATABASE IF NOT EXISTS Admi_Database;
USE Admi_Database;


CREATE TABLE Documentos_Exa_Admi (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Acta_nac LONGBLOB,
    Curp LONGBLOB,
    Certificado LONGBLOB,
    Comprobante LONGBLOB,
    Fotografia LONGBLOB,
    Tel_Casa VARCHAR(20),
    Tel_tutor VARCHAR(25),
    Correo VARCHAR(50),
    Opcion1 VARCHAR(30),
    Opcion2 VARCHAR(30),
    Opcion3 VARCHAR(30),
    Carta_Conf LONGBLOB,
    Carta_Verac LONGBLOB,
    fecha_subida DATETIME DEFAULT CURRENT_TIMESTAMP,
);

CREATE TABLE documentos_inscripcion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    Recibo LONGBLOB,
    Carta_decla LONGBLOB,
    INE LONGBLOB,
    Comprobante LONGBLOB,
    Curp LONGBLOB,
    Fecha_Inscripcion DATETIME DEFAULT CURRENT_TIMESTAMP,
);

CREATE TABLE documentos_reinscripcion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    Recibo LONGBLOB,
    Carta_Bajo LONGBLOB,
    Numero_Control VARCHAR(20),
    Curp LONGBLOB,
    Nombre VARCHAR(50),
    Apellido_Paterno VARCHAR(50),
    Apellido_Materno VARCHAR(50),
    Semestre VARCHAR(20),
    Fecha_Reinscripcion DATETIME DEFAULT CURRENT_TIMESTAMP,
);




