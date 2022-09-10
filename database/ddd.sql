CREATE TABLE seller (
	sid number PRIMARY KEY,
	sname varchar2(100)
);

CREATE TABLE price (
	sid number REFERENCES seller(sid),
	guitarid varchar2(50) REFERENCES guitar(guitarid),
	price number,
	url varchar2(300),
	CONSTRAINT price_pk PRIMARY KEY (sid, guitarid)
);

CREATE TABLE review1 (
	userid varchar2(50) REFERENCES MEMBER(userid),
	receiptid NUMBER,
	guitarid varchar2(200) REFERENCES guitar(guitarid),
	stars NUMBER,
	usercomment varchar2(200),
	CONSTRAINT review_pk PRIMARY KEY (userid, receiptid, guitarid)
);


CREATE SEQUENCE seller_seq
START WITH 1;

CREATE SEQUENCE review_seq
START WITH 1;
SELECT * FROM guitar;
SELECT * FROM MEMBER;

INSERT INTO MEMBER values(2, 'user222@gmail.com', 'user222', 'pw222', '김철수', '짱구친구', '고급', 0);
INSERT INTO MEMBER values(3, 'user333@gmail.com', 'user333', 'qwer', '강철수', '강강', '중급', 0);
INSERT INTO MEMBER values(4, 'user444@gmail.com', 'user444', 'qwer', '한철수', '한한', '중급', 0);
INSERT INTO MEMBER values(5, 'user555@gmail.com', 'user555', 'qwer', '고철수', '고고', '중급', 0);
INSERT INTO MEMBER values(6, 'user666@gmail.com', 'user666', 'qwer', '이철수', '이이', '입문', 0);
INSERT INTO MEMBER values(7, 'user777@gmail.com', 'user777', 'qwer', '최철수', '최최', '입문', 0);

INSERT INTO review1 values(1, review_seq.nextval, '1', 4.5, null);
INSERT INTO review1 values(1, review_seq.nextval, '2', 4, null);
INSERT INTO review1 values(1, review_seq.nextval, '3', 5, null);
INSERT INTO review1 values(1, review_seq.nextval, '4', 5, null);
INSERT INTO review1 values(1, review_seq.nextval, '5', 3, null);
INSERT INTO review1 values(1, review_seq.nextval, '6', 5, null);
INSERT INTO review1 values(1, review_seq.nextval, '7', 5, null);
INSERT INTO review1 values(1, review_seq.nextval, '8', 5, null);
INSERT INTO review1 values(1, review_seq.nextval, '9', 5, null);
INSERT INTO review1 values(1, review_seq.nextval, '10', 4, null);
INSERT INTO review1 values(1, review_seq.nextval, '11', 4.5, null);
INSERT INTO review1 values(1, review_seq.nextval, '12', 4.5, null);
INSERT INTO review1 values(1, review_seq.nextval, '13', 5, null);
INSERT INTO review1 values(1, review_seq.nextval, '14', 5, null);
INSERT INTO review1 values(1, review_seq.nextval, '15', 5, null);
INSERT INTO review1 values(1, review_seq.nextval, '16', 4, null);
INSERT INTO review1 values(1, review_seq.nextval, '17', 4.5, null);
INSERT INTO review1 values(1, review_seq.nextval, '18', 4, null);
INSERT INTO review1 values(1, review_seq.nextval, '19', 4, null);
INSERT INTO review1 values(1, review_seq.nextval, '20', 3.5, null);

INSERT INTO review1 values(2, review_seq.nextval, '1', 5, null);
INSERT INTO review1 values(2, review_seq.nextval, '3', 4.5, null);
INSERT INTO review1 values(2, review_seq.nextval, '4', 5, null);
INSERT INTO review1 values(2, review_seq.nextval, '6', 4.5, null);
INSERT INTO review1 values(2, review_seq.nextval, '7', 5, null);
INSERT INTO review1 values(2, review_seq.nextval, '8', 4, null);
INSERT INTO review1 values(2, review_seq.nextval, '9', 5, null);
INSERT INTO review1 values(2, review_seq.nextval, '11', 4, null);
INSERT INTO review1 values(2, review_seq.nextval, '12', 5, null);
INSERT INTO review1 values(2, review_seq.nextval, '14', 4.5, null);
INSERT INTO review1 values(2, review_seq.nextval, '16', 4.5, null);
INSERT INTO review1 values(2, review_seq.nextval, '17', 4, null);
INSERT INTO review1 values(2, review_seq.nextval, '18', 3.5, null);
INSERT INTO review1 values(2, review_seq.nextval, '19', 3, null);

