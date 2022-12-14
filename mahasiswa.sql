CREATE DATABASE fakultas;

CREATE TABLE jurusan (
id INTEGER PRIMARY KEY AUTO_INCREMENT, 
kode char (4) NOT NULL,
nama VARCHAR (50) NOT NULL,
);

CREATE TABLE mahasiswa (
 id INTEGER PRIMARY KEY AUTO_INCREMENT,
 id_jurusan INTEGER NOT NULL,
 nim CHAR (8) NOT NULL,
 nama VARCHAR (50) NOT NULL,
 jenis_kelamin ENUM('Laki - laki', 'Perempuan') NOT NULL,
 tempat_lahir VARCHAR (50) NOT NULL,
 tanggal_lahir DATE NOT NULL,
 alamat VARCHAR (255) NOT NULL,
 FOREIGN KEY (id_jurusan) REFERENCES jurusan (id));