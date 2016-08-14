--set serveroutput on
/*1
declare
result integer;
begin
result:=10+3*4-20+5*2;
dbms_output.put_line(to_char(result));
end;
*/
/*2
begin
dbms_output.put_line('Hello PL/SQL');
end;
*/
/*3
declare
v_char varchar2(20):='a';
v_char1 varchar2(20):='b';
begin
dbms_output.put_line(v_char);
dbms_output.put_line(v_char1);
end;
*/
/*4
declare
v_number1 number;
v_number2 number(3,2);
v_number3 binary_integer:=1;
v_name varchar2(20):='kettas';
v_date date:=sysdate;
v_long long:='ni hao';
v_b boolean:=true;
begin
if(v_number1 is null) then
dbms_output.put_line('hello');
end if;
dbms_output.put_line(v_number1);
dbms_output.put_line(v_number2);
dbms_output.put_line(v_number3);
dbms_output.put_line(v_name);
dbms_output.put_line(v_date);
dbms_output.put_line(v_long);
end;
*/
/*5
declare
v_number1 number:=100;
v_number2 number;
begin
v_number2:=v_number1;
v_number1:=200;
dbms_output.put_line(v_number1);
dbms_output.put_line(v_number2);
end;
*/
/*6
declare
type t_first is record(
id number(3),
name varchar2(20)
);
v_first t_first;
begin
v_first.id:=1;
v_first.name:='cheng';
dbms_output.put_line(v_first.id);
dbms_output.put_line(v_first.name);
end;
*/
/*7
declare
type t_first is record(
id number,
name varchar2(20)
);
v_first t_first;
v_second t_first;
begin
v_first.id:=1;
v_first.name:='susu';
v_second:=v_first;--Ïà»¥¸³Öµ
v_first.id:=2;
v_first.name:='kettas';
dbms_output.put_line(v_first.id);
dbms_output.put_line(v_first.name);
dbms_output.put_line(v_second.id);
dbms_output.put_line(v_second.name);
end;
*/
/*
declare
type t_tb is table of varchar2(20) index by binary_integer;
v_tb t_tb;
begin
	v_tb(100):='hello';
	v_tb(98):='world';
	dbms_output.put_line(v_tb(100));
	dbms_output.put_line(v_tb(98));
	end;  
	*/ 
	/*
	declare
	type t_rd is record(id number,name varchar2(20));
	type t_tb is table of t_rd index by binary_integer;
	v_tb2 t_tb;
	begin
		v_tb2(100).id:=1;
		v_tb2(100).name:='hello';
		dbms_output.put_line(v_tb2(100).id||v_tb2(100).name);
		end;
		*/  
		/*
  create table student(
	id number,
	name varchar2(20),
	age number(3,0)
	);   
	*/ 
	/*
	insert into student(id,name,age) values(1,'susu',23);
	*/
	declare
	v_name varchar2(20);
	v_name2 student.name%type;
	begin
		select name into v_name2 from student where rownum=1;
		dbms_output.put_line(v_name2);
		end;  
