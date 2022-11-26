DROP TABLE DEPT CASCADE CONSTRAINT;
DROP TABLE HOTEL CASCADE CONSTRAINT;
DROP TABLE EMP CASCADE CONSTRAINT;
DROP TABLE ROOM CASCADE CONSTRAINT;
DROP TABLE CUSTOMER CASCADE CONSTRAINT;
DROP TABLE RESERVATION CASCADE CONSTRAINT;
DROP TABLE INVOICE CASCADE CONSTRAINT;



CREATE TABLE DEPT 
(
    DEPTNO NUMBER(6) NOT NULL,
    DNAME VARCHAR2(25) NOT NULL,
    CONSTRAINT DEPT_DNO_PK PRIMARY KEY(DEPTNO),
    CONSTRAINT DEPT_DNAME_UK UNIQUE(DNAME)
);
insert into DEPT 
values(1,'Food And Beverage');
insert into DEPT 
values(2,'Food Production');
insert into DEPT 
values(3,'House Keeping');
insert into DEPT 
values(4,'Front Office');



CREATE TABLE HOTEL
(
    HOTEL_ID NUMBER(6) NOT NULL,
    HOTEL_NAME VARCHAR2(25) NOT NULL,
    HOTEL_LOC VARCHAR2(30) NOT NULL,
    CONSTRAINT HOTEL_HID_PK PRIMARY KEY(HOTEL_ID)
);
insert into hotel
values(1,'Pearl Continental','Lahore');
insert into hotel
values(2,'Pearl Continental','Islamabad');
insert into hotel
values(3,'Pearl Continental','Karachi');


