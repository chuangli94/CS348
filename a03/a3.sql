connect to cs348

drop table department
create table department ( \
	dname		varchar(20) not null, \
	location	varchar(20) not null, \
	primary key (dname) )

drop table instructor
create table instructor ( \
	name		varchar(20) not null, \
	id			integer not null, \
	primary key (id) )

drop table student
create table student ( \
	name		varchar(20) not null, \
	id			integer not null, \
	primary key (id) )

drop table course
create table course ( \
	name		varchar(20) not null, \
	cnum		varchar(10) not null, \
	primary key (cnum) )

drop table term
create table term ( \
	id			varchar(10) not null, \
	primary key (id) )

drop table section
create table section ( \
	id			integer not null, \
	cnum		varchar(10) not null, \
	tid			varchar(10), not null )