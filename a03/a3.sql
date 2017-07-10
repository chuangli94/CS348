connect to cs348

drop table department
create table department ( \
	dname		varchar(20) not null, \
	location	varchar(20) not null, \
	primary key (dname) )