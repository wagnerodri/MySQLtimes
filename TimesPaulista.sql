Create database Futebol;

Use Futebol;


Drop database Futebol;


CREATE TABLE IF NOT EXISTS Atletas (
    numero INT(2)not null,
    nome VARCHAR(20),
    salario DECIMAL(5),
    funcao VARCHAR(20),
    equipe VARCHAR(20),
    PRIMARY KEY (numero)
);

CREATE TABLE IF NOT EXISTS Times (
    codigo INT(3) NOT NULL,
    fundacao INT(10),
    nome CHAR(20) NOT NULL,
    estado CHAR(20),
    PRIMARY KEY (codigo)
);
                                 
alter table Atletas
add foreign key (numero)
references Times(codigo); 

select* from Atletas;
select* from Times;

SET FOREIGN_KEY_CHECKS = 0;

Insert into Atletas(numero, nome, salario, funcao, equipe) values 
( 01, 'Rafael', 25000, 'Goleiro', 'São Paulo'),
( 12 , 'Rafinha', 28000, 'Lateral D', 'São Paulo'),
( 02 , 'Igor Vinicius', 25000, 'Lateral D', 'São Paulo'),
( 06 , 'Welligton', 18000, 'Lateral E', 'São Paulo'),
( 05, 'Arboleda', 40000, 'Zagueiro', 'São Paulo'),
( 04 , 'Diego Costa', 20000, 'Zagueiro', 'São Paulo'),
( 11 , 'Rodrigo Nestor', 30000, 'Volante', 'São Paulo'),
( 16 , 'Luiz Gustavo', 35000, 'Volante', 'São Paulo'),
( 08 , 'Galoppo', 45000, 'meia', 'São Paulo'),
( 15 , 'Michael Araujo', 30000, 'meia', 'São Paulo'),
( 10 , 'Luciano', 50000, 'Atacante', 'São Paulo'),
( 23 , 'Evertom', 38000, 'Goleiro', 'Palmeiras'),
( 03 , 'Marcos Rocha', 48000, 'Lateral E', 'Palmeiras'),
( 07 , 'Anibal Moreno', 48000, 'volante', 'Palmeiras'),
( 09 , 'Dudu', 78000, 'Atacante', 'Palmeiras'),
( 13 , 'Endrick', 25000, 'Atacante', 'Palmeiras'),
( 14 , 'Ze Rafael', 58000, 'Volante', 'Palmeiras'),
( 17 , 'Mayke', 48000, 'Lateral D', 'Palmeiras'),
( 18 , 'Gustavo Gomes', 68000, 'Zagueiro', 'Palmeiras'),
( 19 , 'Raphael Veiga', 88000, 'Meia', 'Palmeiras'),
( 20 , 'Richard Rios', 58000, 'Volante', 'Palmeiras'),
( 21 , 'Murilo', 48000, 'Zagueiro', 'Palmeiras'),
( 22 , 'Joao Paulo', 2800, 'Goleiro', 'Santos'),
( 24 , 'JP Chermont', 2000, 'Lateral D', 'Santos'),
( 25 , 'Gil', 4800, 'Zagueiro', 'Santos'),
(26 , 'Joaquin', 3800, 'Zagueiro', 'Santos'),
(27 , 'Gonzalo Escobar', 1800, 'Lateral E', 'Santos'),
(28 , 'Joao Schmidt', 5800, 'Volante', 'Santos'),
(29 , 'Diego Pituka', 6800, 'Volante', 'Santos'),
(30 , 'Giuliano', 8000, 'Meia', 'Santos'),
(31 , 'Otero', 5800, 'meia', 'Santos'),
(32 , 'Guilherme', 3800, 'Atacante', 'Santos'),
(33 , 'Gustavo Henrique', 5800, 'Zagueiro', 'Corinthians'),
(34 , 'Feliz Torres', 4800, 'Zagueiro', 'Corinthians'),
(35 , 'Fagner', 7800, 'Lateral D', 'Corinthians'),
(36 , 'Hugo', 2800, 'Lateral E', 'Corinthians'),
(37 , 'Fausto Vera', 5800, 'Volante', 'Corinthians'),
(38 , 'Raniele', 4800, 'Volante', 'Corinthians'),
(39 , 'Rodrigo Garro', 8800, 'Meia', 'Corinthians'),
(40 , 'Paulinho', 7800, 'Meia', 'Corinthians'),
(41 , 'Romero', 8800, 'Atacante', 'Corinthians'),
(42 , 'Yuri Alberto', 11000, 'Atacante', 'Corinthians'),
(43 , 'Carlos Miguel', 6800, 'Goleiro', 'Corinthians');

SET FOREIGN_KEY_CHECKS = 1;
       
       Insert into Times (codigo, fundacao ,nome , estado)
values (01, 1930, 'São Paulo', 'São Paulo'),
       (02, 1914, 'Palmeiras', 'São Paulo'),
       (03, 1912, 'Santos', 'São Paulo'),
       (04, 1910, 'Corinthias_Lixos', 'São Paulo');
       
       select * from Atletas;
       select* from Times;
       
select salario from Atletas;

select * from Atletas where funcao = 'Goleiro';

select * from Atletas where equipe = 'Palmeiras';
select * from Atletas where equipe = 'São Paulo';
select * from Atletas where equipe = 'Santos';
select * from Atletas where equipe = 'Corinthians';

select * from Atletas where nome LIKE 'D%';

select* from Atletas where salario > 5800 and salario <8800;

delete from Atletas where numero = 35;

select fundacao from Times where nome = 'Santos';

update Times set estado = 'Mato grosso do sul' where codigo = 02;

update Times set nome = 'Corinthians' where codigo = 04;

update Times set nome = 'Maior do brasil' where codigo = 01;

