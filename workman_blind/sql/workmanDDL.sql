-- 회원
DROP TABLE member cascade constraint;

-- 알바 리스트
DROP TABLE parttimelist cascade constraint;

-- 알바 평가 게시판
DROP TABLE parttimeeval cascade constraint;

-- 기업
DROP TABLE company cascade constraint;


CREATE TABLE company (
   company_name      VARCHAR2(20)    PRIMARY KEY,
   company_pw        VARCHAR2(20)    NOT NULL,   
   company_loc       VARCHAR2(50)    NOT NULL,
   company_num       VARCHAR2(30)    NOT NULL,
   category          VARCHAR2(40)    NOT NULL   
);



CREATE TABLE member (
       user_id    VARCHAR2(20)  PRIMARY KEY,
       user_pw    VARCHAR2(20) NOT NULL,
       user_name    VARCHAR2(20) NOT NULL,
       user_num    VARCHAR2(30) NOT NULL
);



CREATE TABLE parttimelist (
       list_num     	NUMBER(10)  PRIMARY KEY,
       company_name     VARCHAR2(20) NOT NULL,
       work_time     	VARCHAR2(20) NOT NULL,
       hourly_wage      NUMBER(10) NOT NULL,
       work_period    	VARCHAR2(20) NOT NULL,
       objective    	VARCHAR2(20) NOT NULL   
);


CREATE TABLE parttimeeval (
	   eval_num             NUMBER(10) PRIMARY KEY,
       user_id      		VARCHAR2(20) NOT NULL,
       company_name			 VARCHAR2(20) NOT NULL,
       pros_cons     		VARCHAR2(20) NOT NULL,
       wage_delay   		VARCHAR2(20) NOT NULL,
       environment          VARCHAR2(20) NOT NULL,
       incline        		VARCHAR2(20) NOT NULL,
       comment   			VARCHAR2(30)
);




ALTER TABLE parttimelist  ADD FOREIGN KEY (company_name) REFERENCES company (company_name);
ALTER TABLE parttimeeval ADD FOREIGN KEY (user_id)  REFERENCES member (user_id);
ALTER TABLE parttimeeval ADD FOREIGN KEY (company_name) REFERENCES company (company_name);
