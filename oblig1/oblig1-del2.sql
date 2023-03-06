#oppgave 1
select * from `stud_v23_kma150.emp` where upper(job) != "MANAGER" and upper(job) != "CLERK" and deptno = 1;
#oppgave 2
select * from `stud_v23_kma150.emp` where sal between 1200 and 1300;
#oppgave 3
select ename, job, deptno from `stud_v23_kma150.emp` where upper(job) = "CLERK" or upper(job) = "ANALYST" or upper(job) = "SALESMAN";
#oppgave 4
select ename, job, sal from `stud_v23_kma150.emp` where sal not between 1200 and 1400;
#oppgave 5
select ename, job, deptno from `stud_v23_kma150.emp` where upper(job) != "CLERK" and upper(job) != "ANALYST" and upper(job) != "SALESMAN";
#oppgave 6
select ename, job, deptno from `stud_v23_kma150.emp` where ename like 'M%';
#oppgave 7
select ename, job, deptno from `stud_v23_kma150.emp` where ename like 'al%n' and length(ename) = 5;
#oppgave 8
select sal, ename, deptno from `stud_v23_kma150.emp` where deptno = 3 order by sal;
#oppgave 9
select sal, ename, deptno from `stud_v23_kma150.emp` where deptno = 3 order by sal desc;
#oppgave 10
select ename, job, sal from `stud_v23_kma150.emp` where 1 order by job, sal desc;
#oppgave 11
select ename, loc from `stud_v23_kma150.emp` inner join `stud_v23_kma150.dept` on `stud_v23_kma150.emp`.`deptno` = `stud_v23_kma150.dept`.`deptno` where upper(ename) = "ALLEN"
#oppgave 12
select `stud_v23_kma150.dept`.deptno, `stud_v23_kma150.dept`.dname, `stud_v23_kma150.emp`.ename from `stud_v23_kma150.dept` left outer join `stud_v23_kma150.emp` on `stud_v23_kma150.dept`.deptno = `stud_v23_kma150.emp`.deptno where `stud_v23_kma150.dept`.deptno in (3,4);
#oppgave 13
select `stud_v23_kma150.dept`.deptno, `stud_v23_kma150.dept`.dname, `stud_v23_kma150.dept`.loc from `stud_v23_kma150.dept` left outer join `stud_v23_kma150.emp` on `stud_v23_kma150.dept`.deptno = `stud_v23_kma150.emp`.deptno where job is null group by `stud_v23_kma150.dept`.deptno;