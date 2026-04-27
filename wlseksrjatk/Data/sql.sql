CREATE table TBL_RESULT_202004(
	P_NO char(4) NOT NULL,
	T_CODE char(4),
	T_SDATE date,
	T_STATUS char(1),
	T_LDATE date,
	T_RESULT char(1),
	primary key(P_NO)
);

insert into TBL_RESULT_202004 values('1001', 'T001', '2020-01-01', '1', '2020-01-02', 'X');
insert into TBL_RESULT_202004 values('1002', 'T002', '2020-01-01', '2', '2020-01-02', 'P');
insert into TBL_RESULT_202004 values('1003', 'T003', '2020-01-01', '2', '2020-01-02', 'N');
insert into TBL_RESULT_202004 values('1004', 'T004', '2020-01-01', '2', '2020-01-02', 'P');
insert into TBL_RESULT_202004 values('1005', 'T005', '2020-01-01', '2', '2020-01-02', 'P');
insert into TBL_RESULT_202004 values('1006', 'T001', '2020-01-01', '2', '2020-01-02', 'N');
insert into TBL_RESULT_202004 values('1007', 'T002', '2020-01-01', '2', '2020-01-02', 'P');
insert into TBL_RESULT_202004 values('1005', 'T003', '2020-01-01', '2', '2020-01-02', 'P');
insert into TBL_RESULT_202004 values('1006', 'T004', '2020-01-01', '2', '2020-01-02', 'N');
insert into TBL_RESULT_202004 values('1007', 'T005', '2020-01-01', '2', '2020-01-02', 'N');

select * from TBL_RESULT_202004;

CREATE table TBL_PATIENT_202004(
	P_NO char(4) NOT NULL,
	P_NAME varchar2(20), 
	P_BIRTH char(8),
	P_GENDER char(1),
	P_TEL1 char(3),
	P_TEL2 char(4),
	P_TEL3 char(4),
	P_CITY char(2),
	primary key(P_NO)
);

insert into TBL_PATIENT_202004 values('1001', '김환자', '19850301', 'M', '010', '2222', '0001', '10');
insert into TBL_PATIENT_202004 values('1002', '이환자', '19900301', 'M', '010', '2222', '0002', '20');
insert into TBL_PATIENT_202004 values('1003', '빅환자', '19770301', 'F', '010', '2222', '0003', '30');
insert into TBL_PATIENT_202004 values('1004', '조환자', '19650301', 'F', '010', '2222', '0004', '10');
insert into TBL_PATIENT_202004 values('1005', '황환자', '19400301', 'M', '010', '2222', '0005', '40');
insert into TBL_PATIENT_202004 values('1006', '양환자', '19440301', 'F', '010', '2222', '0006', '40');
insert into TBL_PATIENT_202004 values('1007', '허환자', '19760301', 'F', '010', '2222', '0007', '10');

select * from TBL_PATIENT_202004;

CREATE table TBL_LAB_TEST_202004(
	T_CODE char(4) NOT NULL,
	T_NAME varchar2(20),
	primary key(T_CODE)
);

insert into TBL_LAB_TEST_202004 values('T001', '결핵');
insert into TBL_LAB_TEST_202004 values('T002', '장티푸스');
insert into TBL_LAB_TEST_202004 values('T003', '수두');
insert into TBL_LAB_TEST_202004 values('T004', '홍역');
insert into TBL_LAB_TEST_202004 values('T005', '콜레라');

select * from TBL_LAB_TEST_202004;
