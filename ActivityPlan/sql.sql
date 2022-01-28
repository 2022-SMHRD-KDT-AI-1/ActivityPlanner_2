--DROP TABLE tbl_acting;

-- 회원정보
CREATE TABLE tbl_user
(
    user_id           VARCHAR2(20)    NOT NULL, 
    user_pw           VARCHAR2(20)    NOT NULL, 
    user_nick         VARCHAR2(20)    NOT NULL, 
    user_tel          VARCHAR2(20)    NOT NULL, 
    user_gender       VARCHAR2(1)     NOT NULL, 
    user_birthdate    DATE            NOT NULL, 
    user_name         VARCHAR2(20)    NOT NULL, 
    user_major        VARCHAR2(20)    NOT NULL, 
    user_joindate     DATE            NOT NULL, 
    admin_yn          VARCHAR2(1)     NOT NULL, 
     PRIMARY KEY (user_id)
)

-- 회원정보테이블에 대한 코멘트 
COMMENT ON TABLE tbl_user IS '회원 정보 테이블'
COMMENT ON COLUMN tbl_user.user_id IS '회원 아이디';
COMMENT ON COLUMN tbl_user.user_pw IS '회원 비밀번호';
COMMENT ON COLUMN tbl_user.user_nick IS '회원 닉네임';
COMMENT ON COLUMN tbl_user.user_tel IS '회원 전화번호';
COMMENT ON COLUMN tbl_user.user_gender IS '회원 성별';
COMMENT ON COLUMN tbl_user.user_birthdate IS '회원 생년월일';
COMMENT ON COLUMN tbl_user.user_name IS '회원 이름';
COMMENT ON COLUMN tbl_user.user_major IS '회원 전공';
COMMENT ON COLUMN tbl_user.user_joindate IS '회원 가입일자';
COMMENT ON COLUMN tbl_user.admin_yn IS '관리자 여부';

-- 대외활동 정보
CREATE TABLE tbl_acting(
    act_seq         NUMBER(15, 0)    NOT NULL, 
    act_type        VARCHAR2(12)     NOT NULL, 
    act_intro       CLOB           ,
    act_name        VARCHAR2(170)    NOT NULL, 
    act_sdate       DATE             , 
    act_edate       DATE             , 
    act_center      VARCHAR2(230)    NOT NULL, 
    act_benefits   VARCHAR2(550)    ,
    act_money       VARCHAR2(30)     , 
    act_category    VARCHAR2(200)    NOT NULL, 
    act_homepage    VARCHAR2(250)    , 
    act_poster      VARCHAR2(200)    NOT NULL, 
    PRIMARY KEY (act_seq)
)

-- tbl_acting | comment
COMMENT ON TABLE tbl_acting IS '대회 활동 테이블';
COMMENT ON COLUMN tbl_acting.act_seq IS '활동 순번';
COMMENT ON COLUMN tbl_acting.act_type IS '활동 타입';
COMMENT ON COLUMN tbl_acting.act_name IS '활동 명';
COMMENT ON COLUMN tbl_acting.act_sdate IS '활동 시작날짜';
COMMENT ON COLUMN tbl_acting.act_edate IS '활동 종료날짜';
COMMENT ON COLUMN tbl_acting.act_intro IS '활동 상세내용';
COMMENT ON COLUMN tbl_acting.act_benefits IS '활동 혜택';
COMMENT ON COLUMN tbl_acting.act_center IS '활동 주최기관';
COMMENT ON COLUMN tbl_acting.act_money IS '활동 최대상금';
COMMENT ON COLUMN tbl_acting.act_category IS '활동 분야';
COMMENT ON COLUMN tbl_acting.act_homepage IS '활동 홈페이지';
COMMENT ON COLUMN tbl_acting.act_poster IS '활동 포스터이미지';

-- DROP SEQUENCE tbl_acting_SEQ

-- seq 생성
CREATE SEQUENCE tbl_acting_SEQ
START WITH 1
INCREMENT BY 1;

insert into tbl_user values('admin','123','관리자','01000000000','M','1900-01-01','A','0',sysdate,'Y');

select * from tbl_user;


CREATE TABLE tbl_my_acting
(
    myact_seq    NUMBER(15, 0)    NOT NULL, 
    act_seq      NUMBER(15, 0)    NOT NULL, 
    user_id      VARCHAR2(20)     NOT NULL, 
    act_yn       VARCHAR2(1)      NOT NULL, 
     PRIMARY KEY (myact_seq)
)

CREATE SEQUENCE tbl_my_acting_SEQ
START WITH 1
INCREMENT BY 1;