use saintseiya;

create table personagem(
idPersonagem int primary key auto_increment,
nome varchar(50),
forca int,
velocidade int,
stamina int,
cosmo int, 
durabilidade int
);


create table usuario(
idUsuario int primary key auto_increment,
nome varchar(50),
email varchar(50),
senha varchar(50),
fkPersonagemFavorito int,
 constraint fkPersonagemUsuario
	foreign key (fkPersonagemFavorito)
		references personagem (idPersonagem)
);

create table armadura(
idArmadura int primary key auto_increment,
nome varchar(50),
tipo varchar(50),
fkPersonagem int,
 constraint fkPersonagemArmadura
	foreign key (fkPersonagem)
		references personagem (idPersonagem)
);

create table golpes(
idGolpes int primary key auto_increment,
nome varchar(50)
);

create table personagemGolpes(
fkPersonagem int,
fkGolpes int,
dano int,
constraint pkComposta
	primary key (fkPersonagem, fkGolpes),
constraint fkPersonagemPersonagemGolpes
	foreign key (fkPersonagem)
		references personagem (idPersonagem),
        constraint fkGolpesPersonagemGolpes
	foreign key (fkGolpes)
		references golpes (idGolpes)
);

insert into personagem values
(default,'Seiya', 7, 8, 8, 7, 7),
(default, 'Shiryu', 8, 7, 8, 7, 8),
(default, 'Hyoga', 7, 7, 8, 8, 7),
(default, 'Shun', 7, 8, 7, 8, 7),
(default, 'Ikki', 9, 8, 8, 7, 8),
(default, 'Mu', 8, 8, 8, 10, 8),
(default, 'Aldebaran', 10, 6, 8, 8, 10),
(default, 'Saga', 10, 10, 9, 10, 10),
(default, 'Máscara da Morte', 8, 8, 7, 10, 7),
(default, 'Aiolia', 10, 10, 8, 9, 9),
(default, 'Shaka', 9, 9, 8, 10, 8),
(default, 'Dohko', 9, 8, 8, 10, 9),
(default, 'Milo', 9, 9, 8, 9, 8),
(default, 'Aiolos', 10, 10, 8, 10, 9),
(default, 'Shura', 10, 10, 8, 9, 9),
(default, 'Camus', 8, 8, 8, 10, 8),
(default, 'Afrodite', 7, 8, 7, 10, 8);

insert into usuario values
(default, 'Andrei', 'andrei@gmail.com', 'Andrei123!', 10),
(default, 'João', 'joao@gmail.com', 'Joao123!', 6),
(default, 'Maria', 'maria@gmail.com', 'Maria123!', 17);

insert into armadura values
(default, 'Pégaso', 'Bronze', 1),                         -- 1
(default, 'Dragão', 'Bronze', 2),                         -- 2
(default, 'Cisne', 'Bronze', 3),                          -- 3
(default, 'Andrômeda', 'Bronze', 4),                      -- 4
(default, 'Fênix', 'Bronze', 5),                          -- 5
(default, 'Áries', 'Ouro', 6),                            -- 6
(default, 'Touro', 'Ouro', 7),                            -- 7
(default, 'Gêmeos', 'Ouro', 8),                           -- 8
(default, 'Câncer', 'Ouro', 9),                           -- 9
(default, 'Leão', 'Ouro', 10),                            -- 10
(default, 'Virgem', 'Ouro', 11),                          -- 11
(default, 'Libra', 'Ouro', 12),                           -- 12
(default, 'Escorpião', 'Ouro', 13),                       -- 13
(default, 'Sagitário', 'Ouro', 14),                       -- 14
(default, 'Capricórnio', 'Ouro', 15),                     -- 15
(default, 'Aquário', 'Ouro', 16),                         -- 16
(default, 'Peixes', 'Ouro', 17);                          -- 17

insert into golpes values
(default, 'Meteoro de Pégaso'),                            -- 1
(default, 'Cometa de Pégaso'),                             -- 2
(default, 'Cólera do Dragão Ascendente'),                  -- 3
(default, 'Dragão Voador'),                                -- 4
(default, 'Pó de Diamante'),                               -- 5
(default, 'Execução Aurora'),                              -- 6
(default, 'Corrente Nebulosa'),                            -- 7
(default, 'Tempestade Nebulosa'),                          -- 8
(default, 'Golpe das Asas Ardentes'),                      -- 9
(default, 'Ilusão Demoníaca'),                            -- 10
(default, 'Muralha de Cristal'),                          -- 11
(default, 'Extinção Estelar'),                            -- 12
(default, 'Grande Chifre'),                               -- 13
(default, 'Explosão Galática'),                           -- 14
(default, 'Outra Dimensão'),                              -- 15
(default, 'Cápsula do Poder'),                            -- 16
(default, 'Relâmpago de Plasma'),                         -- 17
(default, 'Tesouro do Céu'),                              -- 18
(default, 'Kahn'),                                        -- 19
(default, 'Cólera dos 100 Dragões'),                      -- 20
(default, 'Agulha Escarlate'),                            -- 21
(default, 'Antares'),                                     -- 22
(default, 'Flecha Dourada'),                              -- 23
(default, 'Rosa Diabólica Real'),                         -- 24
(default, 'Rosa Piranha'),                                -- 25
(default, 'Excalibur'),                                   -- 26
(default, 'Onda do Inferno'),                             -- 27
(default, 'Chama do Mundo dos Mortos');                   -- 28

insert into personagemGolpes values
(1, 1, 6),
(1, 2, 8),
(2, 3, 6),
(2, 4, 7),
(3, 5, 6),
(3, 6, 8),
(4, 7, 6),
(4, 8, 8),
(5, 9, 7),
(5, 10, 7),
(6, 11, 3),
(6, 12, 10),
(7, 13, 9),
(8, 14, 10),
(8, 15, 9),
(9, 27, 8),
(9, 28, 9),
(10, 16, 8),
(10, 17, 10),
(11, 18, 10),
(11, 19, 3),
(12, 3, 8),
(12, 20, 10),
(13, 21, 7),
(13, 22, 10),
(14, 23, 10),
(15, 26, 10),
(16, 5, 8),
(16, 6, 10),
(17, 24, 7),
(17, 25, 9);

select personagem.nome as personagem,
	personagem.forca as 'força',
    personagem.velocidade,
    personagem.stamina,
    personagem.cosmo,
    personagem.durabilidade,
	armadura.nome as armadura,
    armadura.tipo,
    golpes.nome as golpes,
	personagemGolpes.dano 
	from personagem join armadura
		on idPersonagem = armadura.fkPersonagem
		join personagemGolpes 
			on idPersonagem = personagemGolpes.fkPersonagem
			join golpes
				on fkGolpes = idGolpes;
                

select usuario.nome as usuario,
	usuario.email as email,
    usuario.senha as senha,
	personagem.nome as 'personagem favorito',
	personagem.forca as 'força',
    personagem.velocidade,
    personagem.stamina,
    personagem.cosmo,
    personagem.durabilidade,
	armadura.nome as armadura,
    armadura.tipo,
    golpes.nome as golpes,
	personagemGolpes.dano 
    from usuario join personagem
		on fkPersonagemFavorito = idPersonagem
		join armadura
			on idPersonagem = armadura.fkPersonagem
			join personagemGolpes 
				on idPersonagem = personagemGolpes.fkPersonagem
				join golpes
					on fkGolpes = idGolpes;
                    
select * from usuario;
select * from armadura;





                








