-- Veritaban�n� olu�tur
CREATE DATABASE springdb;

-- Veritaban�n� se�
USE springdb;

-- Company tablosunu olu�tur
CREATE TABLE company (
  id BIGINT PRIMARY KEY IDENTITY (1,1),
  name VARCHAR(255) NOT NULL UNIQUE,
  address VARCHAR(255) NOT NULL
);

-- Employee tablosunu olu�tur
CREATE TABLE employee (
  id INT NOT NULL IDENTITY(1,1),
  ad VARCHAR(50) NOT NULL,
  soyad VARCHAR(50) NOT NULL,
  maas DECIMAL(10,2) NOT NULL,
  company_id BIGINT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (company_id) REFERENCES company(id)
);

-- Company tablosuna �rnek veriler ekle
INSERT INTO company (name, address) VALUES
('Microsoft', 'One Microsoft Way, Redmond, WA 98052'),
('Google', '1600 Amphitheatre Parkway, Mountain View, CA 94043'),
('Apple', 'One Apple Park Way, Cupertino, CA 95014');

-- Employee tablosuna �rnek veriler ekle
INSERT INTO employee (ad, soyad, maas, company_id) VALUES
('Bill Gates', 'Gates', 1000000.00, 1),
('Satya Nadella', 'Nadella', 500000.00, 1),
('Sundar Pichai', 'Pichai', 600000.00, 2),
('Larry Page', 'Page', 800000.00, 2),
('Tim Cook', 'Cook', 700000.00, 3),
('Steve Jobs', 'Jobs', 900000.00, 3);