#oppgave 1
select ename, sal, comm from `stud_v23_kma150.emp` where comm > 0.25 * sal;
#oppgave 2
select ename, comm/sal ,sal, comm from `stud_v23_kma150.emp` where job = upper("SALESMAN") order by comm/sal desc;
#oppgave 3
select ename, sal, comm, 12 * (sal + comm) from `stud_v23_kma150.emp` where job = upper("SALESMAN");
#oppgave 4
select avg(sal) from `stud_v23_kma150.emp` where job = upper("CLERK");
#oppgave 5
select sum(sal), sum(comm) from `stud_v23_kma150.emp` where job = upper("SALESMAN");
#oppgave 6
select count(comm) from `stud_v23_kma150.emp` where comm > 0;
#oppgave 7
select count(distinct job) from `stud_v23_kma150.emp` where deptno = 3;
#oppgave 8
select count(*) from `stud_v23_kma150.emp` where deptno = 3;
#oppgave 9
select deptno, round(avg(sal), 4) as `Average salary` from `stud_v23_kma150.emp` where 1 group by deptno;
#oppgave 10
select concat(dname, " - ", loc) as Departements from `stud_v23_kma150.dept` where 1;
#oppgave 11
select ename, job, case when job = upper("CLERK") then 1 when job = upper("SALESMAN") then 2 when job = upper("MANAGER") then 3 when job = upper("ANALYST") then 4 when job = upper("PRESIDENT") then 5 end as job_class from `stud_v23_kma150.emp` where 1;
#oppgave 12
select substr(ename, 2) as name_part from `stud_v23_kma150.emp` where 1;
#oppgave 13
select CURRENT_DATE as date;