CREATE TABLE EMP
(
    EMPNO NUMBER(7) NOT NULL,
    ENAME VARCHAR2(25) NOT NULL,
    JOB VARCHAR2(20) NOT NULL,
    SAL NUMBER(6)NOT NULL,
    HIREDATE DATE NOT NULL,
    DEPTNO NUMBER(6) NOT NULL,
    HOTEL_ID NUMBER(6) NOT NULL,
    CONSTRAINT EMP_ENO_PK PRIMARY KEY(EMPNO),
    CONSTRAINT EMP_DNO_FK FOREIGN KEY(DEPTNO) REFERENCES DEPT(DEPTNO),
    CONSTRAINT EMP_HID_FK FOREIGN KEY(HOTEL_ID) REFERENCES HOTEL(HOTEL_ID)
);
insert into EMP
values(1710,'Asad','Manager',50000,To_Date('11-Jan-2011','DD-MON-YYYY'),1,1);
insert into EMP
values(1730,'Raheem','Manager',55000,To_Date('19-FEB-2010','DD-MON-YYYY'),1,2);
insert into EMP
values(1750,'Akram','Manager',59000,To_Date('23-JUN-2010','DD-MON-YYYY'),1,3);
insert into EMP
values(1715,'Faisal','Head Chef',51000,To_Date('13-Oct-2011','DD-MON-YYYY'),2,1);
insert into EMP
values(1725,'Umer','Head Chef',53000,To_Date('13-NOV-2010','DD-MON-YYYY'),2,2);
insert into EMP
values(1735,'Zia','Head Chef',52300,To_Date('19-APR-2010','DD-MON-YYYY'),2,3);
insert into EMP
values(1745,'Kareem','Supervisor',56300,To_Date('19-DEC-2013','DD-MON-YYYY'),3,1);
insert into EMP
values(1755,'Luqman','Supervisor',55300,To_Date('19-May-2012','DD-MON-YYYY'),3,2);
insert into EMP
values(1765,'Luqman','Supervisor',56000,To_Date('01-SEP-2012','DD-MON-YYYY'),3,3);
insert into EMP
values(1720,'Fareed','Manager',58000,To_Date('21-SEP-2009','DD-MON-YYYY'),4,1);
insert into EMP
values(1740,'Faheem','Manager',57000,To_Date('03-JUL-2009','DD-MON-YYYY'),4,2);
insert into EMP
values(1760,'Noman','Manager',59000,To_Date('03-JUL-2012','DD-MON-YYYY'),4,3);
insert into EMP
values(1711,'Ali','Waiter',26000,To_Date('03-Mar-2013','DD-MON-YYYY'),1,1);
insert into EMP
values(1712,'Saleem','Waiter',26000,To_Date('05-FEB-2013','DD-MON-YYYY'),1,1);
insert into EMP
values(1731,'Rehman','Waiter',27900,To_Date('11-Oct-2014','DD-MON-YYYY'),1,2);
insert into EMP
values(1732,'Shareef','Waiter',27900,To_Date('13-Oct-2014','DD-MON-YYYY'),1,2);
insert into EMP
values(1751,'Qamar','Waiter',26200,To_Date('17-Oct-2013','DD-MON-YYYY'),1,3);
insert into EMP
values(1752,'Moaz','Waiter',26200,To_Date('09-Oct-2013','DD-MON-YYYY'),1,3);
insert into EMP
values(1716,'Qasim','Chef',46200,To_Date('09-NOV-2012','DD-MON-YYYY'),2,1);
insert into EMP
values(1717,'Naem','Chef',46200,To_Date('13-NOV-2012','DD-MON-YYYY'),2,1);
insert into EMP
values(1726,'Rafay','Chef',44800,To_Date('13-AUG-2014','DD-MON-YYYY'),2,2);
insert into EMP
values(1727,'Danish','Chef',44800,To_Date('10-AUG-2014','DD-MON-YYYY'),2,2);
insert into EMP
values(1736,'Farah','Chef',47100,To_Date('19-MAY-2014','DD-MON-YYYY'),2,3);
insert into EMP
values(1737,'Naila','Chef',47100,To_Date('11-MAY-2014','DD-MON-YYYY'),2,3);
insert into EMP
values(1746,'Wasif','Bell Boy',29100,To_Date('21-MAY-2012','DD-MON-YYYY'),3,1);
insert into EMP
values(1747,'Taha','Bell Boy',29100,To_Date('01-MAY-2012','DD-MON-YYYY'),3,1);
insert into EMP
values(1756,'Ilyas','Bell Boy',28400,To_Date('01-OCT-2012','DD-MON-YYYY'),3,2);
insert into EMP
values(1757,'Shazia','Bell Girl',28400,To_Date('09-OCT-2012','DD-MON-YYYY'),3,2);
insert into EMP
values(1766,'Shazia','Bell Girl',28700,To_Date('09-FEB-2012','DD-MON-YYYY'),3,3);
insert into EMP
values(1767,'Sadia','Bell Girl',28700,To_Date('09-FEB-2012','DD-MON-YYYY'),3,3);
insert into EMP
values(1721,'Saba','Receptionist',31700,To_Date('09-Jan-2012','DD-MON-YYYY'),4,1);
insert into EMP
values(1722,'Faiza','Receptionist',31700,To_Date('01-Jan-2012','DD-MON-YYYY'),4,1);
insert into EMP
values(1741,'Yasir','Receptionist',33000,To_Date('01-JUN-2012','DD-MON-YYYY'),4,2);
insert into EMP
values(1742,'Rabia','Receptionist',33000,To_Date('13-JUN-2012','DD-MON-YYYY'),4,2);
insert into EMP
values(1761,'Nida','Receptionist',30000,To_Date('11-JAN-2014','DD-MON-YYYY'),4,3);
insert into EMP
values(1762,'Tania','Receptionist',30000,To_Date('11-JAN-2014','DD-MON-YYYY'),4,3);


CREATE TABLE ROOM
(
    ROOM_ID NUMBER(6) NOT NULL,
    ROOM_TYPE VARCHAR2(20) NOT NULL,
    ROOM_STATUS VARCHAR2(20) NOT NULL,
    ROOM_PRICE NUMBER(6) NOT NULL,
    HOTEL_ID NUMBER(6) NOT NULL,
    CONSTRAINT ROOM_RID_PK PRIMARY KEY(ROOM_ID),
    CONSTRAINT ROOM_HID_FK FOREIGN KEY(HOTEL_ID) REFERENCES HOTEL(HOTEL_ID)
);
insert into room
values(101,'Single','Available',1500,1);
insert into room
values(102,'Single','Available',1500,1);
insert into room
values(103,'Single','Unavailable',1500,1);
insert into room
values(104,'Double','Available',2500,1);
insert into room
values(105,'Double','Available',2500,1);
insert into room
values(106,'Double','Unavailable',2500,1);
insert into room
values(107,'Queen','Available',3500,1);
insert into room
values(108,'Queen','Unavailable',3500,1);
insert into room
values(109,'King','Available',4500,1);
insert into room
values(110,'Studio','Available',5500,1);
insert into room
values(201,'Single','Available',1500,2);
insert into room
values(202,'Single','Available',1500,2);
insert into room
values(203,'Single','Unavailable',1500,2);
insert into room
values(204,'Double','Available',2500,2);
insert into room
values(205,'Double','Unavailable',2500,2);
insert into room
values(206,'Double','Unavailable',2500,2);
insert into room
values(207,'Queen','Unavailable',3500,2);
insert into room
values(208,'Queen','Unavailable',3500,2);
insert into room
values(209,'King','Unavailable',4500,2);
insert into room
values(210,'Studio','Unavailable',5500,2);
insert into room
values(301,'Single','Unavailable',1500,3);
insert into room
values(302,'Single','Available',1500,3);
insert into room
values(303,'Single','Available',1500,3);
insert into room
values(304,'Double','Available',2500,3);
insert into room
values(305,'Double','Available',2500,3);
insert into room
values(306,'Double','Available',2500,3);
insert into room
values(307,'Queen','Unavailable',3500,3);
insert into room
values(308,'Queen','Unavailable',3500,3);
insert into room
values(309,'King','Unavailable',4500,3);
insert into room
values(310,'Studio','Available',5500,3);


