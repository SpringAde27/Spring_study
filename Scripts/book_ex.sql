
create table members (
	userid varchar(50) not null,
	userpw varchar(50) not null,
	username varchar(50) not null,
	email varchar(100),
	regdate timestamp default now(),
	updatedate timestamp default now(),
	primary key(userid)
);

create table boards(
	bno int not null AUTO_increment,
	title varchar(200) not null,
	content text null,
	writer varchar(50) not null,
	regdate timestamp not null default now(),
	viewcnt int default 0,
	replycnt int default 0,
	primary key (bno)
);

create table replys(
	rno int not null auto_increment,
	bno int not null default 0,
	replytext varchar(1000) not null,
	replyer varchar(50) not null,
	regdate timestamp not null default now(),
	updatedate timestamp not null default now(),
	primary key(rno)
);

-- tbl_reply에 키 제약조건 걸기
alter table replys add constraint fk_board
foreign key(bno) references boards(bno);

