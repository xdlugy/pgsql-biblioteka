create database biblioteka;

create table Autorzy (
	id SERIAL primary key,
	imie varchar(30) not null,
	nazwisko varchar(30) not null
)

create table Ksiazki (
	id SERIAL primary key,
	tytul varchar(50) not null,
	rok_publikacji numeric(4) not null,
	isbn numeric(13) not null,
	id_autor int not null
)

create table Recenzje (
	id serial primary key,
	ocena int check (ocena between 1 and 10),
	tresc text,
	id_ksiazka int not null
)


