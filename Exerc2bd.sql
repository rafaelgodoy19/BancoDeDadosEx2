create table if not EXISTS employees (
    employee_id BIGINT PRIMARY KEY,
    NAME varchar(200) NOT NULL,
    age smallint NOT NULL,
    genre varchar(10) NOT NULL,
    document varchar(14) UNIQUE NOT NULL,
  	wage smallint NOT NULL,
  	admission_date DATE,
  	office_id BIGINT not NULL,
  	FOREIGN KEY(office_id) REFERENCES offices(id)
);

INSERT INTO employees VALUES (1, 'Rafael', '19', 'M', '22122212', 2350,'2000/10/02',1);
INSERT INTO employees VALUES (2, 'Thamires', '18', 'F', '12221225', 5100,'1999/02/25',2);
INSERT INTO employees VALUES (3, 'Andre', '20', 'M', '05050505', 2000,'2020/05/10',3);
INSERT INTO employees VALUES (4, 'Amilton', '21', 'M', '06060606', 2150,'2021/05/15',3);

SELECT * FROM employees;

CREATE TABLE if NOT EXISTS offices (
  	ID BIGINT PRIMARY KEY,
  	sector varchar(50) NOT NULL,
  	office varchar(60) NOT NULL
);

INSERT INTO offices VALUES (1,'TI','Developer');
INSERT INTO offices VALUES (2,'Management','Administrator');
INSERT INTO offices VALUES (3,'Accounting','Counter');

SELECT * FROM offices;

SELECT * 
FROM employees emp,
	 offices off
WHERE emp.employee_id = off.id;

//funcionário com salario acima de 5000 reais

select *
from employees emp,
     offices off
where emp.employee_id = off.id
  and emp.wage >= 5000
order by emp.wage;

//funcionario que começam com a letra A

SELECT *
FROM employees emp 
WHERE emp.name LIKE 'A%'
order by emp.admission_date;

//Ordenando o funcionario mais antigo pra mais novo

SELECT * 
FROM employees emp,
	 offices offs
WHERE emp.employee_id = offs.id
ORDER by emp.admission_date;