CREATE TABLE Administrador (
 id INT NOT NULL,
 id_0 INT NOT NULL,
 id_1 INT NOT NULL,
 Attribute10 CHAR(10) NOT NULL
);

ALTER TABLE Administrador ADD CONSTRAINT PK_Administrador PRIMARY KEY (id,id_0,id_1,Attribute10);


CREATE TABLE Autor (
 id INT NOT NULL
);

ALTER TABLE Autor ADD CONSTRAINT PK_Autor PRIMARY KEY (id);


CREATE TABLE Comite (
 id INT NOT NULL,
 nro_participante INT
);

ALTER TABLE Comite ADD CONSTRAINT PK_Comite PRIMARY KEY (id);


CREATE TABLE Conferencia (
 id INT NOT NULL,
 nome VARCHAR(255),
 nome_abre VARCHAR(255),
 nome_organizador VARCHAR(255),
 sub_tit VARCHAR(255),
 sub_tit_sec VARCHAR(255),
 url VARCHAR(255),
 cidade VARCHAR(255),
 email VARCHAR(255),
 email_ret VARCHAR(255),
 moeda VARCHAR(255),
 participante INT
);

ALTER TABLE Conferencia ADD CONSTRAINT PK_Conferencia PRIMARY KEY (id);


CREATE TABLE Coordenador (
 id INT NOT NULL
);

ALTER TABLE Coordenador ADD CONSTRAINT PK_Coordenador PRIMARY KEY (id);


CREATE TABLE Email (
 email VARCHAR(255) NOT NULL,
 id_conferencia INT NOT NULL,
 id_user INT NOT NULL,
 id INT NOT NULL,
 id_0 INT NOT NULL,
 id_1 INT NOT NULL,
 nomeRemetente VARCHAR(255),
 emailRetorno VARCHAR(255)
);

ALTER TABLE Email ADD CONSTRAINT PK_Email PRIMARY KEY (email,id_conferencia,id_user,id,id_0,id_1);


CREATE TABLE Evento (
 idEvento INT NOT NULL,
 id INT NOT NULL,
 idLocal INT NOT NULL,
 tipo VARCHAR(255),
 dataHora DATE,
 dataHoraFim DATE,
 tituloEvento VARCHAR(255)
);

ALTER TABLE Evento ADD CONSTRAINT PK_Evento PRIMARY KEY (idEvento,id,idLocal);


CREATE TABLE Fases (
 id INT NOT NULL,
 id_conferencia INT NOT NULL,
 nome VARCHAR(255),
 ini DATE,
 fim DATE
);

ALTER TABLE Fases ADD CONSTRAINT PK_Fases PRIMARY KEY (id,id_conferencia);


CREATE TABLE Forum (
 mensagem VARCHAR(10)
);


CREATE TABLE Funcao (
 id INT NOT NULL,
 nome VARCHAR(255)
);

ALTER TABLE Funcao ADD CONSTRAINT PK_Funcao PRIMARY KEY (id);


CREATE TABLE Function (
);


CREATE TABLE GpParticipantes (
 id INT NOT NULL,
 nome VARCHAR(10)
);

ALTER TABLE GpParticipantes ADD CONSTRAINT PK_GpParticipantes PRIMARY KEY (id);


CREATE TABLE Local (
 idLocal INT NOT NULL,
 endereco VARCHAR(255),
 numero INT,
 cep VARCHAR(10),
 bairro VARCHAR(10),
 sala VARCHAR(10)
);

ALTER TABLE Local ADD CONSTRAINT PK_Local PRIMARY KEY (idLocal);


CREATE TABLE membro (
 id INT NOT NULL,
 id INT NOT NULL
);

ALTER TABLE membro ADD CONSTRAINT PK_membro PRIMARY KEY (id,id);


CREATE TABLE Mensagem (
 conteudo VARCHAR(10),
 titulo VARCHAR(10)
);


CREATE TABLE Participante (
 id INT NOT NULL,
 visible BIT(10)
);

ALTER TABLE Participante ADD CONSTRAINT PK_Participante PRIMARY KEY (id);


CREATE TABLE Presidente (
 id INT NOT NULL,
 id_0 INT NOT NULL,
 id_1 INT NOT NULL
);

ALTER TABLE Presidente ADD CONSTRAINT PK_Presidente PRIMARY KEY (id,id_0,id_1);


CREATE TABLE Revisor (
 id INT NOT NULL,
 n_rev INT,
 interesse CHAR(10)
);

ALTER TABLE Revisor ADD CONSTRAINT PK_Revisor PRIMARY KEY (id);


