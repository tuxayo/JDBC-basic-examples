CREATE DATABASE IF NOT EXISTS BDEtud;
USE BDEtud;
--  PROMPT Droping Table ETUDIANT
  DROP TABLE IF EXISTS ETUDIANT;
--  PROMPT Droping Table PROF
  DROP TABLE IF EXISTS PROF;
--  PROMPT Droping Table MODULE
  DROP TABLE IF EXISTS MODULE;
--  PROMPT Droping Table ENSEIGNT
  DROP TABLE IF EXISTS ENSEIGNT;
--  PROMPT Droping Table NOTATION
  DROP TABLE IF EXISTS NOTATION;
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
--   DDL for Table ETUDIANT
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
--  PROMPT Creating Table ETUDIANT 
  CREATE TABLE ETUDIANT 
   (	NUM_ET MEDIUMINT AUTO_INCREMENT PRIMARY KEY, 
	NOM_ET VARCHAR(20), 
	PRENOM_ET VARCHAR(15), 
	CP_ET VARCHAR(5), 
	VILLE_ET VARCHAR(20), 
	ANNEE DECIMAL(2,0), 
	GROUPE DECIMAL(1,0)
   ) ;
   
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
--   DDL for Table PROF
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
--  PROMPT Creating Table PROF 
  CREATE TABLE PROF 
   (	NUM_PROF DECIMAL(3,0), 
	NOM_PROF VARCHAR(30), 
	PRENOM_PROF VARCHAR(20), 
	ADR_PROF VARCHAR(40), 
	CP_PROF VARCHAR(5), 
	VILLE_PROF VARCHAR(30), 
	MAT_SPEC VARCHAR(7)
   ) ;
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
--   DDL for Table MODULE
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
--  --  PROMPT Creating Table MODULE 
  CREATE TABLE MODULE 
   (	CODE VARCHAR(7), 
	LIBELLE VARCHAR(30), 
	H_COURS_PREV DECIMAL(3,0), 
	H_COURS_REA DECIMAL(3,0), 
	H_TP_PREV DECIMAL(3,0), 
	H_TP_REA DECIMAL(3,0), 
	DISCIPLINE VARCHAR(15), 
	COEFF_TEST DECIMAL(3,0), 
	COEFF_CC DECIMAL(3,0), 
	RESP DECIMAL(3,0), 
	CODEPERE VARCHAR(7)
   ) ;
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
--   DDL for Table ENSEIGNT
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
--  --  PROMPT Creating Table ENSEIGNT 
  CREATE TABLE ENSEIGNT 
   (	CODE VARCHAR(7), 
	NUM_PROF DECIMAL(3,0), 
	NUM_ET DECIMAL(6,0)
   ) ;
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
--   DDL for Table NOTATION
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
--  --  PROMPT Creating Table NOTATION 
  CREATE TABLE NOTATION 
   (	NUM_ET DECIMAL(6,0), 
	CODE VARCHAR(7), 
	MOY_CC DECIMAL(2,0), 
	MOY_TEST DECIMAL(2,0)
   ) ;

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--    DATA FOR TABLE ENSEIGNT
--    FILTER = none used
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  PROMPT Inserting into ENSEIGNT
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',1,2101);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',1,2102);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',1,2404);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',1,2422);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2101);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2102);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2103);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2104);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2105);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2113);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2114);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2121);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2124);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2125);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2201);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2202);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2207);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2209);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2211);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2212);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2217);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2220);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2222);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2224);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2226);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2301);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2302);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2304);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2306);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2316);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2317);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2318);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2320);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2326);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2401);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2402);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2404);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2406);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2412);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2415);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2421);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2422);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2423);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2501);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2503);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2509);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2512);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2516);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',2,2523);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',3,2101);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',3,2102);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',3,2103);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',3,2422);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ACSI',3,2501);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ADA',5,2401);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('ADA',5,2402);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('BD',1,2317);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('BD',1,2401);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('BD',1,2402);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('BD',1,2422);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('BD',1,2501);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('BD',2,2317);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('BD',2,2422);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('BD',2,2501);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('BD',3,2302);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('BD',3,2422);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('BD',3,2501);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('BD',3,2503);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('BD',3,2509);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('BD',3,2512);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('BD',3,2516);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('BD',3,2523);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('BD',13,1101);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('BD',13,1102);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('BD',13,1103);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('BD',13,1104);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('BD',13,1105);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('BD',13,1106);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('BD',13,1107);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('BD',13,1108);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('BD',13,1109);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('BD',13,1110);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('BD',13,1111);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('BD',13,2317);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('C++',5,1101);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('C++',5,1102);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('C++',5,1103);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('C++',5,1104);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('C++',5,1105);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('C++',5,1106);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('C++',5,1107);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('C++',5,1108);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('C++',5,1109);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('C++',5,1110);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('C++',5,1111);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('C++',5,2317);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('C++',7,2317);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('CPTA',12,2302);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('CPTA',12,2317);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('CPTA',12,2412);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('CPTA',12,2415);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('CPTA',12,2422);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('CPTA',12,2423);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('PRL',9,2302);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('RES',14,1101);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('RES',14,1102);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('RES',14,1103);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('RES',14,1104);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('RES',14,1105);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('RES',14,1106);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('RES',14,1107);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('RES',14,1108);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('RES',14,1109);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('RES',14,1110);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('RES',14,1111);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('RES',15,2302);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('SYS',5,2401);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('SYS',5,2402);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('SYS',5,2404);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('SYS',7,2317);
Insert into ENSEIGNT (CODE,NUM_PROF,NUM_ET) values ('SYS',15,2317);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--    END DATA FOR TABLE ENSEIGNT
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--    DATA FOR TABLE MODULE
--    FILTER = none used
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  PROMPT Inserting into MODULE
Insert into MODULE (CODE,LIBELLE,H_COURS_PREV,H_COURS_REA,H_TP_PREV,H_TP_REA,DISCIPLINE,COEFF_TEST,COEFF_CC,RESP,CODEPERE) values ('PPNINFO','PROGRAMME DUT INFO',null,null,null,null,null,null,null,null,null);
Insert into MODULE (CODE,LIBELLE,H_COURS_PREV,H_COURS_REA,H_TP_PREV,H_TP_REA,DISCIPLINE,COEFF_TEST,COEFF_CC,RESP,CODEPERE) values ('PINFO2','INFORMATIQUE 2EME ANNEE',null,null,null,null,'INFORMATIQUE',null,null,null,'PPNINFO');
Insert into MODULE (CODE,LIBELLE,H_COURS_PREV,H_COURS_REA,H_TP_PREV,H_TP_REA,DISCIPLINE,COEFF_TEST,COEFF_CC,RESP,CODEPERE) values ('PINFO1','INFORMATIQUE 1ERE ANNEE',null,null,null,null,'INFORMATIQUE',null,null,null,'PPNINFO');
Insert into MODULE (CODE,LIBELLE,H_COURS_PREV,H_COURS_REA,H_TP_PREV,H_TP_REA,DISCIPLINE,COEFF_TEST,COEFF_CC,RESP,CODEPERE) values ('PCC2','COMPETENCES COMP 2',null,null,null,null,null,null,null,null,'PPNINFO');
Insert into MODULE (CODE,LIBELLE,H_COURS_PREV,H_COURS_REA,H_TP_PREV,H_TP_REA,DISCIPLINE,COEFF_TEST,COEFF_CC,RESP,CODEPERE) values ('PCC1','COMPETENCES COMP 1',null,null,null,null,null,null,null,null,'PPNINFO');
Insert into MODULE (CODE,LIBELLE,H_COURS_PREV,H_COURS_REA,H_TP_PREV,H_TP_REA,DISCIPLINE,COEFF_TEST,COEFF_CC,RESP,CODEPERE) values ('OMGL','OUTILS MODELES GENIE LOGICIEL',null,null,null,null,'INFORMATIQUE',null,null,null,'PINFO2');
Insert into MODULE (CODE,LIBELLE,H_COURS_PREV,H_COURS_REA,H_TP_PREV,H_TP_REA,DISCIPLINE,COEFF_TEST,COEFF_CC,RESP,CODEPERE) values ('OMGL1','ANALYSE, CONCEPTION',null,null,null,null,'INFORMATIQUE',null,null,null,'OMGL');
Insert into MODULE (CODE,LIBELLE,H_COURS_PREV,H_COURS_REA,H_TP_PREV,H_TP_REA,DISCIPLINE,COEFF_TEST,COEFF_CC,RESP,CODEPERE) values ('OMGL2','PRINCIPES DES BD',null,null,null,null,'INFORMATIQUE',null,null,null,'OMGL');
Insert into MODULE (CODE,LIBELLE,H_COURS_PREV,H_COURS_REA,H_TP_PREV,H_TP_REA,DISCIPLINE,COEFF_TEST,COEFF_CC,RESP,CODEPERE) values ('ACSI','CONCEPTION DE SI',30,null,40,null,'INFORMATIQUE',60,40,1,'OMGL1');
Insert into MODULE (CODE,LIBELLE,H_COURS_PREV,H_COURS_REA,H_TP_PREV,H_TP_REA,DISCIPLINE,COEFF_TEST,COEFF_CC,RESP,CODEPERE) values ('CAS1','ETUDE DE CAS 1',null,null,null,null,'INFORMATIQUE',0,100,1,'OMGL1');
Insert into MODULE (CODE,LIBELLE,H_COURS_PREV,H_COURS_REA,H_TP_PREV,H_TP_REA,DISCIPLINE,COEFF_TEST,COEFF_CC,RESP,CODEPERE) values ('CAS2','ETUDE DE CAS 2',null,null,null,null,'INFORMATIQUE',null,null,null,'OMGL1');
Insert into MODULE (CODE,LIBELLE,H_COURS_PREV,H_COURS_REA,H_TP_PREV,H_TP_REA,DISCIPLINE,COEFF_TEST,COEFF_CC,RESP,CODEPERE) values ('ASR','ARCHITECTURE, ING. RESEAUX',null,null,null,null,'INFORMATIQUE',null,null,null,'PINFO2');
Insert into MODULE (CODE,LIBELLE,H_COURS_PREV,H_COURS_REA,H_TP_PREV,H_TP_REA,DISCIPLINE,COEFF_TEST,COEFF_CC,RESP,CODEPERE) values ('ASR1','CODAGE ET CIRCUITS',null,null,null,null,'INFORMATIQUE',null,null,null,'ASR');
Insert into MODULE (CODE,LIBELLE,H_COURS_PREV,H_COURS_REA,H_TP_PREV,H_TP_REA,DISCIPLINE,COEFF_TEST,COEFF_CC,RESP,CODEPERE) values ('AP','ALGORITHMIQUE ET PROGRAMMATION',null,null,null,null,null,null,null,null,'PINFO2');
Insert into MODULE (CODE,LIBELLE,H_COURS_PREV,H_COURS_REA,H_TP_PREV,H_TP_REA,DISCIPLINE,COEFF_TEST,COEFF_CC,RESP,CODEPERE) values ('AP1','ALGORITHMIQUE',null,null,null,null,'INFORMATIQUE',null,null,null,'AP');
Insert into MODULE (CODE,LIBELLE,H_COURS_PREV,H_COURS_REA,H_TP_PREV,H_TP_REA,DISCIPLINE,COEFF_TEST,COEFF_CC,RESP,CODEPERE) values ('EGO','ECONOMIE GESTION ORGANISATION',null,null,null,null,'GESTION',null,null,null,'PCC2');
Insert into MODULE (CODE,LIBELLE,H_COURS_PREV,H_COURS_REA,H_TP_PREV,H_TP_REA,DISCIPLINE,COEFF_TEST,COEFF_CC,RESP,CODEPERE) values ('EC','EXPRESSION COMMUNICATION',null,null,null,null,'COMMUNICATION',null,null,null,'PCC2');
Insert into MODULE (CODE,LIBELLE,H_COURS_PREV,H_COURS_REA,H_TP_PREV,H_TP_REA,DISCIPLINE,COEFF_TEST,COEFF_CC,RESP,CODEPERE) values ('MATH2','MATHEMATIQUES 2',null,null,null,null,null,null,null,null,'PCC2');
Insert into MODULE (CODE,LIBELLE,H_COURS_PREV,H_COURS_REA,H_TP_PREV,H_TP_REA,DISCIPLINE,COEFF_TEST,COEFF_CC,RESP,CODEPERE) values ('MATH1','MATHEMATIQUES 1',null,null,null,null,null,null,null,null,'PCC1');
Insert into MODULE (CODE,LIBELLE,H_COURS_PREV,H_COURS_REA,H_TP_PREV,H_TP_REA,DISCIPLINE,COEFF_TEST,COEFF_CC,RESP,CODEPERE) values ('LANG1','LANGUE VIVANTE 1',null,null,null,null,null,null,null,null,'PCC1');
Insert into MODULE (CODE,LIBELLE,H_COURS_PREV,H_COURS_REA,H_TP_PREV,H_TP_REA,DISCIPLINE,COEFF_TEST,COEFF_CC,RESP,CODEPERE) values ('LANG2','LANGUE VIVANTE 2',null,null,null,null,null,null,null,null,'PCC2');
Insert into MODULE (CODE,LIBELLE,H_COURS_PREV,H_COURS_REA,H_TP_PREV,H_TP_REA,DISCIPLINE,COEFF_TEST,COEFF_CC,RESP,CODEPERE) values ('RES','RESEAUX',null,null,null,null,null,null,null,null,'ASR1');
Insert into MODULE (CODE,LIBELLE,H_COURS_PREV,H_COURS_REA,H_TP_PREV,H_TP_REA,DISCIPLINE,COEFF_TEST,COEFF_CC,RESP,CODEPERE) values ('C++','PROGRAMMATION C++',45,null,50,null,'INFORMATIQUE',50,50,7,'AP1');
Insert into MODULE (CODE,LIBELLE,H_COURS_PREV,H_COURS_REA,H_TP_PREV,H_TP_REA,DISCIPLINE,COEFF_TEST,COEFF_CC,RESP,CODEPERE) values ('SYS','SYSTEME',45,null,50,null,'INFORMATIQUE',50,50,4,'ASR1');
Insert into MODULE (CODE,LIBELLE,H_COURS_PREV,H_COURS_REA,H_TP_PREV,H_TP_REA,DISCIPLINE,COEFF_TEST,COEFF_CC,RESP,CODEPERE) values ('PRL','PROLOG',20,null,35,null,'INFORMATIQUE',40,60,9,'AP1');
Insert into MODULE (CODE,LIBELLE,H_COURS_PREV,H_COURS_REA,H_TP_PREV,H_TP_REA,DISCIPLINE,COEFF_TEST,COEFF_CC,RESP,CODEPERE) values ('ADA','LANGAGE ADA',45,null,60,null,'INFORMATIQUE',50,50,6,'AP1');
Insert into MODULE (CODE,LIBELLE,H_COURS_PREV,H_COURS_REA,H_TP_PREV,H_TP_REA,DISCIPLINE,COEFF_TEST,COEFF_CC,RESP,CODEPERE) values ('CPTA','COMPTABILITE',25,null,0,null,'GESTION',60,40,10,'EGO');
Insert into MODULE (CODE,LIBELLE,H_COURS_PREV,H_COURS_REA,H_TP_PREV,H_TP_REA,DISCIPLINE,COEFF_TEST,COEFF_CC,RESP,CODEPERE) values ('ANGL2','ANGLAIS',80,null,0,null,null,100,0,11,'LANG2');
Insert into MODULE (CODE,LIBELLE,H_COURS_PREV,H_COURS_REA,H_TP_PREV,H_TP_REA,DISCIPLINE,COEFF_TEST,COEFF_CC,RESP,CODEPERE) values ('ANGL1','ANGLAIS',80,null,0,null,null,100,0,11,'LANG1');
Insert into MODULE (CODE,LIBELLE,H_COURS_PREV,H_COURS_REA,H_TP_PREV,H_TP_REA,DISCIPLINE,COEFF_TEST,COEFF_CC,RESP,CODEPERE) values ('MKTG','MARKETING',25,null,0,null,'GESTION',60,40,12,'EGO');
Insert into MODULE (CODE,LIBELLE,H_COURS_PREV,H_COURS_REA,H_TP_PREV,H_TP_REA,DISCIPLINE,COEFF_TEST,COEFF_CC,RESP,CODEPERE) values ('COMM','COMMUNICATION',40,null,15,null,'COMMUNICATION',100,0,null,'EC');
Insert into MODULE (CODE,LIBELLE,H_COURS_PREV,H_COURS_REA,H_TP_PREV,H_TP_REA,DISCIPLINE,COEFF_TEST,COEFF_CC,RESP,CODEPERE) values ('RO','RECHERCHE OPERATIONNELLE',20,null,25,null,'MATHS',50,50,null,'MATH2');
Insert into MODULE (CODE,LIBELLE,H_COURS_PREV,H_COURS_REA,H_TP_PREV,H_TP_REA,DISCIPLINE,COEFF_TEST,COEFF_CC,RESP,CODEPERE) values ('BD','BASES DE DONNEES',20,null,60,null,'INFORMATIQUE',60,40,3,'OMGL2');

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--    END DATA FOR TABLE MODULE
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--    DATA FOR TABLE NOTATION
--    FILTER = none used
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  PROMPT Inserting into NOTATION
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2406,'ACSI',11,15);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2404,'ACSI',10,13);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2401,'ACSI',8,12);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2402,'ACSI',15,17);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2326,'ACSI',13,17);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2320,'ACSI',6,10);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2318,'ACSI',15,12);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2317,'ACSI',9,12);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2301,'ACSI',16,18);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2523,'ACSI',11,14);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2516,'ACSI',10,12);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2512,'ACSI',9,13);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2509,'ACSI',14,14);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2503,'ACSI',8,12);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2406,'BD',12,15);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2404,'BD',14,15);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2401,'BD',8,13);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2402,'BD',5,7);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2326,'BD',13,16);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2320,'BD',10,12);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2318,'BD',15,17);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2317,'BD',12,13);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2301,'BD',15,18);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2523,'BD',14,14);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2516,'BD',8,12);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2512,'BD',7,10);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2509,'BD',12,15);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2503,'BD',6,10);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2406,'RO',13,15);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2404,'RO',17,19);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2401,'RO',8,13);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2402,'RO',10,0);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2326,'RO',13,14);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2320,'RO',12,13);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2318,'RO',16,17);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2317,'RO',14,13);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2301,'RO',11,13);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2523,'RO',15,16);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2516,'RO',12,12);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2512,'RO',7,11);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2509,'RO',11,15);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2503,'RO',8,10);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2101,'ACSI',10,12);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2101,'PRL',4,16);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2102,'ACSI',13,6);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2102,'PRL',12,3);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2103,'ACSI',14,10);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2103,'PRL',12,9);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2104,'ACSI',10,10);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2104,'PRL',9,15);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2105,'ACSI',13,null);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2105,'PRL',10,13);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2113,'ACSI',9,8);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2113,'PRL',11,12);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2121,'ACSI',7,18);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2121,'PRL',9,16);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2124,'ACSI',15,14);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2124,'PRL',8,15);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2125,'ACSI',10,10);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2422,'ACSI',10,19);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2422,'PRL',10,12);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2422,'SYS',6,10);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2422,'RO',14,17);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2422,'CPTA',12,13);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2422,'ADA',8,10);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2422,'MKTG',13,15);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2316,'ACSI',16,8);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2316,'PRL',12,10);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2316,'SYS',8,14);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2422,'ANGL2',null,10);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2422,'BD',null,13);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2201,'ACSI',10,12);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2202,'ACSI',9,10);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2207,'ACSI',13,12);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2209,'ACSI',6,null);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2201,'BD',15,12);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2202,'BD',17,null);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2207,'BD',13,12);
Insert into NOTATION (NUM_ET,CODE,MOY_CC,MOY_TEST) values (2209,'BD',6,null);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--    END DATA FOR TABLE NOTATION
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--    DATA FOR TABLE PROF
--    FILTER = none used
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  PROMPT Inserting into PROF
Insert into PROF (NUM_PROF,NOM_PROF,PRENOM_PROF,ADR_PROF,CP_PROF,VILLE_PROF,MAT_SPEC) values (1,'BOITARD','DIDIER',null,null,'AIX-EN-PROVENCE','ACSI');
Insert into PROF (NUM_PROF,NOM_PROF,PRENOM_PROF,ADR_PROF,CP_PROF,VILLE_PROF,MAT_SPEC) values (2,'FAURE','BERNARD',null,null,'AIX-EN-PROVENCE','ACSI');
Insert into PROF (NUM_PROF,NOM_PROF,PRENOM_PROF,ADR_PROF,CP_PROF,VILLE_PROF,MAT_SPEC) values (3,'CICCHETTI','ROSINE',null,null,'AIX-EN-PROVENCE','BD');
Insert into PROF (NUM_PROF,NOM_PROF,PRENOM_PROF,ADR_PROF,CP_PROF,VILLE_PROF,MAT_SPEC) values (4,'FENEUILLE','DANIEL',null,null,'AIX-EN-PROVENCE','ADA');
Insert into PROF (NUM_PROF,NOM_PROF,PRENOM_PROF,ADR_PROF,CP_PROF,VILLE_PROF,MAT_SPEC) values (5,'LAPORTE','MARC',null,null,'AIX-EN-PROVENCE','C++');
Insert into PROF (NUM_PROF,NOM_PROF,PRENOM_PROF,ADR_PROF,CP_PROF,VILLE_PROF,MAT_SPEC) values (6,'AVIGNON','THIERRY',null,null,'AIX-EN-PROVENCE','ADA');
Insert into PROF (NUM_PROF,NOM_PROF,PRENOM_PROF,ADR_PROF,CP_PROF,VILLE_PROF,MAT_SPEC) values (7,'MATHIEU','DIDIER',null,null,'MARSEILLE','C++');
Insert into PROF (NUM_PROF,NOM_PROF,PRENOM_PROF,ADR_PROF,CP_PROF,VILLE_PROF,MAT_SPEC) values (8,'BETARI','KADER',null,null,'MARSEILLE','ADA');
Insert into PROF (NUM_PROF,NOM_PROF,PRENOM_PROF,ADR_PROF,CP_PROF,VILLE_PROF,MAT_SPEC) values (9,'PAPINI','ODILE',null,null,'MARSEILLE',null);
Insert into PROF (NUM_PROF,NOM_PROF,PRENOM_PROF,ADR_PROF,CP_PROF,VILLE_PROF,MAT_SPEC) values (10,'MALPAS','MYLENE',null,null,null,null);
Insert into PROF (NUM_PROF,NOM_PROF,PRENOM_PROF,ADR_PROF,CP_PROF,VILLE_PROF,MAT_SPEC) values (11,'GIOVAMPAOLI','JOSETTE',null,null,null,'ANGL2');
Insert into PROF (NUM_PROF,NOM_PROF,PRENOM_PROF,ADR_PROF,CP_PROF,VILLE_PROF,MAT_SPEC) values (12,'CACCHIA','MARIE-CLAUDE',null,null,null,'EGO');
Insert into PROF (NUM_PROF,NOM_PROF,PRENOM_PROF,ADR_PROF,CP_PROF,VILLE_PROF,MAT_SPEC) values (13,'LAKHAL','LOTFI',null,null,'AIX-EN-PROVENCE','BD');
Insert into PROF (NUM_PROF,NOM_PROF,PRENOM_PROF,ADR_PROF,CP_PROF,VILLE_PROF,MAT_SPEC) values (14,'PAIN-BARRE','CYRIL',null,null,'MARSEILLE','RES');
Insert into PROF (NUM_PROF,NOM_PROF,PRENOM_PROF,ADR_PROF,CP_PROF,VILLE_PROF,MAT_SPEC) values (15,'DRAGUT','ANDREEA',null,null,'AIX-EN-PROVENCE','SYS');
Insert into PROF (NUM_PROF,NOM_PROF,PRENOM_PROF,ADR_PROF,CP_PROF,VILLE_PROF,MAT_SPEC) values (16,'BONHOMME','CHRISTIAN',null,null,'MARSEILLE','BD');
Insert into PROF (NUM_PROF,NOM_PROF,PRENOM_PROF,ADR_PROF,CP_PROF,VILLE_PROF,MAT_SPEC) values (17,'SUN','PIERRE',null,null,'MARSEILLE','ACSI');

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--    END DATA FOR TABLE PROF
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--    DATA FOR TABLE ETUDIANT
--    FILTER = none used
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  PROMPT Inserting into ETUDIANT
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2101,'ALARCON','LAURENT',null,null,2,1);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2102,'ARNAUD','EMMANUEL',null,'AIX-EN-PROVENCE',2,1);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2103,'BALESTRIERI','KARINE',null,'MARIGNANE',2,1);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2104,'BERENGUIER','BERNARD',null,'AIX-EN-PROVENCE',2,1);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2105,'BOURMAD','MEHDI',null,'AIX-EN-PROVENCE',2,1);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2113,'GALINIER','BENOIT',null,'AIX-EN-PROVENCE',2,1);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2121,'RIBES','MARIE-LAURENCE',null,'AIX-EN-PROVENCE',2,1);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2124,'TRAN','TRI',null,'MARTIGUES',2,1);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2125,'VERGES','LAURENT',null,'MARSEILLE',2,1);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2114,'GASSE','DIDIER',null,'MARSEILLE',2,1);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2201,'ALVES','EMMANUEL',null,'MARSEILLE',2,2);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2202,'ARCHAMBAULD','JULIEN',null,'MARSEILLE',2,2);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2207,'CADET','CELINE',null,'MARSEILLE',2,2);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2209,'CHADEAU','CEDRIC',null,'MARSEILLE',2,2);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2211,'COSTE','THOMAS',null,'MARSEILLE',2,2);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2212,'DEFOSSE','JEREMY',null,'MARSEILLE',2,2);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2217,'JEGO','NICOLAS',null,'MARSEILLE',2,2);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2220,'MICHAUD','OLIVIER',null,'ISTRES',2,2);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2222,'NEVEU','PASCAL',null,'AIX-EN-PROVENCE',2,2);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2224,'REY','CATHERINE',null,'AIX-EN-PROVENCE',2,2);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2226,'VIO','BERTRAND',null,'AIX-EN-PROVENCE',2,2);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2301,'ANDRE','NATHALIE',null,'MARSEILLE',2,3);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2302,'ATLANI','JEROME',null,'MARSEILLE',2,3);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2304,'BASSET','OLIVIER',null,'MARSEILLE',2,3);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2306,'BOREL','BERNARD',null,'MARSEILLE',2,3);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2317,'LYON','PHILIPPE',null,'MARSEILLE',2,3);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2318,'MAI','CHRISTINE',null,'GAP',2,3);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2316,'LEVY','SANDRINE',null,'AIX-EN-PROVENCE',2,3);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2320,'NELLI','ANNICK',null,'AIX-EN-PROVENCE',2,3);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2326,'WELKER','THIERRY',null,'AIX-EN-PROVENCE',2,3);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2401,'ARTAUD','SABINE',null,'MARSEILLE',2,4);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2402,'AUBERT','MICHEL',null,'MARSEILLE',2,4);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2404,'BOEUF','FREDERIC',null,'MARSEILLE',2,4);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2406,'CROTTI','MURIEL',null,'MARSEILLE',2,4);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2412,'LANDAIS','SANDRA',null,'MARSEILLE',2,4);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2421,'PONZIO','ANNE',null,'MARSEILLE',2,4);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2422,'ROCCHI','STEPHANE',null,'AIX-EN-PROVENCE',2,4);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2423,'SEU','SEBASTIEN',null,'AIX-EN-PROVENCE',2,4);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2415,'MESSINA','DIDIER',null,'AIX-EN-PROVENCE',2,4);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2501,'APPRIOU','GUERLAIN',null,'AIX-EN-PROVENCE',2,5);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2503,'BLANC','DOMINIQUE',null,'AIX-EN-PROVENCE',2,5);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2509,'DONNAY','SEVERINE',null,'AIX-EN-PROVENCE',2,5);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2512,'GARRO','PATRICK',null,'AIX-EN-PROVENCE',2,5);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2516,'LAMY','DAVID',null,'AIX-EN-PROVENCE',2,5);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (2523,'PINELLI','SERGE',null,null,2,5);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (1101,'ALLIONE','MATHIEU',null,null,1,1);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (1102,'ANDRE','JULIE',null,null,1,1);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (1103,'BEAUJEAN','ADAM',null,null,1,1);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (1104,'BELLE','FLORENT',null,null,1,1);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (1105,'BERNO','CHARLES',null,null,1,1);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (1106,'BOVEE','CHARLES',null,null,1,1);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (1107,'BRYIS','JONATHAN',null,null,1,1);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (1108,'CHIABAUT','DIMITRI',null,null,1,1);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (1109,'COPPARD','REMI',null,null,1,1);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (1110,'DEFOSSEZ','GAEL',null,null,1,1);
Insert into ETUDIANT (NUM_ET,NOM_ET,PRENOM_ET,CP_ET,VILLE_ET,ANNEE,GROUPE) values (1111,'DUMAS','BENJAMIN',null,null,1,1);

