
create TABLE STUDENTS(
    ID INT PRIMARY KEY NOT NULL,
    FIRST_NAME VARCHAR(20) NOT NULL,
    LAST_NAME VARCHAR(20) NOT NULL,
    GENDER CHAR(1) CHECK (GENDER IN('M','F')),
    SECTION CHAR(1) DEFAULT 'A' CONSTRAINT STUD_SEC CHECK (SECTION IN('A','B','C')),
    DOB DATE DEFAULT SYSDATE,
    EMAIL_ID VARCHAR(20) CONSTRAINT STUD_EMAIL UNIQUE,
    PHONE_NUMBER NUMBER(10) UNIQUE
);


CREATE TABLE COMPUTER_DETAILS(
    Id integer not NULL primary KEY,
    make VARCHAR(20) not NULL,
    model VARCHAR(20) not null UNIQUE,
    mYear integer not NULL
);

create TABLE EMPLOYEE_DETAILS(
    Id INTEGER not NULL constraint emp_details_id PRIMARY KEY,
    Ename VARCHAR(20) not NULL,
    DOJ DATE DEFAULT sysdate not NULL,
    Salary DECIMAL(8,2) NOT NULL,
    bonus DECIMAL(8,2) NULL,
    Deparatment CHAR(3) Not NULL CONSTRAINT emp_desig_chk CHECK (Deparatment in ('HR','RND','PAY')),
    designation CHAR(10) not null,
    manager INTEGER NULL CONSTRAINT emp_det_mgr_fk REFERENCES EMPLOYEE_DETAILS(id),
    compID INTEGER null CONSTRAINT emp_det_compid_fk REFERENCES COMPUTER_DETAILS(Id)
);

INSERT INTO COMPUTER_DETAILS(id, make, model, mYear) VALUES(1001, 'Sony', 'Vaio', 2011);
INSERT INTO COMPUTER_DETAILS(id, make, model, mYear) VALUES(1002, 'Dell', 'Vostro', 2019);
INSERT INTO COMPUTER_DETAILS(id, make, model, mYear) VALUES(1003, 'Dell', 'Precision', 2018);
INSERT INTO COMPUTER_DETAILS(id, make, model, mYear) VALUES(1004, 'Dell', 'IdealPad',2017);
INSERT INTO COMPUTER_DETAILS(id, make, model, mYear) VALUES(1005, 'Lenovo', 'Edge', 2016);
INSERT INTO COMPUTER_DETAILS(id, make, model, mYear) VALUES(1006, 'Lenovo', 'ThinkPad', 2019);
INSERT INTO COMPUTER_DETAILS(id, make, model, mYear) VALUES(1007, 'HP', 'EliteBook', 2019);
INSERT INTO COMPUTER_DETAILS(id, make, model, mYear) VALUES(1008, 'HP', 'SlimBook', 2013);

insert into employee_details values (1, 'Max', ((sysdate)-39),  947233.21, 223.123, 'RND', 'Manager', null, 1002);
insert into employee_details values (2, 'Max', ((sysdate)-120),  947233.21, 223.123, 'RND', 'Manager', null, 1002);
insert into employee_details values (3, 'Martin', ((sysdate)-49),  947233.21, 223.123, 'HR', 'HR Manager', null, 1007);
insert into employee_details values (4, 'Antti', ((sysdate)-69),  947233.21, 223.123, 'PAY', 'Architect', 1, 1008);
insert into employee_details values (5, 'Pekka', ((sysdate)-69),  947233.21, 223.123, 'RND', 'Manager', null, 1003);
insert into employee_details values (6, 'Vivek', ((sysdate)-89),  947233.21, 223.123, 'RND', 'Tester', 5, 1004);
insert into employee_details values (7, 'Jhon', ((sysdate)-37),  947233.21, 223.123, 'RND', 'Tester', 2, 1002);
insert into employee_details values (8, 'Jim', ((sysdate)-19),  947233.21, 223.123, 'RND', 'Developer', 2, 1001);
insert into employee_details values (9, 'Jack', ((sysdate)-29),  947233.21, 223.123, 'RND', 'Sr.Developer', 2, 1006);
insert into employee_details values (10, 'Mikko', ((sysdate)-39),  947233.21, 223.123, 'RND', 'Team Lead', 1, 1007);
insert into employee_details values (11, 'Ajay', ((sysdate)-19),  947233.21, 223.123, 'RND', 'Sr.Tester', 1, 1008);
insert into employee_details values (12, 'Max', ((sysdate)-47),  947233.21, 223.123, 'RND', 'Developer', 5, 1007);

