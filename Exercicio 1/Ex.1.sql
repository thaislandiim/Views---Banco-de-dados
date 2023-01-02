-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: planilhasFacul
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `busca_dados_coordenador_diretor`
--

DROP TABLE IF EXISTS `busca_dados_coordenador_diretor`;
/*!50001 DROP VIEW IF EXISTS `busca_dados_coordenador_diretor`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `busca_dados_coordenador_diretor` AS SELECT 
 1 AS `nome_instituicap`,
 1 AS `codigp`,
 1 AS `ead`,
 1 AS `email`,
 1 AS `site`,
 1 AS `rua`,
 1 AS `complemento`,
 1 AS `cidade`,
 1 AS `cep`,
 1 AS `estado`,
 1 AS `bairro`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `busca_dados_f`
--

DROP TABLE IF EXISTS `busca_dados_f`;
/*!50001 DROP VIEW IF EXISTS `busca_dados_f`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `busca_dados_f` AS SELECT 
 1 AS `nome_instituicap`,
 1 AS `codigp`,
 1 AS `ead`,
 1 AS `email`,
 1 AS `site`,
 1 AS `rua`,
 1 AS `complemento`,
 1 AS `cidade`,
 1 AS `cep`,
 1 AS `estado`,
 1 AS `bairro`,
 1 AS `nome_funcionario`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `busca_dados_fun`
--

DROP TABLE IF EXISTS `busca_dados_fun`;
/*!50001 DROP VIEW IF EXISTS `busca_dados_fun`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `busca_dados_fun` AS SELECT 
 1 AS `nome_instituicap`,
 1 AS `codigp`,
 1 AS `ead`,
 1 AS `email`,
 1 AS `site`,
 1 AS `rua`,
 1 AS `complemento`,
 1 AS `cidade`,
 1 AS `cep`,
 1 AS `estado`,
 1 AS `bairro`,
 1 AS `nome_funcionario`,
 1 AS `numero`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `busca_dados_funcionarios`
--

DROP TABLE IF EXISTS `busca_dados_funcionarios`;
/*!50001 DROP VIEW IF EXISTS `busca_dados_funcionarios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `busca_dados_funcionarios` AS SELECT 
 1 AS `nome_instituicap`,
 1 AS `codigp`,
 1 AS `ead`,
 1 AS `email`,
 1 AS `site`,
 1 AS `rua`,
 1 AS `complemento`,
 1 AS `cidade`,
 1 AS `cep`,
 1 AS `estado`,
 1 AS `bairro`,
 1 AS `nome_funcionario`,
 1 AS `numero`,
 1 AS `nome_cargo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `dados_diretor_coordenador`
--

DROP TABLE IF EXISTS `dados_diretor_coordenador`;
/*!50001 DROP VIEW IF EXISTS `dados_diretor_coordenador`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dados_diretor_coordenador` AS SELECT 
 1 AS `rua`,
 1 AS `complemento`,
 1 AS `cidade`,
 1 AS `cep`,
 1 AS `estado`,
 1 AS `bairro`,
 1 AS `nome_cargo`,
 1 AS `nome_funcionario`,
 1 AS `nome_instituicap`,
 1 AS `codigp`,
 1 AS `ead`,
 1 AS `email`,
 1 AS `site`,
 1 AS `numero`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `id_end` int NOT NULL AUTO_INCREMENT,
  `id_inst` int NOT NULL,
  `rua` varchar(150) DEFAULT NULL,
  `complemento` varchar(150) DEFAULT NULL,
  `cidade` varchar(150) DEFAULT NULL,
  `cep` char(9) DEFAULT NULL,
  `estado` char(2) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_end`),
  KEY `end_fk_inst` (`id_inst`),
  CONSTRAINT `end_fk_inst` FOREIGN KEY (`id_inst`) REFERENCES `instituicao` (`id_inst`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,2,'Avenida Fernando Costa, 176 ','','Mogi das Cruzes','08735-000','SP',' Jardim Avenida '),(2,3,'Rua do Patrocínio, 716 ','','Itu','13300-200','SP',' Centro '),(3,4,'Avenida Rodrigues Alves, 8-35 ','','Bauru','17015-002','SP','Centro'),(4,5,'Rua Campos Sales, 389 ','','Lins','16400-550','SP',' Centro '),(5,6,'Rua Nove de Julho, 175 ','','Birigui','16200-600','SP',' Centro '),(6,7,'Praça Dr. Carlos Sampaio Filho, 120 ','','Penápolis','16300-000','SP',' Centro '),(7,8,'Rua Santa Cruz, 958 ','','Assis','19800-320','SP',' Vila Palhares '),(8,9,'Rua Dom Pedro II, 627 ','','Piracicaba','13400-390','SP',' Centro '),(9,10,'Rua Cesário Motta, 957 ','','Ribeirão Preto','14090-500','SP',' Jardim Paulista '),(10,11,'Rua do Sacramento, 230 ','','São Bernardo do Campo','09640-000','SP',' Rudge Ramos '),(11,12,'Rua Maurício de Nassau, 1191 ','','Araçatuba','16015-500','SP',' Santana '),(12,13,'Rua Raul Ramos de Araújo, 283 ','','São José dos Campos','12211-760','SP',' Santana '),(13,14,'Avenida Tomaz Alves Figueiredo, 142 ','','Lorena','12608-346','SP',' Vila Hepacaré '),(14,15,'Rua dos Operários, 153 ','','Taubaté','12020-340','SP',' Centro '),(15,16,'Avenida dos Estudantes, 3278 ','','São José do Rio Preto','15035-100','SP',' Jardim Novo Aeroporto '),(16,17,'Rua Maximiano Mendes, 55 ','','São José do Rio Preto','15014-190','SP','Vila Ercília '),(17,18,'Rua Campos Sales, 22-99 ','','Mirassol','15130-000','SP','Centro'),(18,19,'Avenida Conselheiro Nébias, 337 ','','Santos','11015-300','SP',' Vila Matias '),(19,20,'Rua Xavier de Toledo, 335 ','','Santo André','09010-130','SP',' Centro '),(20,21,'Rua Padre Anchieta, 168 ','','Guaraujá','11450-170','SP',' Vila Alice '),(21,22,'Avenida Dr. Ismael Alonso y Alonso, 3373 ','','Franca','14401-426','SP',' Jardim Piratininga '),(22,23,'Rua XV de Novembro, 218 ','','Sorocaba','18035-100','SP',' Centro '),(23,24,'Avenida Presidente Vargas, 1770 ','','Araraquara','14800-500','SP',' Carmo '),(24,25,'Rua Félix Romano, 153 ','','Suzano','08675-280','SP',' Vila Figueira '),(25,26,'Rua Hygino Muzy Filho, 1001 ','','Marília','17525-902','SP',' Mirante '),(26,27,'Rua Angela Tomé, 63 ','','São Bernardo do Campo','09624-700','SP',' Rudge Ramos '),(27,28,'Avenida Rui Barbosa, 3777 ','','Assis','19814-000','SP',' Centro '),(28,29,'Rua das Poncianas, 120 ','','Americana','13468-180','SP',' Jardim da Gloria '),(29,30,'Alameda Dr. Oscar de Barros Serra Dória, 5564 ','','São José do Rio Preto','15091-180','SP',' Vila São Manoel '),(30,31,'Avenida Pr. Roberto Frade Monte, 389 ','','Barretos','14783-226','SP',' Marieta '),(31,32,'Rua Capitão Manoel Caetano, 265 ','','Mogi das Cruzes','09853-305','SP',' Centro '),(32,33,'Avenida Humberto Alencar Castelo Branco, 4416 ','','São Bernardo do Campo','09853-305','SP',' Assunção '),(33,34,'Avenida Pioneira Geralda Saturno, 145 ','','Presidente Prudente','19040-155','SP',' Vila Verinha '),(34,35,'Rua Matão, 81 ','','Campinas','13030-300','SP',' Vila Santana '),(35,36,'Rua Sacramento, 490 ','','Campinas','13010-210','SP',' Centro '),(36,37,'Praça Cândido Dias Castejon, 75 ','','São José dos Campos','12245-720','SP',' Centro '),(37,38,'Avenida Marechal Rondon, 536 ','','Campinas','13070-172','SP',' Jardim Chapadão '),(38,39,'Avenida dos Estudantes, 168 ','','Caieiras','07700-625','SP',' Centro '),(39,40,'Avenida dos Imigrantes, 2140 ','','Bragança Paulista','12902-000','SP',' Jardim América III '),(40,41,'Rua Siqueira Campos, 301 ','','Araçatuba','16025-300','SP',' Praça São João '),(41,42,'Rua Bahia, 300 ','','São Joaquim da Barra','14600-000','SP',' Vila Deino '),(42,43,'Avenida Guarulhos, 1844 ','','Guarulhos','07025-000','SP',' Vila Augusta '),(43,44,'Rua Alexandre Kadunc, 238 ','','Embu das Artes','06803-450','SP',' Vila Carmen '),(44,45,'Rua Alcides Nunes, 1020 ','','Marília','17520-100','SP',' Vista Alegre '),(45,46,'Avenida Brasília, 2479 ','','Araçatuba','16015-460','SP',' Jardim Nova York '),(46,47,'Avenida Albuquerque Lins, 722 ','','Pindamonhangaba','12410-300','SP',' São Benedito '),(47,48,'Rua Armezinda de Jesus Pereira, 60 ','','Taboão da Serra','06753-310','SP',' Jardim Virgínia '),(48,49,'Estrada Municipal Leme-Ajapi, S/N ','','Leme','13610-970','SP','Zona Rural'),(49,50,'Rua Carlos Chagas, 710 ','','Ribeirão Preto','14090-190','SP',' Jardim Paulista '),(50,51,'Avenida Francisco Rodrigues Filho, 1233 ','','Mogi das Cruzes','08773-380','SP',' Mogilar '),(51,52,'Rua Candido Xavier de Almeida e Souza, 200 ','','Mogi das Cruzes','08780-911','SP',' Centro Cívico '),(52,53,'Avenida Paulo Nunes, 95 ','','Santa Fé do Sul','15775-000','SP',' Centro Sul '),(53,54,'Avenida Dr. Armando Salles Oliveira, 201 ','','Franca','14404-600','SP',' Parque Universitário '),(54,55,'Avenida Tiradentes, 822 ','','São Paulo','01102-000','SP',' Luz '),(55,56,'Rua Voluntários da Pátria, 777 ','','São Paulo','02011-000','SP',' Santana '),(56,57,'Rua Sena Madureira, 68 ','','São Paulo','04021-000','SP',' Vila Mariana '),(57,58,'Avenida Pires do Rio, 1127 ','','São Paulo','08020-000','SP',' São Miguel Paulista '),(58,59,'Avenida Brig. Luís Antonio, 1404','Conj 1','São Paulo','01318-100','SP',' Bela Vista '),(59,60,'Avenida Prof. Lineu Prestes, 2227 ','','São Paulo','05508-900','SP',' Cidade Universitária '),(60,61,'Rua Tuiuti, 1372 ','','São Paulo','03081-120','SP',' Tatuapé '),(61,62,'Avenida Corifeu de Azevedo Marques, 215 ','','São Paulo','05581-000','SP',' Butantã '),(62,63,'Rua do Seminário, 41 ','','São Paulo','01036-100','SP',' Centro '),(63,64,'Rua Felipe Gardelha, 91 ','','São Paulo','02012-120','SP',' Santana '),(64,65,'Rua Cezario Galeno, 448/475 ','','São Paulo','03071-000','SP',' Tatuapé ');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `func_cargos`
--

DROP TABLE IF EXISTS `func_cargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `func_cargos` (
  `id_cargos` int NOT NULL AUTO_INCREMENT,
  `nome_cargo` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`id_cargos`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `func_cargos`
--

LOCK TABLES `func_cargos` WRITE;
/*!40000 ALTER TABLE `func_cargos` DISABLE KEYS */;
INSERT INTO `func_cargos` VALUES (1,'diretor'),(2,'coordenador');
/*!40000 ALTER TABLE `func_cargos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `id_func` int NOT NULL AUTO_INCREMENT,
  `id_cargo` int NOT NULL,
  `id_funcInst` int NOT NULL,
  `nome_funcionario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_func`),
  KEY `cargo_fk_funcionarios` (`id_cargo`),
  KEY `inst_fk_funcionarios` (`id_funcInst`),
  CONSTRAINT `cargo_fk_funcionarios` FOREIGN KEY (`id_cargo`) REFERENCES `func_cargos` (`id_cargos`),
  CONSTRAINT `inst_fk_funcionarios` FOREIGN KEY (`id_funcInst`) REFERENCES `instituicao` (`id_inst`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (1,2,16,'Gustavo Cosenza Botelho Nogueira'),(2,2,22,'Dra. Juliana Franco de Souza'),(3,1,39,'Elidamares Gabriel da Silva Conrado'),(4,1,50,'Rosangela de Fátima Pereira Lopes Dias'),(5,2,51,'Dra. Bianca Freo'),(6,2,52,'Dr. Cláudio José Alves de Brito'),(7,1,53,'Mara Cristina Antunes Sampaio Bavelloni'),(8,2,54,'Mara Cristina Antunes Sampaio Bavelloni'),(9,1,56,'Regina Maria Zanolli'),(10,2,56,'Patrícia Viana Costa de Souza'),(11,1,57,'Renata Silveira Chammas D\'Atri'),(12,2,57,'Dr. José Itamar Mei Silveira'),(13,1,58,'Paulo Rogério Ferreira Pinto'),(14,1,59,'Riberto Tavares'),(15,2,59,'Riberto Tavares da Silva'),(16,1,60,'Prof. Dr. Rodolfo Francisco Haltenhoff Melani'),(17,2,60,'Dr. Glauco Fioranelli Viana'),(18,1,61,'Mariza Helena Andreoni'),(19,2,61,'Mariza Helena Andreoni'),(20,1,62,'Adriana Helena Brasil Stolf Guzzardi'),(21,2,62,'Laurence Saya Guzzardi'),(22,1,63,'Yara Esmeralda Di Arena'),(23,2,63,'Prof. Dr. João Paulo Forato Blini'),(24,1,64,'Dra. Lúcia Ardálio Cesena'),(25,2,65,'Prof. Dr. Claudio Froes de Freitas');
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instituicao`
--

DROP TABLE IF EXISTS `instituicao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instituicao` (
  `id_inst` int NOT NULL AUTO_INCREMENT,
  `nome_instituicap` varchar(150) DEFAULT NULL,
  `codigp` varchar(10) DEFAULT NULL,
  `ead` tinyint(1) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `site` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_inst`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instituicao`
--

LOCK TABLES `instituicao` WRITE;
/*!40000 ALTER TABLE `instituicao` DISABLE KEYS */;
INSERT INTO `instituicao` VALUES (2,'Colégio Técnico Marechal Rondon','12',0,'secretaria@colegiorondon.com.br','www.colegiorondon.com.br'),(3,'Escola de 1º e 2º Graus \"Mere Marie Theodore Voiron\"\"\"','14',0,'',''),(4,'Liceu Noroeste','17',0,'contato@liceunoroeste.edu.br','www.liceunoroeste.edu.br'),(5,'Escola de 1º e 2º Graus do Instituto Americano de Lins','18',0,'ial@ial.br','www.ial.br'),(6,'Escola de 1º e 2º Graus do Instituto Noroeste','19',0,'noroeste@noroeste.com.br','www.institutonoroeste.br'),(7,'Escola de 1º e 2º Graus São Franscisco de Assis/ Escola Dom Bosco','20',0,'oceupositivo@ig.com.br','www.oceupositivo.com.br'),(8,'Escola Estadual de 1º e 2º Graus Dona Carolina F. Burali','22',0,'eecarolinaburali@gmail.com',''),(9,'Faculdade de Odontologia de Piracicaba - UNICAMP','54',0,'colfop@fop.unicamp.br','www.fop.unicamp.br'),(10,'Escola de Prótese Dentária de Ribeirão','55',0,'',''),(11,'Faculdade Odontologia Instituto Metodista','68',0,'nicolas.gomez@metodista.br',''),(12,'Escola de 2º Grau Fundação Educacional de Araçatuba','77',0,'fcea@terra.com.br','www.ceata.edu.br'),(13,'ECOMPO - Escola Politécnica 2º Grau Comendador Manoel Pedro de Oliveira','81',0,'estagio@ecompo.com.br','www.ecompo.com.br'),(14,'Colégio Delta - Escola Paulista LTDA','86',0,'informa@deltacol.com.br','www.deltacol.com.br'),(15,'Escola de 1º e 2º Graus \" Dr. Alfredo José Balbi\"\"\"','91',0,'colegio@unitau.br','www.unitau.br'),(16,'Escola Técnica Estadual de 2º Grau Philadelpho Gouvea Netto','101',0,'philadelpho@terra.com.br','www.philadelpho.com.br'),(17,'Delegacia de Ensino de São José do Rio Preto','108',0,'desdjr@see.sp.gov.br','www.deesjriopreto.edunet.sp.gov.br'),(18,'Escola Municipal de 1º e 2º Graus de Mirassol','109',0,'fem.mirassol@ig.com.br','www.fem.g12.br'),(19,'Escola Politécnica Treinasse','119',0,'treinasse@treinasse.com.br','www.treinasse.com.br'),(20,'Instituto Polígono de Ensino - Antigo Instituto Pentágono de Ensino III','129',0,'secretariacentro@institutopoligono.com.br','www.institutopoligono.com.br'),(21,'Escola de 1º e 2º Graus Domingos de Moraes','140',0,'cdmdigital@hotmail.com',''),(22,'UNIFEP Franca - Unidade de Formação em Educaão Profissional (Antiga IFPO)','141',0,'secretariafr@unifep.com.br','www.unifep.com.br'),(23,'Escola Técnica São Raphael','159',0,'saoraphael@ig.com.br','www.escolasaoraphaelsp.com.br'),(24,'CEPROARA - Centro Profissionalizante de Araraquara (Antiga Escola Prof. Celso Eduardo de Moraes Barbosa\")\"','168',0,'cursostecnicos@ceproara.com.br',''),(25,'Centro de Estudos de Saúde Lopes S/C LTDA','169',0,'atendimento@escolalopes.com.br','www.escolalopes.com.br'),(26,'Universidade de Marília','179',0,'secretaria@unimar.com','www.unimar.br'),(27,'Instituto de Ensino São Paulo','183',0,'colegioesp@colegioiesp.com.br','www.colegioiesp.com.br'),(28,'Colégio Técnico Avançado de Assis','185',0,'contato@centea.com.br','www.centea.com.br'),(29,'Instituto Metropolitan','193',0,'fale@institutometropolitan.com.br','www.institutometropolitan.com.br'),(30,'TECMED - Cursos Profissionalizantes - Cursos e Aperfeiçoamento S/C','195',0,'atendimento@grupotecmed.com.br','www.grupotecmed.com.br'),(31,'CETEC - Colégio e Escola Técnica','198',0,'cetec.unifeb@gmail.com','www.feb.br'),(32,'Liceu Braz Cubas - Educação Inf. Ens. Fundamental e Ens. Med. - Educação Profissional Básica- Técnica','199',0,'secretaria@liceubrazcubas.com','www.liceubrazcubas.com'),(33,'Colégio Brasília','212',0,'contato@colegiobrasilia.com','www.colegiobrasilia.com'),(34,'Escola de Educação Profissional do Instituto Educacional de Presidente Prudente','220',0,'institutoud@institutoud.com.br','www.institutoud.com.br'),(35,'Escola Técnica de Ensino de Prótese - ETEP','232',0,'escola@etep.odo.br','www.etep.odo.br'),(36,'SENAC Campinas - Serviço Nacional de Aprendizagem Comercial','241',0,'campinas@sp.senac.br','www.sp.senac.br'),(37,'Colégio Técnico Industrial - Fundação ValeParaibana','252',0,'mainezj@univap.br','www.univap.br'),(38,'ERAP - Escola de Reciclagem e Aperfeiçoamento Profissional ABO','274',0,'cursos@abocampinas.com.br',''),(39,'Centro Educacional Técnico Odontológico Delta System LTDA','276',0,'contato@odonto-system.com','www.odonto-escola.com'),(40,'Colégio Técnico Nossa Senhora das Graças','281',0,'contato@colegiodasgracas.com.br','www.colegiodasgracas.com.br'),(41,'Instituto Educacional de Araçatuba - IEA','284',0,'contato@cursoiea.com.br','www.cursoiea.com.br'),(42,'Colégio Iara Maria Coimbra - Unidade II','291',0,'colegioiara@netsite.com.br','www.iaratec.com.br'),(43,'Colégio Edward Haward Angle','295',0,'coordenacaogeral@faculdadefacig.com.br','www.faculdadefacig.com.br'),(44,'Colégio Aurélio S/C LTDA','301',0,'colegio.aurelio@uol.com.br','www.colegioaurelio.com.br'),(45,'Colégio Diretriz Educacional LTDA','310',0,'atendimento@diretrizeducacional.com.br','www.diretrizeducacional.com.br'),(46,'Teno Instituto Educacional','328',0,'unitero@unitero.com.br','www.uniteno.com.br'),(47,'Instituto Práxis - Escola Técnica Profissional','347',0,'professor.peres@gmail.com',''),(48,'Escola Municipal de Ensino Fundamental e Ensino Médio Rui Barbosa','359',0,'emefem_ruibarbosa@yahoo.com.br',''),(49,'Colégio Lumen','365',0,'lumencursos@bol.com.br','www.lumenleme.com.br'),(50,'UNIFEP Ribeirão Preto - Unidade de Formação em Educação Profissional','372',0,'contato@unifep.com.br','www.unifep.com.br'),(51,'Universidade Braz Cubas - PRONATEC','386',0,'bianca.freo@brazcubas.br','www.brazcubas.com.br'),(52,'Universidade de Mogi das Cruzes - PRONATEC','389',0,'','www.umc.br'),(53,'Escola Municipal Integração de Ensino','404',0,'tecenfermagem@funecsantafe.edu.br','www.funecsantafe.edu.br'),(54,'Universidade de Franca - PRONATEC','406',0,'agencia@unifran.edu.br','www.unifran.edu.br'),(55,'SENAC Tiradentes - Serviço Nacional de Aprendizagem Comercial','52',0,'tiradentes@sp.senac.br','www.sp.senac.br'),(56,'Escola Municipal de 1º e 2º Graus Prof. Derville Allegretti','76',0,'ememfmdallegretti@prefeitura.sp.gov.br',''),(57,'Colégio Rocha Marmo','116',0,'rochamarmo@escolasantarita.com.br','www.rochamarmo.com.br'),(58,'Escola Manoel Marcondes Galvão - Colégio Galvão','156',0,'colegiogalvao@uol.com.br','Ana Maria Galvão'),(59,'Escola Paulista de Prótese - ESPP','173',0,'espp2000@hotmail.com','www.espp.com.br'),(60,'Escola de Prótese da Fundação para Desenvolvimento Científico e Tecnológico da Odontologia','203',0,'fundecto@fundecto.com.br','www.fundecto.com.br'),(61,'Colégio Metanew','238',0,'colegiometanem@hotmail.com','www.colegiometanew-edu.com.br'),(62,'Escola Técnica de Prótese Dentária Butantã','246',0,'escola@escolabutanta.com.br','www.escolabutanta.com.br'),(63,'Colégio Integral Inaci ','287',0,'secretaria@colegioinaci.com.br','www.faculdadefinaci.com.br'),(64,'UNIFAES - Unidade de Formação, Aperfeiçoamento e Especialização Em Saúde e Estética','290',0,'unifaes@unifaes.com.br','www.unifaes.com.br'),(65,'UNICID - Universidade Cidade de São Paulo','385',0,'claudio.freitas@unicid.edu.br','www.unicid.edu.br');
/*!40000 ALTER TABLE `instituicao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `juncao_tabelas`
--

DROP TABLE IF EXISTS `juncao_tabelas`;
/*!50001 DROP VIEW IF EXISTS `juncao_tabelas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `juncao_tabelas` AS SELECT 
 1 AS `id_inst`,
 1 AS `nome_instituicap`,
 1 AS `codigp`,
 1 AS `ead`,
 1 AS `email`,
 1 AS `site`,
 1 AS `rua`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `telefone`
--

DROP TABLE IF EXISTS `telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone` (
  `id_tel` int NOT NULL AUTO_INCREMENT,
  `inst_id` int NOT NULL,
  `numero` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_tel`),
  KEY `tel_fk_inst` (`inst_id`),
  CONSTRAINT `tel_fk_inst` FOREIGN KEY (`inst_id`) REFERENCES `instituicao` (`id_inst`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
INSERT INTO `telefone` VALUES (1,2,'(11) 4727-7233'),(2,2,'(11) 4722-7636'),(3,3,'(11) 4013-9956'),(4,4,'(14) 3224-1800'),(5,4,'(14) 3878-1800'),(6,4,'(14) 3878-1800'),(7,5,'(14) 3533-5501'),(8,6,'(18) 3649-4010'),(9,7,'(18) 3652-1406'),(10,8,'(18) 3324-6923'),(11,8,'(18) 3322-3224'),(12,9,'(19) 3422-5346'),(13,9,'(19) 3422-5347'),(14,11,'(11) 4366-5552'),(15,12,'(18) 3608-3898'),(16,13,'(12) 3922-8655'),(17,13,'(12) 3922-8573'),(18,14,'(12) 3153-2988'),(19,15,'(12) 3624-4252'),(20,16,'(17) 3233-9266'),(21,16,'(17) 3233-9823'),(22,17,'(17) 3203-0900'),(23,18,'(17) 3253-9080'),(24,19,'(13) 3232-4518'),(25,20,'(11) 4469-0822'),(26,21,'(13) 3352-1912'),(27,22,'(16) 3722-4614'),(28,23,'(15) 3233-8905'),(29,24,'(16) 3322-6774'),(30,24,'(16) 3114-8288'),(31,25,'(11) 4748-4130'),(32,25,'(11) 4746-2566'),(33,26,'(14) 2105-4000'),(34,27,'(11) 4367-1489'),(35,28,'(18) 3402-7707'),(36,28,'(18) 99725-3152'),(37,29,'(19) 3044-5696'),(38,29,'(19) 3621-6059'),(39,29,'(19) 98909-5944'),(40,30,'(17) 2138-3939'),(41,31,'(17) 3321-6417'),(42,31,' (17) 3321-6448'),(43,32,'(11) 4728-3430'),(44,33,'(11) 4344-2080'),(45,34,'(18) 3221-5461'),(46,34,' (18) 3226-7070'),(47,35,'(19) 3272-9660'),(48,36,'(19) 2117-0600'),(49,37,'(12) 3928-9800'),(50,38,'(19) 3262-1224'),(51,39,'(11) 4605-5526'),(52,39,'(11) 4442-4213'),(53,39,'(11) 4445-1313'),(54,40,'(11) 4032-0098'),(55,40,'(11) 4032-1251'),(56,41,'(18) 3623-0557'),(57,42,'(16) 3818-3553'),(58,43,'(11) 2414-0827'),(59,44,'(11) 4781-0092'),(60,45,'(14) 3417-8300'),(61,46,'(18) 3301-3713'),(62,47,'(12) 3642-7350'),(63,48,'(11) 4701-6093'),(64,49,'(19) 3053-2898'),(65,50,'(16) 3624-3331'),(66,51,'(11) 4791-8122'),(67,51,'(11) 4791-8000'),(68,52,'(11) 4798-7000'),(69,53,'(17) 3641-9000'),(70,54,'(16) 3711-8888'),(71,54,'(16) 3711-8886'),(72,55,'(11) 3336-2000'),(73,55,' (11) 3336-2020'),(74,56,'(11) 2221-0710'),(75,56,'(11) 2221-6513'),(76,57,'(11) 5575-0769'),(77,58,'(11) 2052-3473'),(78,58,' (11) 2057-2117'),(79,59,'(11) 3285-1391'),(80,59,'(11) 3285-6693'),(81,60,'(11) 3030-0910'),(82,61,'(11) 2091-2780'),(83,61,'(11) 2091-2786'),(84,62,'(11) 3722-0786'),(85,63,'(11) 3326-0238'),(86,64,'(11) 3628-2169'),(87,65,'(11) 2178-1528');
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `busca_dados_coordenador_diretor`
--

/*!50001 DROP VIEW IF EXISTS `busca_dados_coordenador_diretor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `busca_dados_coordenador_diretor` AS select `i`.`nome_instituicap` AS `nome_instituicap`,`i`.`codigp` AS `codigp`,`i`.`ead` AS `ead`,`i`.`email` AS `email`,`i`.`site` AS `site`,`e`.`rua` AS `rua`,`e`.`complemento` AS `complemento`,`e`.`cidade` AS `cidade`,`e`.`cep` AS `cep`,`e`.`estado` AS `estado`,`e`.`bairro` AS `bairro` from (`instituicao` `i` join `endereco` `e` on((`i`.`id_inst` = `e`.`id_inst`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `busca_dados_f`
--

/*!50001 DROP VIEW IF EXISTS `busca_dados_f`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `busca_dados_f` AS select `i`.`nome_instituicap` AS `nome_instituicap`,`i`.`codigp` AS `codigp`,`i`.`ead` AS `ead`,`i`.`email` AS `email`,`i`.`site` AS `site`,`e`.`rua` AS `rua`,`e`.`complemento` AS `complemento`,`e`.`cidade` AS `cidade`,`e`.`cep` AS `cep`,`e`.`estado` AS `estado`,`e`.`bairro` AS `bairro`,`f`.`nome_funcionario` AS `nome_funcionario` from ((`instituicao` `i` join `endereco` `e` on((`i`.`id_inst` = `e`.`id_inst`))) join `funcionarios` `f` on((`f`.`id_funcInst` = `i`.`id_inst`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `busca_dados_fun`
--

/*!50001 DROP VIEW IF EXISTS `busca_dados_fun`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `busca_dados_fun` AS select `i`.`nome_instituicap` AS `nome_instituicap`,`i`.`codigp` AS `codigp`,`i`.`ead` AS `ead`,`i`.`email` AS `email`,`i`.`site` AS `site`,`e`.`rua` AS `rua`,`e`.`complemento` AS `complemento`,`e`.`cidade` AS `cidade`,`e`.`cep` AS `cep`,`e`.`estado` AS `estado`,`e`.`bairro` AS `bairro`,`f`.`nome_funcionario` AS `nome_funcionario`,`t`.`numero` AS `numero` from (((`instituicao` `i` join `endereco` `e` on((`i`.`id_inst` = `e`.`id_inst`))) join `funcionarios` `f` on((`f`.`id_funcInst` = `i`.`id_inst`))) join `telefone` `t` on((`t`.`inst_id` = `i`.`id_inst`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `busca_dados_funcionarios`
--

/*!50001 DROP VIEW IF EXISTS `busca_dados_funcionarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `busca_dados_funcionarios` AS select `i`.`nome_instituicap` AS `nome_instituicap`,`i`.`codigp` AS `codigp`,`i`.`ead` AS `ead`,`i`.`email` AS `email`,`i`.`site` AS `site`,`e`.`rua` AS `rua`,`e`.`complemento` AS `complemento`,`e`.`cidade` AS `cidade`,`e`.`cep` AS `cep`,`e`.`estado` AS `estado`,`e`.`bairro` AS `bairro`,`f`.`nome_funcionario` AS `nome_funcionario`,`t`.`numero` AS `numero`,`fc`.`nome_cargo` AS `nome_cargo` from ((((`instituicao` `i` join `endereco` `e` on((`i`.`id_inst` = `e`.`id_inst`))) join `funcionarios` `f` on((`f`.`id_funcInst` = `i`.`id_inst`))) join `telefone` `t` on((`t`.`inst_id` = `i`.`id_inst`))) join `func_cargos` `fc` on((`fc`.`id_cargos` = `f`.`id_cargo`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dados_diretor_coordenador`
--

/*!50001 DROP VIEW IF EXISTS `dados_diretor_coordenador`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `dados_diretor_coordenador` AS select `e`.`rua` AS `rua`,`e`.`complemento` AS `complemento`,`e`.`cidade` AS `cidade`,`e`.`cep` AS `cep`,`e`.`estado` AS `estado`,`e`.`bairro` AS `bairro`,`fc`.`nome_cargo` AS `nome_cargo`,`f`.`nome_funcionario` AS `nome_funcionario`,`i`.`nome_instituicap` AS `nome_instituicap`,`i`.`codigp` AS `codigp`,`i`.`ead` AS `ead`,`i`.`email` AS `email`,`i`.`site` AS `site`,`t`.`numero` AS `numero` from ((((`endereco` `e` join `func_cargos` `fc`) join `funcionarios` `f`) join `instituicao` `i`) join `telefone` `t`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `juncao_tabelas`
--

/*!50001 DROP VIEW IF EXISTS `juncao_tabelas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `juncao_tabelas` AS select `instituicao`.`id_inst` AS `id_inst`,`instituicao`.`nome_instituicap` AS `nome_instituicap`,`instituicao`.`codigp` AS `codigp`,`instituicao`.`ead` AS `ead`,`instituicao`.`email` AS `email`,`instituicao`.`site` AS `site`,`endereco`.`rua` AS `rua` from (`instituicao` join `endereco` on((`instituicao`.`id_inst` = `endereco`.`id_inst`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-29 15:42:13