CREATE TABLE Sessao (
 idSessao INT NOT NULL,
 id INT NOT NULL,
 nome VARCHAR(255),
 abreviacao VARCHAR(255),
 inicio DATE,
 fim DATE
);

ALTER TABLE Sessao ADD CONSTRAINT PK_Sessao PRIMARY KEY (idSessao,id);


CREATE TABLE Submissao (
 id_user INT NOT NULL,
 id_trabalho INT NOT NULL,
 id INT NOT NULL,
 data DATE,
 tp_submissao VARCHAR(10)
);

ALTER TABLE Submissao ADD CONSTRAINT PK_Submissao PRIMARY KEY (id_user,id_trabalho,id);


CREATE TABLE Trabalho (
 id_user INT NOT NULL,
 id INT NOT NULL,
 titulo VARCHAR(255),
 tema VARCHAR(255),
 tipo VARCHAR(255),
 arquivo VARCHAR(255),
 meta_dados VARCHAR(255)
);

ALTER TABLE Trabalho ADD CONSTRAINT PK_Trabalho PRIMARY KEY (id_user,id);


CREATE TABLE Usuario (
 id INT NOT NULL,
 id_0 INT NOT NULL,
 id_1 INT NOT NULL,
 nome VARCHAR(255),
 sobrenome VARCHAR(255),
 cpf INT,
 email CHAR(255),
 nascimento DATE,
 login CHAR(255),
 senha CHAR(255)
);

ALTER TABLE Usuario ADD CONSTRAINT PK_Usuario PRIMARY KEY (id,id_0,id_1);


CREATE TABLE Usuario_funcao (
 id_func INT NOT NULL,
 id_user INT NOT NULL
);

ALTER TABLE Usuario_funcao ADD CONSTRAINT PK_Usuario_funcao PRIMARY KEY (id_func,id_user);


CREATE TABLE UsuarioFuncao (
);


CREATE TABLE Apresentador (
 id INT NOT NULL,
 tel INT,
 IDApresentador INT
);

ALTER TABLE Apresentador ADD CONSTRAINT PK_Apresentador PRIMARY KEY (id);


CREATE TABLE ArrayList (
 id INT NOT NULL,
 id_0 INT NOT NULL
);

ALTER TABLE ArrayList ADD CONSTRAINT PK_ArrayList PRIMARY KEY (id,id_0);


CREATE TABLE Avaliacao (
 IDAvaliacao INT NOT NULL,
 parecer VARCHAR(10),
 dataInicio DATE,
 dataAvaliacao DATE
);

ALTER TABLE Avaliacao ADD CONSTRAINT PK_Avaliacao PRIMARY KEY (IDAvaliacao);


CREATE TABLE Avaliadores (
 id INT NOT NULL,
 id_0 INT NOT NULL,
 id_1 INT NOT NULL
);

ALTER TABLE Avaliadores ADD CONSTRAINT PK_Avaliadores PRIMARY KEY (id,id_0,id_1);


CREATE TABLE Coautor (
 id INT NOT NULL,
 id_0 INT NOT NULL,
 id_1 INT NOT NULL
);

ALTER TABLE Coautor ADD CONSTRAINT PK_Coautor PRIMARY KEY (id,id_0,id_1);


CREATE TABLE Fatura (
 idFatura INT NOT NULL,
 id_user INT NOT NULL,
 dataEnvio DATE,
 dataVencimento DATE,
 dataPagamento DATE
);

ALTER TABLE Fatura ADD CONSTRAINT PK_Fatura PRIMARY KEY (idFatura,id_user);


CREATE TABLE Float (
 id INT NOT NULL,
 id_0 INT NOT NULL,
 id_2 INT NOT NULL,
 idLocal INT NOT NULL,
 idEvento INT NOT NULL,
 idFatura INT NOT NULL,
 id_user INT NOT NULL
);

ALTER TABLE Float ADD CONSTRAINT PK_Float PRIMARY KEY (id,id_0,id_2,idLocal,idEvento,idFatura,id_user);


CREATE TABLE GpParticipante_usuario (
 id_user INT NOT NULL,
 id_gpParticipante CHAR(10) NOT NULL
);

ALTER TABLE GpParticipante_usuario ADD CONSTRAINT PK_GpParticipante_usuario PRIMARY KEY (id_user,id_gpParticipante);


ALTER TABLE Administrador ADD CONSTRAINT FK_Administrador_0 FOREIGN KEY (id,id_0,id_1) REFERENCES Presidente (id,id_0,id_1);
ALTER TABLE Administrador ADD CONSTRAINT FK_Administrador_1 FOREIGN KEY (id_0) REFERENCES Funcao (id);


ALTER TABLE Autor ADD CONSTRAINT FK_Autor_0 FOREIGN KEY (id) REFERENCES Funcao (id);