CREATE TABLE CUSTOMER
(
    CUST_ID NUMBER(7) NOT NULL,
    CNAME VARCHAR2(25) NOT NULL,
    C_ADDRESS VARCHAR2(30) NOT NULL,
    CONTACT_NO VARCHAR2(20) NOT NULL,
    CUST_CNIC VARCHAR2(20) NOT NULL,
    ROOM_ID NUMBER(6) NOT NULL,
    HOTEL_ID NUMBER(6) NOT NULL,
    CONSTRAINT CUST_CID_PK PRIMARY KEY(CUST_ID,ROOM_ID,HOTEL_ID),
    CONSTRAINT CUST_RID_FK FOREIGN KEY(ROOM_ID) REFERENCES ROOM(ROOM_ID),
    CONSTRAINT CUST_HID_FK FOREIGN KEY(HOTEL_ID) REFERENCES HOTEL(HOTEL_ID)
);

insert into customer
values(5101,'Saleem','18/2 st. 3 Ali Town,Sargoda','03005173921','31202-7822988-9',103,1);
insert into customer
values(5102,'Qasim','101/3 st. 17 Noor Town,Siakot','03091273921','31202-7212988-9',106,1);
insert into customer
values(5103,'Faisal','11/9 st. 7 Faiz Town,Narowal','03091212321','31202-7212912-9',108,1);
insert into customer
values(5201,'Umer','21/8 st. 2 Hamd Town,Noorpur','03099012321','31202-7212892-9',203,2);
insert into customer
values(5202,'Ayesha','211/1 st. 1 HBFC,Islampur','03029452321','31212-7212182-9',205,2);
insert into customer
values(5203,'Alia','91/11 st. 11 SLI,Attock','03059452981','31212-72212182-9',206,2);
insert into customer
values(5208,'Wasif','91 st. 3 PT1,Swabi','03059452981','31212-72212182-9',208,2);
insert into customer
values(5205,'Wasif','91 st. 3 PT1,Swabi','03059452981','31212-72212182-9',207,2);
insert into customer
values(5206,'Kashif','53 st. 1 Muradpur,Karak','03159453981','31212-72222182-1',209,2);
insert into customer
values(5207,'Akbar','3 st. 2 Fasilpur,Hasilpur','03209753971','31212-21322172-1',210,2);
insert into customer
values(5301,'ALi','121/2 st. 9 Alipur,Khushab','03332752971','31232-21399172-1',301,3);
insert into customer
values(5302,'Ishaq','71/8 st. 19 Clifton,Karachi','03332752111','31232-21619172-1',307,3);
insert into customer
values(5303,'Ishaq','71/8 st. 19 Clifton,Karachi','03332752111','31232-21619172-1',308,3);
insert into customer
values(5304,'Imran','901 st. 12 QBI,Karachi','03332752861','31202-51616172-9',309,3);


