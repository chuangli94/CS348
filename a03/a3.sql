connect to cs348

drop table instructor
create table instructor ( \
	name		varchar(20) not null, \
	id			integer not null, \
	primary key (id) )

drop table department
create table department ( \
	dname		varchar(20) not null, \
	location	varchar(20) not null, \
	chair		integer not null, \
	primary key (dname), \
	foreign key (chair) references instructor(id) )

drop table student
create table student ( \
	name		varchar(20) not null, \
	id			integer not null, \
	major		varchar(20) not null, \
	primary key (id), \
	foreign key (major) references department(dname) )

drop table course
create table course ( \
	name		varchar(20) not null, \
	cnum		varchar(10) not null, \
	dep			varchar(20) not null, \
	primary key (cnum), \
	foreign key (dep) references department(dname) )

drop table term
create table term ( \
	id			varchar(10) not null, \
	primary key (id) )

drop table section
create table section ( \
	id			integer not null, \
	cnum		varchar(10) not null, \
	tid			varchar(10) not null, \
	lecturer	integer not null, \
	primary key (id, cnum, tid), \
	foreign key (cnum) references course(cnum), \
	foreign key (tid) references term(id), \
	foreign key (lecturer) references instructor(id) )

drop table offering
create table offering ( \
	cnum		varchar(10) not null, \
	tid			varchar(10) not null, \ 
	primary key (cnum, tid), \
	foreign key (cnum) references course(cnum), \
	foreign key (tid) references term(id) )

drop table enrollment
create table enrollment ( \
	sid			integer not null, \
	secid		integer not null, \
	cnum		varchar(10) not null, \
	tid			varchar(10) not null, \
	grade		integer not null, \
	primary key (sid, secid), \
	foreign key (sid) references student(id), \
	foreign key (secid, cnum, tid) references section(id, cnum, tid) )

drop table schedule
create table schedule ( \
	sid			integer not null, \
	secid		integer not null, \
	cnum 		varchar(10) not null, \
	tid			varchar(10) not null, \
	foreign key (sid) references student(id), \
	foreign key (secid, cnum, tid) references section(id, cnum, tid) )