ALTER TABLE Comite ADD CONSTRAINT FK_Comite_0 FOREIGN KEY (id) REFERENCES GpParticipantes (id);


ALTER TABLE Coordenador ADD CONSTRAINT FK_Coordenador_0 FOREIGN KEY (id) REFERENCES Funcao (id);


ALTER TABLE Email ADD CONSTRAINT FK_Email_0 FOREIGN KEY (id,id_0,id_1) REFERENCES Usuario (id,id_0,id_1);


ALTER TABLE Evento ADD CONSTRAINT FK_Evento_0 FOREIGN KEY (id) REFERENCES Conferencia (id);
ALTER TABLE Evento ADD CONSTRAINT FK_Evento_1 FOREIGN KEY (idLocal) REFERENCES Local (idLocal);


ALTER TABLE Fases ADD CONSTRAINT FK_Fases_0 FOREIGN KEY (id_conferencia) REFERENCES Conferencia (id);


ALTER TABLE membro ADD CONSTRAINT FK_membro_0 FOREIGN KEY (id) REFERENCES Funcao (id);
ALTER TABLE membro ADD CONSTRAINT FK_membro_1 FOREIGN KEY (id) REFERENCES Comite (id);


ALTER TABLE Participante ADD CONSTRAINT FK_Participante_0 FOREIGN KEY (id) REFERENCES Funcao (id);


ALTER TABLE Presidente ADD CONSTRAINT FK_Presidente_0 FOREIGN KEY (id,id_0,id_1) REFERENCES Usuario (id,id_0,id_1);
ALTER TABLE Presidente ADD CONSTRAINT FK_Presidente_1 FOREIGN KEY (id_0) REFERENCES Funcao (id);


ALTER TABLE Revisor ADD CONSTRAINT FK_Revisor_0 FOREIGN KEY (id) REFERENCES Funcao (id);


ALTER TABLE Sessao ADD CONSTRAINT FK_Sessao_0 FOREIGN KEY (id) REFERENCES Conferencia (id);


ALTER TABLE Submissao ADD CONSTRAINT FK_Submissao_0 FOREIGN KEY (id_user,id_trabalho) REFERENCES Trabalho (id_user,id);


ALTER TABLE Trabalho ADD CONSTRAINT FK_Trabalho_0 FOREIGN KEY (id_user) REFERENCES Autor (id);


ALTER TABLE Usuario ADD CONSTRAINT FK_Usuario_0 FOREIGN KEY (id_0) REFERENCES Funcao (id);
ALTER TABLE Usuario ADD CONSTRAINT FK_Usuario_1 FOREIGN KEY (id_1) REFERENCES Funcao (id);


ALTER TABLE Apresentador ADD CONSTRAINT FK_Apresentador_0 FOREIGN KEY (id) REFERENCES Autor (id);
ALTER TABLE Apresentador ADD CONSTRAINT FK_Apresentador_1 FOREIGN KEY (id) REFERENCES Funcao (id);


ALTER TABLE ArrayList ADD CONSTRAINT FK_ArrayList_0 FOREIGN KEY (id) REFERENCES Conferencia (id);
ALTER TABLE ArrayList ADD CONSTRAINT FK_ArrayList_1 FOREIGN KEY (id_0) REFERENCES Conferencia (id);


ALTER TABLE Avaliadores ADD CONSTRAINT FK_Avaliadores_0 FOREIGN KEY (id,id_0,id_1) REFERENCES Usuario (id,id_0,id_1);


ALTER TABLE Coautor ADD CONSTRAINT FK_Coautor_0 FOREIGN KEY (id,id_0,id_1) REFERENCES Usuario (id,id_0,id_1);
ALTER TABLE Coautor ADD CONSTRAINT FK_Coautor_1 FOREIGN KEY (id_0) REFERENCES Autor (id);


ALTER TABLE Float ADD CONSTRAINT FK_Float_0 FOREIGN KEY (id) REFERENCES GpParticipantes (id);
ALTER TABLE Float ADD CONSTRAINT FK_Float_1 FOREIGN KEY (id_0,idLocal,idEvento) REFERENCES Evento (id,idLocal,idEvento);
ALTER TABLE Float ADD CONSTRAINT FK_Float_2 FOREIGN KEY (id_0) REFERENCES Conferencia (id);
ALTER TABLE Float ADD CONSTRAINT FK_Float_3 FOREIGN KEY (id_2) REFERENCES Conferencia (id);
ALTER TABLE Float ADD CONSTRAINT FK_Float_4 FOREIGN KEY (idFatura,id_user) REFERENCES Fatura (idFatura,id_user);