CREATE TABLE RESERVATION
(
    RES_ID NUMBER(6) NOT NULL,
    CUST_ID NUMBER(7) NOT NULL,
    ROOM_ID NUMBER(6) NOT NULL,
    HOTEL_ID NUMBER(6) NOT NULL,
    START_DATE DATE NOT NULL,
    END_DATE DATE NOT NULL,
    BOOKING_PAYMENT NUMBER(6) NOT NULL,
    PERIOD NUMBER(6) NOT NULL,
    CONSTRAINT RES_ID_PK PRIMARY KEY(RES_ID,CUST_ID,ROOM_ID,HOTEL_ID),
    CONSTRAINT RES_CID_FK FOREIGN KEY(CUST_ID,ROOM_ID,HOTEL_ID) 
    REFERENCES CUSTOMER(CUST_ID,ROOM_ID,HOTEL_ID)
);
insert into reservation
values(7101,5101,103,1,To_Date('11-02-2016','DD-MM-YYYY'),
	To_Date('12-03-2016','DD-MM-YYYY'),
	(TO_DATE('12-03-2016','DD-MM-YYYY')-TO_DATE('11-02-2016','DD-MM-YYYY'))*1500,
	(TO_DATE('12-03-2016','DD-MM-YYYY')-TO_DATE('11-02-2016','DD-MM-YYYY')));
insert into reservation
values(7102,5102,106,1,To_Date('12-01-2016','DD-MM-YYYY'),
	To_Date('21-02-2016','DD-MM-YYYY'),
	(TO_DATE('21-02-2016','DD-MM-YYYY')-TO_DATE('12-01-2016','DD-MM-YYYY'))*2500,
	(TO_DATE('21-02-2016','DD-MM-YYYY')-TO_DATE('12-01-2016','DD-MM-YYYY')));
insert into reservation
values(7103,5103,108,1,To_Date('15-01-2016','DD-MM-YYYY'),
	To_Date('21-02-2016','DD-MM-YYYY'),
	(TO_DATE('21-02-2016','DD-MM-YYYY')-TO_DATE('15-01-2016','DD-MM-YYYY'))*3500,
	(TO_DATE('21-02-2016','DD-MM-YYYY')-TO_DATE('15-01-2016','DD-MM-YYYY')));
insert into reservation
values(7201,5201,203,2,To_Date('15-04-2016','DD-MM-YYYY'),
	To_Date('27-06-2016','DD-MM-YYYY'),
	(TO_DATE('27-06-2016','DD-MM-YYYY')-TO_DATE('15-04-2016','DD-MM-YYYY'))*1500,
	(TO_DATE('27-06-2016','DD-MM-YYYY')-TO_DATE('15-04-2016','DD-MM-YYYY')));
insert into reservation
values(7202,5202,205,2,To_Date('15-02-2016','DD-MM-YYYY'),
	To_Date('17-05-2016','DD-MM-YYYY'),
	(TO_DATE('17-05-2016','DD-MM-YYYY')-TO_DATE('15-02-2016','DD-MM-YYYY'))*2500,
	(TO_DATE('17-05-2016','DD-MM-YYYY')-TO_DATE('15-02-2016','DD-MM-YYYY')));
insert into reservation
values(7203,5203,206,2,To_Date('11-02-2016','DD-MM-YYYY'),
	To_Date('17-03-2016','DD-MM-YYYY'),
	(TO_DATE('17-03-2016','DD-MM-YYYY')-TO_DATE('11-02-2016','DD-MM-YYYY'))*2500,
	(TO_DATE('17-03-2016','DD-MM-YYYY')-TO_DATE('11-02-2016','DD-MM-YYYY')));
insert into reservation
values(7204,5205,207,2,To_Date('11-01-2016','DD-MM-YYYY'),
	To_Date('12-02-2016','DD-MM-YYYY'),
	(TO_DATE('12-02-2016','DD-MM-YYYY')-TO_DATE('11-01-2016','DD-MM-YYYY'))*3500,
	(TO_DATE('12-02-2016','DD-MM-YYYY')-TO_DATE('11-01-2016','DD-MM-YYYY')));
insert into reservation
values(7205,5206,209,2,To_Date('11-02-2016','DD-MM-YYYY'),
	To_Date('17-02-2016','DD-MM-YYYY'),
	(TO_DATE('17-02-2016','DD-MM-YYYY')-TO_DATE('11-02-2016','DD-MM-YYYY'))*4500,
	(TO_DATE('17-02-2016','DD-MM-YYYY')-TO_DATE('11-02-2016','DD-MM-YYYY')));
insert into reservation
values(7206,5207,210,2,To_Date('06-02-2016','DD-MM-YYYY'),
	To_Date('14-03-2016','DD-MM-YYYY'),
	(TO_DATE('14-03-2016','DD-MM-YYYY')-TO_DATE('06-02-2016','DD-MM-YYYY'))*5500,
	(TO_DATE('14-03-2016','DD-MM-YYYY')-TO_DATE('06-02-2016','DD-MM-YYYY')));
