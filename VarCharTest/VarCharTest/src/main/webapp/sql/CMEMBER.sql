CREATE TABLE CMEMBER(
   MID VARCHAR(20) PRIMARY KEY ,
   MPW VARCHAR(20) NOT NULL,
   MNAME VARCHAR(10) NOT NULL,
   MNICKNAME VARCHAR(20) NOT NULL,
   MADD VARCHAR(200) NOT NULL,
   MPHONE VARCHAR(20) NOT NULL,
   MEMAIL VARCHAR(100) NOT NULL,
   MROLE VARCHAR(20) NOT NULL
);

INSERT INTO CMEMBER VALUES('admin','aaaa1234','김수연','왕짱맨','서울시','010-111-112','rlatndus2005@naver.com','admin');
INSERT INTO CMEMBER VALUES('park1234','aaaa1234','김종현','왕짱맨','서울시','010-111-112','rlatndus2005@naver.com','일반회원');
INSERT INTO CMEMBER VALUES('park1','aaaa1234','김종현','왕짱맨','서울시','010-111-112','rlatndus2005@naver.com','일반회원');
INSERT INTO CMEMBER VALUES('park2','aaaa1234','김종현','왕짱맨','서울시','010-111-112','rlatndus2005@naver.com','일반회원');
INSERT INTO CMEMBER VALUES('park3','aaaa1234','김종현','왕짱맨','서울시','010-111-112','rlatndus2005@naver.com','일반회원');
INSERT INTO CMEMBER VALUES('park4','aaaa1234','김종현','왕짱맨','서울시','010-111-112','rlatndus2005@naver.com','일반회원');
INSERT INTO CMEMBER VALUES('park5','aaaa1234','김종현','왕짱맨','서울시','010-111-112','rlatndus2005@naver.com','일반회원');
INSERT INTO CMEMBER VALUES('park6','aaaa1234','김종현','왕짱맨','서울시','010-111-112','rlatndus2005@naver.com','일반회원');
INSERT INTO CMEMBER VALUES('park7','aaaa1234','김종현','왕짱맨','서울시','010-111-112','rlatndus2005@naver.com','일반회원');
INSERT INTO CMEMBER VALUES('park8','aaaa1234','김종현','왕짱맨','서울시','010-111-112','rlatndus2005@naver.com','일반회원');
INSERT INTO CMEMBER VALUES('park9','aaaa1234','김종현','왕짱맨','서울시','010-111-112','rlatndus2005@naver.com','일반회원');
INSERT INTO CMEMBER VALUES('park10','aaaa1234','김종현','왕짱맨','서울시','010-111-112','rlatndus2005@naver.com','일반회원');
INSERT INTO CMEMBER VALUES('park11','aaaa1234','김종현','왕짱맨','서울시','010-111-112','rlatndus2005@naver.com','일반회원');
DROP TABLE CMEMBER;
DROP TABLE CAR;
DROP TABLE CBOARD;
DROP TABLE CREPLY;


SELECT * FROM CMEMBER;
SELECT * FROM USER_TABLES;