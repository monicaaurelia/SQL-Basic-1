/* membuat databse */
CREATE DATABASE Latihan_Myskill;

/* menghapus database */
DROP DATABASE Latihan_Myskill;

/* membuat tabel pada database */
/*CREATE TABLE nama_table(
	nama_kolom tipe_data,
	nama_kolom tipe_data,
	nama_kolom tipe_data,
	....
);*/

/* contoh membuat tabel pada database*/
CREATE TABLE karyawan(
	id_karyawan INTEGER,
	nama VARCHAR(30),
	dept VARCHAR(30),
	posisi VARCHAR (20)
);


CREATE TABLE departemen(
	id_dept INTEGER,
	manager VARCHAR(30),
	unit VARCHAR(30),
	alamat VARCHAR (20)
);

/* cara nampilin semua kolom dari tabel */
/*SELECT * FROM nama_tabel;*/
SELECT * FROM karyawan;
SELECT * FROM departemen;

/* cara nampilin dua atau lebih tabel */
/*SELECT kolom1, kolom2, ... FROM nama_tabel;*/
SELECT nama, dept FROM karyawan;

/* cara menghapus atau drop tabel */
/*DROP TABLE nama_tabel;*/
DROP TABLE karyawan;

/* cara memasukkan nilai atau data ke dalam tabel*/
/*INSERT INTO nama_tabel 
VALUES
	(value1, value2, value3, ....);*/


INSERT INTO karyawan 
VALUES
	(1, 'Lorenzo','IT', 'Data Analyst');


/* cara memasukkan nilai dengan urutan kolom tertentu */
/*INSERT INTO nama_tabel (kolom3, kolom2, kolom1, kolom4) 
VALUES
	(value1, value2, value3, ....);*/
INSERT INTO karyawan 
VALUES
	('Priya', 2,'Sales', 'Business Analyst');

/* cara memasukkan nilai banyak */
INSERT INTO karyawan 
VALUES
	(3, 'Widuri','Logistik', 'Staff'),
	(4, 'Tutty','Corporate', 'Secretary')
;

/* memasukkan nilai namun tidak semua kolom */
INSERT INTO karyawan (nama, dept)
VALUES
	('Galah', 'Corporate');
SELECT * FROM karyawan;	

/* menghapus entri */
DELETE FROM karyawan WHERE nama = 'Priya';
DELETE FROM karyawan WHERE id_karyawan = 2;
DELETE FROM karyawan WHERE id_karyawan = 2 AND nama = 'Priya';

/* menghapus semua entri */
DELETE FROM karyawan

/* mengupdate nilai yang sudah ada */
UPDATE 
	karyawan
SET
	id_karyawan = 2
WHERE
	nama = 'Galah'
;

/* cara menambahkan kolom */
ALTER TABLE karyawan ADD COLUMN gaji integer;

/* cara menambahkan kolom banyak */
/* ALTER TABLE nama_tabel ADD COLUMN 
		nama_kolom1 tipe_data,
		nama_kolom2 tipe data,
		nama_kolom3 tipe data,
		....
; */

/* cara mengahapus kolom / mendrop kolom banyak */
ALTER TABLE karyawan DROP COLUMN gaji;

/* cara menghapus kolom banyak */
/* ALTER TABLE nama_tabel DROP COLUMN 
		nama_kolom1,
		nama_kolom2, 
		nama_kolom3, 
		....
; */

/* cara mengubah nama kolom */
ALTER TABLE karyawan RENAME COLUMN dept TO departemen;

/* cara mengubah tipe data pada kolom */
ALTER TABLE karyawan ALTER COLUMN id_karyawan TYPE varchar;
