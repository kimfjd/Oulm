-- 1. 회원(MEMBER) 테이블
CREATE TABLE INFO(
	USER_MAIL VARCHAR2(255) PRIMARY KEY NOT NULL, -- USER 아이디
	PASSWORD VARCHAR2(255) NOT NULL, -- PASSWORD
	NAME VARCHAR2(255) NOT NULL,-- 이름
	FIRST_ID_CARDNUM NUMBER(6) NOT NULL, -- 주민번호 앞자리
	PHONE_NUMBER NUMBER(11) NOT NULL, -- 전화번호(-빼고)
	ADDRESS VARCHAR2(255), -- 주소
	GENDER NUMBER(2) NOT NULL, -- 성별
	NICKNAME VARCHAR2(255) NOT NULL -- 닉네임
	);

-- 2. 마이페이지(MY PAGE) 테이블
CREATE TABLE MY_PAGE(
	USER_MAIL VARCHAR2(255) UNIQUE NOT NULL, -- 유저 아이디
	LOVE_ROOM NUMBER(2), -- 찜한 데이터 유무
	profile_photo VARCHAR2(255) -- 프로필 사진URL
	);

-- 3. 방 등록(GRADE) 테이블 
CREATE TABLE RoomInfo(
    house_num NUMBER(10) PRIMARY KEY NOT NULL, -- 매물번호(시퀀스로 자동생성)
    user_id VARCHAR2(255) NOT NULL, -- 등록자 아이디
    photo_url VARCHAR2(255), -- 방 사진URL
    trade_method VARCHAR(50) NOT NULL, -- 거래 방식
    deposit NUMBER(15), -- 보증금(만원) : 월세만 해당.
    monthly NUMBER(15), -- 월세(만원) : 월세만 해당.
    jeonsegeum NUMBER(15), -- 전세금(만원) : 전세만 해당
    Sale_price NUMBER(15), -- 매매가(만원) : 매매만 해당
    area VARCHAR2(255) NOT NULL, -- 평수 : ~평
    accept_date DATE, -- 사용 승인일
    address VARCHAR2(255) NOT NULL, -- 매물주소
    floor1 VARCHAR2(255) NOT NULL, -- 층수
    phonenumber  NUMBER(15) NOT NULL, -- 집주인 전화번호
    regit_date DATE, -- 매물 등록일
    remark VARCHAR2(255) -- 비고(옵션)
);

-- 4. 찜한 방 목록 테이블 생성
create table love_room(
   user_id varchar(255)  not NULL, -- 유저아이디
   Shouse_num NUMBER(10) references RoomInfo(house_num) NOT NULL -- 매물번호(방 정보 테이블에서 시퀀스로 입력)
);

-- 5. 관리자 계정(ADMIN INFO)
CREATE TABLE ADMIN_INFO(
	ADM_ID VARCHAR(255) NOT NULL, -- 관리자 아이디
	ADM_PW VARCHAR(255) NOT NULL -- 관리자 PASSWORD
	);

-- SEQ_ROOM 시퀀스 테이블 생성
CREATE SEQUENCE SEQ_ROOM
START WITH 1
INCREMENT BY 1
MAXVALUE 10000 -- 10000개 매물까지
MINVALUE 1
NOCYCLE;
--======================================================= 데이터 입력 ===============================================================




