- phpMyAdmin SQL Dump
- versão 5.0.2
- https://www.phpmyadmin.net/
-
- Host: 127.0.0.1
- Tempo de geração: 08-Dez-2020 às 16:57
- Versão do servidor: 10.4.14-MariaDB
- versão do PHP: 7.4.9

SET SQL_MODE =  " NO_AUTO_VALUE_ON_ZERO " ;
INICIAR A TRANSAÇÃO ;
SET time_zone =  " +00: 00 " ;


/ * ! 40101 SET @OLD_CHARACTER_SET_CLIENT = @@ CHARACTER_SET_CLIENT * / ;
/ * ! 40101 SET @OLD_CHARACTER_SET_RESULTS = @@ CHARACTER_SET_RESULTS * / ;
/ * ! 40101 SET @OLD_COLLATION_CONNECTION = @@ COLLATION_CONNECTION * / ;
/ * ! 40101 DEFINIR NOMES utf8mb4 * / ;

-
- Banco de dados: `escola2`
-
CRIAR  BANCO DE DADOS  QUE NÃO EXISTE ` escola2 ` default Caráter SET utf8mb4_general_ci utf8mb4 COLLATE;
USO ` escola2 ` ;

- ------------------------------------------------ --------

-
- Estrutura da tabela `cargo`
-

CRIAR  TABELA ` cargo ` (
  ` CodCargo `  int ( 11 ) não nulo ,
  ` Cargo `  varchar ( 255 ) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-
- Extraindo dados da tabela `cargo`
-

INSERT INTO  ` cargo ` ( ` CodCargo ` , ` cargo ` ) VALUES
( 1 , ' professor ' ),
( 2 , ' codPed ' ),
( 3 , ' codBiblioteca ' ),
( 4 , ' codInfo ' ),
( 5 , ' codEM ' ),
( 6 , ' Diretor ' ),
( 7 , ' codRH ' );

- ------------------------------------------------ --------

-
- Estrutura da tabela `cargofun`
-

CRIAR  TABELA ` cargofun` (
  ` Codfun `  int ( 11 ) não nulo ,
  ` CodCargo `  int ( 11 ) não nulo ,
  ` DataEntrada `  data  NOT NULL ,
  ` DataSaida `  data PADRÃO NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-
- Extraindo dados da tabela `cargofun`
-

INSERT INTO  ` cargofun ` ( ` Codfun ` , ` CodCargo ` , ` dataEntrada ` , ` dataSaida ` ) VALORES
( 1 , 1 , ' 0000-00-00 ' , NULL ),
( 1 , 5 , ' 2005-09-09 ' , ' 2006-10-15 ' ),
( 1 , 2 , ' 2015-02-11 ' , NULL ),
( 3 , 1 , ' 2017-01-21 ' , NULL ),
( 3 , 7 , ' 2011-10-11 ' , NULL ),
( 3 , 5 , ' 2009-05-29 ' , ' 2019-08-20 ' ),
( 3 , 3 , ' 2004-03-10 ' , NULL );

- ------------------------------------------------ --------

-
- Estrutura da tabela `funcionario`
-

CRIAR  TABELA ` funcionario` (
  ` Codfun `  int ( 11 ) não nulo ,
  ` Nome `  VARCHAR ( 255 ) não nulo ,
  ` DataEntrada `  data  NOT NULL ,
  ` DataSaida `  data PADRÃO NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-
- Extraindo dados da tabela `funcionario`
-

INSERÇÃO EM  ` funcionario ` ( ` idfun ` , ` nomo ` , ` dataEntrada ` , ` dataSaida ` ) VALORES
( 1 , ' Amanda ' , ' 2010-04-05 ' , NULL ),
( 2 , ' Anderson ' , ' 2018-03-26 ' , NULL ),
( 3 , ' Agda ' , ' 2008-08-05 ' , NULL );

-
- Índices para tabelas despejadas
-

-
- Índices para tabela `cargo`
-
ALTER  TABLE  ` cargo `
  ADD PRIMÁRIA CHAVE ( ` CodCargo ` );

-
- Índices para tabela `cargofun`
-
ALTER  TABLE  ` cargofun `
  Adicionar chave ` Codfun ` ( ` Codfun ` ),
  Adicionar chave ` CodCargo ` ( ` CodCargo ` );

-
- Índices para tabela `funcionario`
-
ALTER  TABLE  ` funcionario `
  ADD PRIMÁRIA CHAVE ( ` Codfun ` );

-
- AUTO_INCREMENT de tabelas despejadas
-

-
- AUTO_INCREMENT de tabela `cargo`
-
ALTER  TABLE  ` cargo `
  MODIFY ` CodCargo `  int ( 11 ) não NULL AUTO_INCREMENT, AUTO_INCREMENT = 8 ;

-
- AUTO_INCREMENT de tabela `funcionario`
-
ALTER  TABLE  ` funcionario `
  MODIFY ` Codfun `  int ( 11 ) não NULL AUTO_INCREMENT, AUTO_INCREMENT = 4 ;

-
- Restrições para despejos de tabelas
-

-
- Limitadores para a tabela `cargofun`
-
ALTER  TABLE  ` cargofun `
  ADD RESTRIÇÃO  ` cargofun_ibfk_1 `  EXTERNA CHAVE ( ` CodCargo ` ) Referências  ` cargo ` ( ` CodCargo ` ) em excluir CASCATA  DE  ACTUALIZAÇÃO CASCATA,
  ADD RESTRIÇÃO  ` cargofun_ibfk_2 `  EXTERNA CHAVE ( ` Codfun ` ) Referências  ` funcionario ` ( ` Codfun ` ) em excluir CASCATA  DE  ACTUALIZAÇÃO CASCATA;
COMMIT ;

/ * ! 40101 SET CHARACTER_SET_CLIENT = @ OLD_CHARACTER_SET_CLIENT * / ;
/ * ! 40101 SET CHARACTER_SET_RESULTS = @ OLD_CHARACTER_SET_RESULTS * / ;
/ * ! 40101 SET COLLATION_CONNECTION = @ OLD_COLLATION_CONNECTION * / ;
