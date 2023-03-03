#oppgave 1
select DATE_FORMAT(CURRENT_TIMESTAMP, "%Y-%c-%d %H:%i:%s");
#oppgave 2
select ename, sal, comm, job from `stud_v23_kma150.emp` where comm <= 0 or comm is null;
#oppgave 3
select ename, sal, comm, job from `stud_v23_kma150.emp` where comm != 500;
#oppgave 4
select ename, job from `stud_v23_kma150.emp` where job = (select job from `stud_v23_kma150.emp` where upper(ename) = "JONES" );
#oppgave 5
select ename, job from `stud_v23_kma150.emp` where deptno = 1 and job in (select distinct job from `stud_v23_kma150.emp` where deptno = 3);
#oppgave 6
select ename, job from `stud_v23_kma150.emp` where deptno = 1 and job not in (select distinct job from `stud_v23_kma150.emp` where deptno = 3);
#oppgave 7
select ename, job, deptno, sal from `stud_v23_kma150.emp` where (job, sal) in (select job, sal from `stud_v23_kma150.emp` where upper(ename) = "FORD" );
#oppgave 8
select ename, job, deptno, sal from `stud_v23_kma150.emp` where job = (select job from `stud_v23_kma150.emp` where upper(ename) = "JONES") or sal >= (select sal from `stud_v23_kma150.emp` where upper(ename) = "FORD") order by job, sal;
#oppgave 9
select ename, job from `stud_v23_kma150.emp` where deptno = 1 and job in (select distinct job from `stud_v23_kma150.emp` where deptno = (select deptno from `stud_v23_kma150.dept` where upper(dname) = "SALES"));
#oppgave 10
select ename, job, sal from `stud_v23_kma150.emp` where sal = (select sal from `stud_v23_kma150.emp` where upper(ename) = "SCOTT") union all select ename, job, sal from `stud_v23_kma150.emp` where sal = (select sal from `stud_v23_kma150.emp` where upper(ename) = "WARD");
#oppgave 11
select ename, job from `stud_v23_kma150.emp` where job in (select distinct job from `stud_v23_kma150.emp` where deptno = (select deptno from `stud_v23_kma150.dept` where upper(loc) = "CHICAGO")) order by job;
#oppgave 12
select ename as Name, sal as Salary, sal/tot_sal*100 from `stud_v23_kma150.emp`, (select sum(sal) as tot_sal from `stud_v23_kma150.emp`) t group by empno order by sal
#oppgave 13
select dname as Departement, tot_sal as Sum, tot_sal/sal*100 as Prosentvis from `stud_v23_kma150.dept`, (select deptno as d, sum(sal) as tot_sal from `stud_v23_kma150.emp` group by deptno) t, (select sum(sal) as sal from `stud_v23_kma150.emp`) e where d = `stud_v23_kma150.dept`.deptno group by deptno order by tot_sal 