--1. 회원 테이블 데이터
INSERT ALL 
INTO INFO VALUES ('dyddnr33@naver.com', 'asdf', '서용욱', 960125, 01098111691, '서울시 관악구', 1, '막강한바지')
INTO INFO VALUES ('wnsdud12@daum.com', '123456', '김준영', 940321, 01043453454, '서울시 강남구', 2, '불법유턴')
INTO INFO VALUES ('kimfjd@naver.com', '1234','김동환',991130,01022645648,'경기도 이천시',1,'집가자')
INTO INFO VALUES ('khk28@naver.com', '1325','김현근',970923,01042675900,'경기도 남양주시',1,'집으로')
INTO INFO VALUES ('user1@example.com', 'password1', '홍길동', 980101, 01012345678, '서울시 강남구', 1, '의적')
INTO INFO VALUES ('user2@example.com', 'password2', '이순신', 970202, 01023456789, '서울시 종로구', 2, '충무공')
INTO INFO VALUES ('user3@example.com', 'password3', '김유신', 990303, 01034567890, '경기도 수원시', 1, '산책하기')
INTO INFO VALUES ('user4@example.com', 'password4', '신사임당', 960404, 01045678901, '인천시 남구', 2, '5만원')
INTO INFO VALUES ('user5@example.com', 'password5', '강감찬', 950505, 01056789012, '대구시 중구', 1, '운동하기')
INTO INFO VALUES ('user6@example.com', 'password6', '을지문덕', 940606, 01067890123, '부산시 해운대구', 2, '살수대첩')
SELECT * FROM DUAL;
INSERT ALL
INTO INFO VALUES ('user7@example.com','password7','홍길동',980101,01012345678,'서울시 강남구',2,'의적')
INTO INFO VALUES ('user8@example.com','password8','김유신',990303,01034567890,'서울시 강남구',2,'산책하기')
INTO INFO VALUES ('user9@example.com','password9','홍길동',980101,01012345678,'서울시 강남구',1,'의적')
INTO INFO VALUES ('user10@example.com','password10','김유신',990303,01034567890,'서울시 강남구',1,'산책하기')
INTO INFO VALUES ('user11@example.com','password11','신사임당',960404,01045678901,'서울시 강남구',2,'5만원')
INTO INFO VALUES ('user12@example.com','password12','김유신',990303,01034567890,'서울시 강남구',2,'산책하기')
INTO INFO VALUES ('user13@example.com','password13','을지문덕',940606,01067890123,'서울시 강남구',1,'살수대첩')
INTO INFO VALUES ('user14@example.com','password14','홍길동',980101,01012345678,'서울시 강남구',2,'의적')
INTO INFO VALUES ('user15@example.com','password15','김유신',990303,01034567890,'서울시 강남구',2,'산책하기')
INTO INFO VALUES ('user16@example.com','password16','홍길동',980101,01012345678,'서울시 강남구',2,'의적')
INTO INFO VALUES ('user17@example.com','password17','이순신',970202,01023456789,'서울시 강남구',2,'충무공')
INTO INFO VALUES ('user18@example.com','password18','김유신',990303,01034567890,'서울시 강남구',2,'산책하기')
INTO INFO VALUES ('user19@example.com','password19','을지문덕',940606,01067890123,'서울시 강남구',1,'살수대첩')
INTO INFO VALUES ('user20@example.com','password20','이순신',970202,01023456789,'서울시 강남구',2,'충무공')
INTO INFO VALUES ('user21@example.com','password21','강감찬',950505,01056789012,'서울시 강남구',2,'운동하기')
INTO INFO VALUES ('user22@example.com','password22','신사임당',960404,01045678901,'서울시 강남구',1,'5만원')
INTO INFO VALUES ('user23@example.com','password23','홍길동',980101,01012345678,'서울시 강남구',2,'의적')
INTO INFO VALUES ('user24@example.com','password24','을지문덕',940606,01067890123,'서울시 강남구',2,'살수대첩')
INTO INFO VALUES ('user25@example.com','password25','을지문덕',940606,01067890123,'서울시 종로구',2,'살수대첩')
INTO INFO VALUES ('user26@example.com','password26','홍길동',980101,01012345678,'서울시 종로구',1,'의적')
INTO INFO VALUES ('user27@example.com','password27','신사임당',960404,01045678901,'서울시 종로구',1,'5만원')
INTO INFO VALUES ('user28@example.com','password28','김유신',990303,01034567890,'서울시 종로구',1,'산책하기')
INTO INFO VALUES ('user29@example.com','password29','강감찬',950505,01056789012,'서울시 종로구',2,'운동하기')
INTO INFO VALUES ('user30@example.com','password30','이순신',970202,01023456789,'서울시 종로구',2,'충무공')
INTO INFO VALUES ('user31@example.com','password31','홍길동',980101,01012345678,'서울시 종로구',1,'의적')
INTO INFO VALUES ('user32@example.com','password32','을지문덕',940606,01067890123,'서울시 종로구',1,'살수대첩')
INTO INFO VALUES ('user33@example.com','password33','을지문덕',940606,01067890123,'서울시 종로구',2,'살수대첩')
INTO INFO VALUES ('user34@example.com','password34','이순신',970202,01023456789,'서울시 종로구',1,'충무공')
INTO INFO VALUES ('user35@example.com','password35','을지문덕',940606,01067890123,'서울시 종로구',1,'살수대첩')
INTO INFO VALUES ('user36@example.com','password36','홍길동',980101,01012345678,'서울시 종로구',1,'의적')
INTO INFO VALUES ('user37@example.com','password37','강감찬',950505,01056789012,'서울시 종로구',2,'운동하기')
INTO INFO VALUES ('user38@example.com','password38','신사임당',960404,01045678901,'서울시 종로구',1,'5만원')
INTO INFO VALUES ('user39@example.com','password39','을지문덕',940606,01067890123,'서울시 종로구',2,'살수대첩')
INTO INFO VALUES ('user40@example.com','password40','이순신',970202,01023456789,'경기도 수원시',1,'충무공')
INTO INFO VALUES ('user41@example.com','password41','을지문덕',940606,01067890123,'경기도 수원시',1,'살수대첩')
INTO INFO VALUES ('user42@example.com','password42','홍길동',980101,01012345678,'경기도 수원시',1,'의적')
INTO INFO VALUES ('user43@example.com','password43','이순신',970202,01023456789,'경기도 수원시',2,'충무공')
INTO INFO VALUES ('user44@example.com','password44','신사임당',960404,01045678901,'경기도 수원시',1,'5만원')
INTO INFO VALUES ('user45@example.com','password45','강감찬',950505,01056789012,'경기도 수원시',1,'운동하기')
INTO INFO VALUES ('user46@example.com','password46','김유신',990303,01034567890,'경기도 수원시',1,'산책하기')
INTO INFO VALUES ('user47@example.com','password47','강감찬',950505,01056789012,'경기도 수원시',1,'운동하기')
INTO INFO VALUES ('user48@example.com','password48','강감찬',950505,01056789012,'인천시 남구',1,'운동하기')
INTO INFO VALUES ('user49@example.com','password49','강감찬',950505,01056789012,'인천시 남구',1,'운동하기')
INTO INFO VALUES ('user50@example.com','password50','신사임당',960404,01045678901,'인천시 남구',2,'5만원')
SELECT * FROM DUAL;

