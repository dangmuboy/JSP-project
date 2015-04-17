create user jspuserc identified by jsp 1234;
--유저생성

-- SQL
--1)데이터 정의 언어(DDL) : create, alter, drop
--	 스키마		 만듬	바꿈	지움(틀 자체를)
--2)데이터 조작 언어(DML) : insert, update, delete, select
--	인스턴스 변경	추가      행내변경   지움(인스턴스만)	검색		
--3)데이터 제어 언어(DCL) : grant, revoke
--	테이블접근	허가권한을 줌	줬던 권한을 뺏음
create table member
(
	id			varchar2(15)	primary key,		--컬럼이름 데이터타입(사이즈)	varchar(15) 가변길이;variable charecter 15바이트라는 뜻. 
	password	varchar2(10),		--가변길이는(10)중 4자리를 쓴다면 나머지 6자리는 반납;그래서 고정길이에비해 느림				
	name		varchar2(10),
	age			number,
	gender		char(1),			--char 고정길이(속도가 빠름)
	addr		varchar2(100),
	regdate		date	default sysdate				--날짜형 data-type
)									--sysdate가 오늘날짜 들어가게 하는 함수
						

									--execute selected text -> 실행; 단축키 alt+x



						
select id from member				--멤버의 id 컬럼만 가져와라
select id, password from member	

insert into member					--멤버테이블에 추가하라
values('test1','1234','홍길동',20,'1','서울시','2015-04-17')						--순서대로, 문자열은 작은따옴표

drop table member

update member
set addr = '경기도'
where id='test1'	--where안하면 test,test1모두 바뀜


delete member
where id='test1'




select * from member				