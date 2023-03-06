#oppgave 1
select * from `stud_v23_kma150.dept` where 1;
#oppgave 2
select * from `stud_v23_kma150.emp` where 1;
#oppgave 3
select job from `stud_v23_kma150.emp` where 1;
#oppgave 4
select distinct job from `stud_v23_kma150.emp` where 1;
#oppgave 5
select dname as Department from `stud_v23_kma150.dept` where 1;
#oppgave 6
select * from `stud_v23_kma150.emp` where deptno = 3;
#oppgave 7
select ename, empno, deptno from `stud_v23_kma150.emp` where job = "Clerk";
#oppgave 8
select dname, deptno from `stud_v23_kma150.dept` where deptno > 2;
#oppgave 9
select ename, sal, comm from `stud_v23_kma150.emp` where comm > sal;
#oppgave 10
select ename, sal, deptno from `stud_v23_kma150.emp` where upper(job) = "SALESMAN" and deptno = 3 and sal >= 1500;
#oppgave 11
select ename, sal, job from `stud_v23_kma150.emp` where upper(job) = "MANAGER" or sal > 3000;
#oppgave 12
select * from `stud_v23_kma150.emp` where upper(job) = "MANAGER" or (upper(job) = "CLERK" and deptno = 1);
#oppgave 13
select ename, job, deptno from `stud_v23_kma150.emp` where upper(job) = "MANAGER" and deptno != 3;