-- 2. 마이페이지 테이블 데이터(회원 테이블 데이터와 아이디 동일해야함.)
INSERT ALL
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user7@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user8@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user9@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user10@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user11@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user12@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user13@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user14@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user15@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user16@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user17@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user18@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user19@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user20@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user21@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user22@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user23@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user24@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user25@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user26@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user27@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user28@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user29@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user30@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user31@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user32@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user33@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user34@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user35@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user36@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user37@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user38@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user39@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user40@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user41@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user42@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user43@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user44@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user45@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user46@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user47@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user48@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user49@example.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user50@example.com', 1)
SELECT * FROM DUAL;
INSERT ALL 
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('dyddnr33@naver.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('wnsdud12@daum.com', 1) 
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('kimfjd@naver.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('khk28@naver.com', 1)
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user1@example.com', 1) 
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user2@example.com', 1) 
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user3@example.com', 0) 
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user4@example.com', 1) 
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user5@example.com', 1) 
INTO MY_PAGE(USER_MAIL, LOVE_ROOM) VALUES('user6@example.com', 1) 
SELECT * FROM DUAL;

--2. 시퀀스 데이터를 바로 넣기 위해 방 등록 페이지 데이터와 찜한방 테이블 데이터를 번갈아 가면서 입력(찜한방 테이블 데이터는 ROOMINFO의 시퀀스(매물번호)값과 MY_PAGE의 user_id가 연동되어있음.)
-- INSERT문과 DECLARE문이 서로 꼬이지 않게 하나씩 차례대로 실행 주의요망!!!!!!!
-- 첫번째 방 등록 데이터(house_num:매물번호에 시퀀스 데이터 입력)
INSERT INTO RoomInfo(house_num,user_id,photo_url,trade_method,deposit,monthly,jeonsegeum,Sale_price,area,accept_date,address,floor1,phonenumber,regit_date,remark) VALUES(SEQ_ROOM.NEXTVAL,'user1@example.com','URL1','월세',600,60,NULL,NULL,'13','2024-03-29','서울특별시 강남구',
'3층','01022221111','2024-03-29','냉장고, 세탁기');

-- 첫번째 방을 찜한 사용자1
DECLARE
  v_house_num NUMBER; -- v_house_num 데이터를 선언
BEGIN
  SELECT MAX(house_num) INTO v_house_num FROM RoomInfo; --시퀀스의 MAX 값을 뽑는 부분
  INSERT INTO love_room (user_id,Shouse_num) VALUES ('user3@example.com',v_house_num); -- 그 값을 love_room 테이블에 INSERT하는 부분
END;

-- 첫번째 방을 찜한 사용자2
DECLARE
  v_house_num NUMBER;
BEGIN
  SELECT MAX(house_num) INTO v_house_num FROM RoomInfo;
  INSERT INTO love_room (user_id,Shouse_num) VALUES ('user5@example.com',v_house_num);
END;

-- 두번째 방 등록 데이터
INSERT INTO RoomInfo(house_num,user_id,photo_url,trade_method,deposit,monthly,jeonsegeum,Sale_price,area,accept_date,address,floor1,phonenumber,regit_date,remark) VALUES(SEQ_ROOM.NEXTVAL,'user2@example.com','URL2','월세',1800,50,NULL,NULL,'14','2023-12-29','서울특별시 성북구',
'2층','01012345678','2023-12-29','가스레인지');

-- 두번째 방을 찜한 사용자1
DECLARE
  v_house_num NUMBER;
BEGIN
  SELECT MAX(house_num) INTO v_house_num FROM RoomInfo;
  INSERT INTO love_room (user_id,Shouse_num) VALUES ('user5@example.com',v_house_num);
END;

-- 세번째 방 등록 데이터
INSERT INTO RoomInfo(house_num,user_id,photo_url,trade_method,deposit,monthly,jeonsegeum,Sale_price,area,accept_date,address,floor1,phonenumber,regit_date,remark) VALUES(SEQ_ROOM.NEXTVAL,'user3@example.com','URL3','전세',NULL,NULL,18000,NULL,'16','2024-02-14','서울특별시 성동구',
'13층','01032165489','2024-02-14', null);

-- 세번째 방을 찜한 사용자1
DECLARE
  v_house_num NUMBER;
BEGIN
  SELECT MAX(house_num) INTO v_house_num FROM RoomInfo;
  INSERT INTO love_room (user_id,Shouse_num) VALUES ('user2@example.com',v_house_num);
END;
-- 세번째 방을 찜한 사용자2
DECLARE
  v_house_num NUMBER;
BEGIN
  SELECT MAX(house_num) INTO v_house_num FROM RoomInfo;
  INSERT INTO love_room (user_id,Shouse_num) VALUES ('user1@example.com',v_house_num);
END;


-- 네번째 방 등록 데이터
INSERT INTO RoomInfo(house_num,user_id,photo_url,trade_method,deposit,monthly,jeonsegeum,Sale_price,area,accept_date,address,floor1,phonenumber,regit_date,remark) VALUES(SEQ_ROOM.NEXTVAL,'user3@example.com','URL4','월세',500,40,NULL,NULL,'14','2024-01-06','서울특별시 강동구',
'3층','01022234231','2024-01-06','냉장고, 세탁기, 가스레인지');

-- 네번째 방을 찜한 사용자1
DECLARE
  v_house_num NUMBER;
BEGIN
  SELECT MAX(house_num) INTO v_house_num FROM RoomInfo;
  INSERT INTO love_room (user_id,Shouse_num) VALUES ('user2@example.com',v_house_num);
END;
-- 네번째 방을 찜한 사용자2
DECLARE
  v_house_num NUMBER;
BEGIN
  SELECT MAX(house_num) INTO v_house_num FROM RoomInfo;
  INSERT INTO love_room (user_id,Shouse_num) VALUES ('user5@example.com',v_house_num);
END;
-- 네번째 방을 찜한 사용자3
DECLARE
  v_house_num NUMBER;
BEGIN
  SELECT MAX(house_num) INTO v_house_num FROM RoomInfo;
  INSERT INTO love_room (user_id,Shouse_num) VALUES ('user4@example.com',v_house_num);
END;

-- 다섯번째 방 등록 데이터
INSERT INTO RoomInfo(house_num,user_id,photo_url,trade_method,deposit,monthly,jeonsegeum,Sale_price,area,accept_date,address,floor1,phonenumber,regit_date,remark) VALUES(SEQ_ROOM.NEXTVAL,'user5@example.com','URL5','월세',600,65,NULL,NULL,'14','2024-03-19','서울특별시 강서구',
'반지층','01012535345','2024-03-19', null);

-- 다섯번째 방을 찜한 사용자1
DECLARE
  v_house_num NUMBER;
BEGIN
  SELECT MAX(house_num) INTO v_house_num FROM RoomInfo;
  INSERT INTO love_room (user_id,Shouse_num) VALUES ('user7@example.com',v_house_num);
END;
-- 여섯번째 방 등록 데이터
INSERT INTO RoomInfo(house_num,user_id,photo_url,trade_method,deposit,monthly,jeonsegeum,Sale_price,area,accept_date,address,floor1,phonenumber,regit_date,remark) VALUES(SEQ_ROOM.NEXTVAL,'user6@example.com','URL6','월세',1100,40,NULL,NULL,'12','2024-02-20','서울특별시 강남구',
'5층','01094626485','2024-02-20','냉장고, 가스레인지');

-- 여섯번째 방을 찜한 사용자1
DECLARE
  v_house_num NUMBER;
BEGIN
  SELECT MAX(house_num) INTO v_house_num FROM RoomInfo;
  INSERT INTO love_room (user_id,Shouse_num) VALUES ('user3@example.com',v_house_num);
END;
-- 여섯번째 방을 찜한 사용자2
DECLARE
  v_house_num NUMBER;
BEGIN
  SELECT MAX(house_num) INTO v_house_num FROM RoomInfo;
  INSERT INTO love_room (user_id,Shouse_num) VALUES ('user2@example.com',v_house_num);
END;

-- 일곱번째 방 등록 데이터
INSERT INTO RoomInfo(house_num,user_id,photo_url,trade_method,deposit,monthly,jeonsegeum,Sale_price,area,accept_date,address,floor1,phonenumber,regit_date,remark) VALUES(SEQ_ROOM.NEXTVAL,'user4@example.com','URL7','월세',600,55,NULL,NULL,'13','2024-03-11','서울특별시 강남구',
'3층','01034517864','2024-03-11', null);

-- 일곱번째 방을 찜한 사용자1
DECLARE
  v_house_num NUMBER;
BEGIN
  SELECT MAX(house_num) INTO v_house_num FROM RoomInfo;
  INSERT INTO love_room (user_id,Shouse_num) VALUES ('user6@example.com',v_house_num);
END;
-- 일곱번째 방을 찜한 사용자2
DECLARE
  v_house_num NUMBER;
BEGIN
  SELECT MAX(house_num) INTO v_house_num FROM RoomInfo;
  INSERT INTO love_room (user_id,Shouse_num) VALUES ('user3@example.com',v_house_num);
END;
-- 일곱번째 방을 찜한 사용자3
DECLARE
  v_house_num NUMBER;
BEGIN
  SELECT MAX(house_num) INTO v_house_num FROM RoomInfo;
  INSERT INTO love_room (user_id,Shouse_num) VALUES ('user2@example.com',v_house_num);
END;
-- 일곱번째 방을 찜한 사용자4
DECLARE
  v_house_num NUMBER;
BEGIN
  SELECT MAX(house_num) INTO v_house_num FROM RoomInfo;
  INSERT INTO love_room (user_id,Shouse_num) VALUES ('user1@example.com',v_house_num);
END;

-- 여덟번째 방 등록 데이터
INSERT INTO RoomInfo(house_num,user_id,photo_url,trade_method,deposit,monthly,jeonsegeum,Sale_price,area,accept_date,address,floor1,phonenumber,regit_date,remark) VALUES(SEQ_ROOM.NEXTVAL,'user6@example.com','URL8','월세',900,70,NULL,NULL,'14','2024-01-29','서울특별시 성북구',
'루프탑','01046184634','2024-01-29','냉장고, 세탁기');

-- 여덟번째 방을 찜한 사용자1
DECLARE
  v_house_num NUMBER;
BEGIN
  SELECT MAX(house_num) INTO v_house_num FROM RoomInfo;
  INSERT INTO love_room (user_id,Shouse_num) VALUES ('user1@example.com',v_house_num);
END;
-- 여덟번째 방을 찜한 사용자2
DECLARE
  v_house_num NUMBER;
BEGIN
  SELECT MAX(house_num) INTO v_house_num FROM RoomInfo;
  INSERT INTO love_room (user_id,Shouse_num) VALUES ('user4@example.com',v_house_num);
END;

-- 아홉번째 방 등록 데이터
INSERT INTO RoomInfo(house_num,user_id,photo_url,trade_method,deposit,monthly,jeonsegeum,Sale_price,area,accept_date,address,floor1,phonenumber,regit_date,remark) VALUES(SEQ_ROOM.NEXTVAL,'user8@example.com','URL9','월세',1000,35,NULL,NULL,'16','2023-11-29','서울특별시 성동구',
'2층','01032415846','2023-11-29','풀옵션');

-- 아홉번째 방을 찜한 사용자1
DECLARE
  v_house_num NUMBER;
BEGIN
  SELECT MAX(house_num) INTO v_house_num FROM RoomInfo;
  INSERT INTO love_room (user_id,Shouse_num) VALUES ('user4@example.com',v_house_num);
END;
-- 아홉번째 방을 찜한 사용자2
DECLARE
  v_house_num NUMBER;
BEGIN
  SELECT MAX(house_num) INTO v_house_num FROM RoomInfo;
  INSERT INTO love_room (user_id,Shouse_num) VALUES ('user5@example.com',v_house_num);
END;
-- 아홉번째 방을 찜한 사용자3
DECLARE
  v_house_num NUMBER;
BEGIN
  SELECT MAX(house_num) INTO v_house_num FROM RoomInfo;
  INSERT INTO love_room (user_id,Shouse_num) VALUES ('user6@example.com',v_house_num);
END;

-- 열번째 방 등록 데이터
INSERT INTO RoomInfo(house_num,user_id,photo_url,trade_method,deposit,monthly,jeonsegeum,Sale_price,area,accept_date,address,floor1,phonenumber,regit_date,remark) VALUES(SEQ_ROOM.NEXTVAL,'user5@example.com','URL10','월세',800,85,NULL,NULL,'13','2024-03-08','서울특별시 강동구',
'3층','01076454564','2024-03-08','냉장고');

-- 열번째 방을 찜한 사용자1
DECLARE
  v_house_num NUMBER;
BEGIN
  SELECT MAX(house_num) INTO v_house_num FROM RoomInfo;
  INSERT INTO love_room (user_id,Shouse_num) VALUES ('user6@example.com',v_house_num);
END;

-- 열한번째 방 등록 데이터
INSERT INTO RoomInfo(house_num,user_id,photo_url,trade_method,deposit,monthly,jeonsegeum,Sale_price,area,accept_date,address,floor1,phonenumber,regit_date,remark) VALUES(SEQ_ROOM.NEXTVAL,'can3487@naver.com','URL10','월세',500,85,NULL,NULL,'13','2024-03-08','서울특별시 강동구',
'3층','01076454564','2024-03-08','냉장고');

-- 열한번째 방을 찜한 사용자1
DECLARE
  v_house_num NUMBER;
BEGIN
  SELECT MAX(house_num) INTO v_house_num FROM RoomInfo;
  INSERT INTO love_room (user_id,Shouse_num) VALUES ('dyddnr33@naver.com',v_house_num);
END;

-- 열두번째 방 등록 데이터
INSERT INTO RoomInfo(house_num,user_id,photo_url,trade_method,deposit,monthly,jeonsegeum,Sale_price,area,accept_date,address,floor1,phonenumber,regit_date,remark) VALUES(SEQ_ROOM.NEXTVAL,'can3487@naver.com','URL10','월세',400,85,NULL,NULL,'13','2024-03-08','서울특별시 강동구',
'3층','01076454564','2024-03-08','냉장고');

-- 열두번째 방을 찜한 사용자1
DECLARE
  v_house_num NUMBER;
BEGIN
  SELECT MAX(house_num) INTO v_house_num FROM RoomInfo;
  INSERT INTO love_room (user_id,Shouse_num) VALUES ('dyddnr33@naver.com',v_house_num);
END;

-- 열세번째 방 등록 데이터
INSERT INTO RoomInfo(house_num,user_id,photo_url,trade_method,deposit,monthly,jeonsegeum,Sale_price,area,accept_date,address,floor1,phonenumber,regit_date,remark) VALUES(SEQ_ROOM.NEXTVAL,'dyddnr33@naver.com','URL10','월세',300,85,NULL,NULL,'13','2024-03-08','서울특별시 강동구',
'3층','01076454564','2024-03-08','냉장고');

-- 열세번째 방을 찜한 사용자1
DECLARE
  v_house_num NUMBER;
BEGIN
  SELECT MAX(house_num) INTO v_house_num FROM RoomInfo;
  INSERT INTO love_room (user_id,Shouse_num) VALUES ('tpgh1554@naver.com',v_house_num);
END;

-- 열네번째 방 등록 데이터
INSERT INTO RoomInfo(house_num,user_id,photo_url,trade_method,deposit,monthly,jeonsegeum,Sale_price,area,accept_date,address,floor1,phonenumber,regit_date,remark) VALUES(SEQ_ROOM.NEXTVAL,'kimfid@naver.com','URL10','월세',700,85,NULL,NULL,'13','2024-03-08','서울특별시 강동구',
'3층','01076454564','2024-03-08','냉장고');

-- 열네번째 방을 찜한 사용자1
DECLARE
  v_house_num NUMBER;
BEGIN
  SELECT MAX(house_num) INTO v_house_num FROM RoomInfo;
  INSERT INTO love_room (user_id,Shouse_num) VALUES ('tpgh1554@naver.com',v_house_num);
END;

-- 열다섯번째 방 등록 데이터
INSERT INTO RoomInfo(house_num,user_id,photo_url,trade_method,deposit,monthly,jeonsegeum,Sale_price,area,accept_date,address,floor1,phonenumber,regit_date,remark) VALUES(SEQ_ROOM.NEXTVAL,'tpgh1554@naver.com','URL10','월세',500,85,NULL,NULL,'13','2024-03-08','서울특별시 강동구',
'3층','01076454564','2024-03-08','냉장고');

-- 열다섯번째 방을 찜한 사용자1
DECLARE
  v_house_num NUMBER;
BEGIN
  SELECT MAX(house_num) INTO v_house_num FROM RoomInfo;
  INSERT INTO love_room (user_id,Shouse_num) VALUES ('kimfid@naver.com',v_house_num);
END;


-- 4. 관리자 페이지 데이터
INSERT ALL
INTO ADMIN_INFO VALUES ('can3487@naver.com','admin3487')
INTO ADMIN_INFO VALUES ('dyddnr33@naver.com','admin1691')
INTO ADMIN_INFO VALUES ('kimfid@naver.com','admin4920')
INTO ADMIN_INFO VALUES ('tpgh1554@naver.com','admin5648')
SELECT * FROM DUAL;


-- DECLARE ~ END 한 묶음씩 삽입 할 것

--=============================================================================================================================================================

-- 테이블 보기
SELECT * FROM INFO;
SELECT * FROM RoomInfo;
SELECT * FROM love_room;
SELECT * FROM ADMIN_INFO;

-- 테이블 삭제
--DROP TABLE INFO;
--DROP TABLE RoomInfo;
--DROP TABLE MY_PAGE;
--DROP TABLE love_room;
--DROP TABLE ADMIN_INFO;
-- 시퀀스 삭제
--DROP SEQUENCE SEQ_ROOM;