insert into reservation
values(7207,5208,208,2,To_Date('01-01-2016','DD-MM-YYYY'),
	To_Date('12-02-2016','DD-MM-YYYY'),
	(TO_DATE('12-02-2016','DD-MM-YYYY')-TO_DATE('01-01-2016','DD-MM-YYYY'))*3500,
	(TO_DATE('12-02-2016','DD-MM-YYYY')-TO_DATE('01-01-2016','DD-MM-YYYY')));
insert into reservation
values(7301,5301,301,3,To_Date('11-02-2016','DD-MM-YYYY'),
	To_Date('23-02-2016','DD-MM-YYYY'),
	(TO_DATE('23-02-2016','DD-MM-YYYY')-TO_DATE('11-02-2016','DD-MM-YYYY'))*1500,
	(TO_DATE('23-02-2016','DD-MM-YYYY')-TO_DATE('11-02-2016','DD-MM-YYYY')));
insert into reservation
values(7302,5302,307,3,To_Date('11-02-2016','DD-MM-YYYY'),
	To_Date('22-02-2016','DD-MM-YYYY'),
	(TO_DATE('22-02-2016','DD-MM-YYYY')-TO_DATE('11-02-2016','DD-MM-YYYY'))*3500,
	(TO_DATE('22-02-2016','DD-MM-YYYY')-TO_DATE('11-02-2016','DD-MM-YYYY')));
insert into reservation
values(7303,5303,308,3,To_Date('11-02-2016','DD-MM-YYYY'),
	To_Date('18-02-2016','DD-MM-YYYY'),
	(TO_DATE('18-02-2016','DD-MM-YYYY')-TO_DATE('11-02-2016','DD-MM-YYYY'))*3500,
	(TO_DATE('18-02-2016','DD-MM-YYYY')-TO_DATE('11-02-2016','DD-MM-YYYY')));
insert into reservation
values(7304,5304,309,3,To_Date('11-02-2016','DD-MM-YYYY'),
	To_Date('15-02-2016','DD-MM-YYYY'),
	(TO_DATE('15-02-2016','DD-MM-YYYY')-TO_DATE('11-02-2016','DD-MM-YYYY'))*4500,
	(TO_DATE('15-02-2016','DD-MM-YYYY')-TO_DATE('11-02-2016','DD-MM-YYYY')));


CREATE TABLE INVOICE
(
    INV_ID NUMBER(6) NOT NULL,
    CUST_ID NUMBER(7) NOT NULL,
    HOTEL_ID NUMBER(6) NOT NULL,
    ROOM_ID NUMBER(6) NOT NULL,
    LAUNDRY_CHARGES NUMBER(6) NOT NULL,
    FOOD_CHARGES NUMBER(6) NOT NULL,
    OTHER_CHARGES NUMBER(6) NOT NULL,
    TOTAL_PAYMENT NUMBER(6) NOT NULL,
    CONSTRAINT INV_ID_PK PRIMARY KEY(INV_ID,CUST_ID,ROOM_ID,HOTEL_ID),
    CONSTRAINT INV_CID_FK FOREIGN KEY(CUST_ID,ROOM_ID,HOTEL_ID) REFERENCES CUSTOMER(CUST_ID,ROOM_ID,HOTEL_ID)
);

insert into invoice
values(9101,5101,1,103,1000,1500,500,3000);
insert into invoice
values(9102,5102,1,106,1000,1500,1000,3500);
insert into invoice
values(9103,5103,1,108,1000,2500,1000,4500);
insert into invoice
values(9201,5201,2,203,1000,1500,0,2500);
insert into invoice
values(9202,5202,2,205,1000,2500,0,3500);
insert into invoice
values(9203,5203,2,206,2000,2500,0,4500);
insert into invoice
values(9204,5205,2,207,2000,2500,0,4500);
insert into invoice
values(9205,5206,2,209,2000,2500,0,4500);
insert into invoice
values(9206,5207,2,210,2000,2500,0,4500);
insert into invoice
values(9207,5208,2,208,2000,2500,0,4500);
insert into invoice
values(9301,5301,3,301,2000,2500,0,4500);
insert into invoice
values(9302,5302,3,307,2000,2500,0,4500);
insert into invoice
values(9303,5303,3,308,2000,2500,0,4500);
insert into invoice
values(9304,5304,3,309,2000,2500,0,4500);