SELECT * FROM review1;
-------------------------------------------------------------------
INSERT INTO review1 values(3, review_seq.nextval, '21', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '21', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '21', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '21', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '21', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(3, review_seq.nextval, '22', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '22', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '22', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '22', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '22', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(3, review_seq.nextval, '23', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '23', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '23', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '23', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '23', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(3, review_seq.nextval, '24', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '24', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '24', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '24', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '24', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(3, review_seq.nextval, '25', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '25', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '25', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '25', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '25', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(3, review_seq.nextval, '26', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '26', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '26', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '26', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '26', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(3, review_seq.nextval, '27', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '27', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '27', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '27', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '27', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(3, review_seq.nextval, '28', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '28', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '28', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '28', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '28', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(3, review_seq.nextval, '29', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '29', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '29', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '29', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '29', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(3, review_seq.nextval, '30', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '30', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '30', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '30', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '30', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(3, review_seq.nextval, '31', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '31', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '31', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '31', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '31', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(3, review_seq.nextval, '32', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '32', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '32', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '32', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '32', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(3, review_seq.nextval, '33', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '33', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '33', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '33', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '33', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(3, review_seq.nextval, '34', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '34', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '34', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '34', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '34', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(3, review_seq.nextval, '35', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '35', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '35', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '35', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '35', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(3, review_seq.nextval, '36', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '36', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '36', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '36', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '36', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(3, review_seq.nextval, '37', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '37', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '37', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '37', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '37', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(3, review_seq.nextval, '38', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '38', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '38', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '38', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '38', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(3, review_seq.nextval, '39', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '39', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '39', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '39', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '39', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(3, review_seq.nextval, '40', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '40', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '40', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '40', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '40', (SELECT floor(dbms_random.value() * 5) * 0.5 + 3 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(1, review_seq.nextval, '41', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(2, review_seq.nextval, '41', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(3, review_seq.nextval, '41', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '41', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '41', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '41', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '41', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(1, review_seq.nextval, '42', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(2, review_seq.nextval, '42', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(3, review_seq.nextval, '42', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '42', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '42', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '42', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '42', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(1, review_seq.nextval, '43', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(2, review_seq.nextval, '43', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(3, review_seq.nextval, '43', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '43', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '43', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '43', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '43', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(1, review_seq.nextval, '44', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(2, review_seq.nextval, '44', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(3, review_seq.nextval, '44', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '44', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '44', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '44', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '44', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(1, review_seq.nextval, '45', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(2, review_seq.nextval, '45', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(3, review_seq.nextval, '45', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '45', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '45', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '45', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '45', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(1, review_seq.nextval, '46', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(2, review_seq.nextval, '46', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(3, review_seq.nextval, '46', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '46', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '46', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '46', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '46', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(1, review_seq.nextval, '47', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(2, review_seq.nextval, '47', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(3, review_seq.nextval, '47', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '47', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '47', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '47', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '47', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(1, review_seq.nextval, '48', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(2, review_seq.nextval, '48', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(3, review_seq.nextval, '48', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '48', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '48', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '48', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '48', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(1, review_seq.nextval, '49', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(2, review_seq.nextval, '49', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(3, review_seq.nextval, '49', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '49', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '49', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '49', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '49', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(1, review_seq.nextval, '50', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(2, review_seq.nextval, '50', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(3, review_seq.nextval, '50', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '50', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '50', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '50', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '50', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(1, review_seq.nextval, '51', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(2, review_seq.nextval, '51', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(3, review_seq.nextval, '51', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '51', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '51', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '51', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '51', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(1, review_seq.nextval, '52', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(2, review_seq.nextval, '52', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(3, review_seq.nextval, '52', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '52', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '52', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '52', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '52', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(1, review_seq.nextval, '53', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(2, review_seq.nextval, '53', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(3, review_seq.nextval, '53', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '53', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '53', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '53', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '53', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(1, review_seq.nextval, '54', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(2, review_seq.nextval, '54', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(3, review_seq.nextval, '54', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '54', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '54', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '54', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '54', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(1, review_seq.nextval, '55', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(2, review_seq.nextval, '55', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(3, review_seq.nextval, '55', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '55', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '55', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '55', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '55', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(1, review_seq.nextval, '56', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(2, review_seq.nextval, '56', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(3, review_seq.nextval, '56', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '56', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '56', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '56', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '56', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(1, review_seq.nextval, '57', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(2, review_seq.nextval, '57', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(3, review_seq.nextval, '57', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '57', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '57', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '57', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '57', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(1, review_seq.nextval, '58', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(2, review_seq.nextval, '58', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(3, review_seq.nextval, '58', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '58', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '58', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '58', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '58', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(1, review_seq.nextval, '59', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(2, review_seq.nextval, '59', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(3, review_seq.nextval, '59', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '59', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '59', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '59', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '59', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
-------------------------------------------------------------------
INSERT INTO review1 values(1, review_seq.nextval, '60', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(2, review_seq.nextval, '60', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(3, review_seq.nextval, '60', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(4, review_seq.nextval, '60', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(5, review_seq.nextval, '60', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(6, review_seq.nextval, '60', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
INSERT INTO review1 values(7, review_seq.nextval, '60', (SELECT floor(dbms_random.value() * 11) * 0.5 FROM dual), null);
-- 기타 별점순 정렬 (같은별점은 이름순)
SELECT g.guitarid, brand, gname, standard, score
FROM guitar g, (
	SELECT guitarid, avg(stars) score
	FROM review1
	GROUP BY guitarid
) r
WHERE g.guitarid = r.guitarid
ORDER BY score desc, gname;
SELECT * FROM price WHERE guitarid = 3;
----기타 상세정보
SELECT g.guitarid, g.brand, g.gname, g.color, g.neck, g.bridge, g.standard, g.img, p.minprice
FROM guitar g, (
	SELECT guitarid, min(price) minprice
	FROM price
	WHERE guitarid = '#{guitarid}'
	GROUP BY guitarid
) p
WHERE g.guitarid = p.guitarid;

----평점순 정렬
SELECT g.guitarid, g.brand, g.gname, g.color, g.neck, g.bridge, g.standard, g.img, p.minprice, round(nvl(r.stars, 0), 2) "stars"
FROM guitar g, (
	SELECT guitarid, avg(stars) "stars"
	FROM review1
	GROUP BY guitarid
) r, (
	SELECT guitarid, min(price) "minprice"
	FROM price
	GROUP BY guitarid
) p
WHERE g.guitarid = r.guitarid(+)
AND g.guitarid = p.guitarid
ORDER BY stars DESC, guitarid asc;

---- 회원의 수준에 맞는 악기 + 평점순
SELECT g.guitarid, g.brand, g.gname, g.color, g.neck, g.bridge, g.standard, g.img, p.minprice, round(nvl(r.stars, 0), 2) stars
FROM guitar g, (
	SELECT guitarid, avg(stars) stars
	FROM review1
	GROUP BY guitarid
) r, (
	SELECT guitarid, min(price) minprice
	FROM price
	GROUP BY guitarid
) p
WHERE g.guitarid = r.guitarid(+)
AND g.guitarid = p.guitarid
AND g.standard = '#{standard}'
ORDER BY stars DESC, guitarid asc;

---- 회원과 같은 수준인 다른 회원들의 평점을 기반으로 추천
SELECT g.guitarid, g.brand, g.gname, g.color, g.neck, g.bridge, g.standard, g.img, p.minprice, round(nvl(r.stars, 0), 2) stars
FROM guitar g, (
	SELECT guitarid, avg(stars) stars
	FROM review1 r, MEMBER m
	WHERE r.userid = m.USERID 
	AND r.userid <> '4'
	AND m.STANDARD = '중급'
	GROUP BY guitarid
) r, (
	SELECT guitarid, min(price) minprice
	FROM price
	GROUP BY guitarid
) p
WHERE g.guitarid = r.guitarid(+)
AND g.guitarid = p.guitarid
ORDER BY stars DESC, guitarid asc;
SELECT guitarid, avg(stars) stars
	FROM review1 r, MEMBER m
	WHERE r.userid = m.USERID 
	AND r.userid <> '4'
	AND m.STANDARD = '중급'
	GROUP BY guitarid;
SELECT * FROM review1 ORDER BY guitarid;


select m.id, m.name, r.stars, r.USERCOMMENT, m.standard
from review1 r, member m
where r.userid = m.userid
and guitarid = 24;

SELECT rownum, g.*
FROM (SELECT g.guitarid, g.brand, g.gname, g.color, g.neck, g.bridge, g.standard, g.img, p.minprice, round(nvl(r.stars, 0), 2) stars
FROM guitar g, (
	SELECT guitarid, avg(stars) stars
	FROM review1
	GROUP BY guitarid
) r, (
	SELECT guitarid, min(price) minprice
	FROM price
	GROUP BY guitarid
) p
WHERE g.guitarid = r.guitarid(+)
AND g.guitarid = p.guitarid
ORDER BY stars DESC, guitarid ASC) g
WHERE rownum <= 3;