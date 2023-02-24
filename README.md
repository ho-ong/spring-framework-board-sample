# spring-framework-board-sample
> Spring Framework를 사용한 게시판 기능 구현 샘플.

<br>

## 개발 환경(Development Environment)
- IDE : IntelliJ IDEA Community Edition
- Language : JAVA 11 (JDK 11.0.18)
- Framework : Spring Framework 5.3.20, MyBatis 3.5.6
- Build Tool : Maven 3.8.0
- DBMS : MySQL 8.0.31 for Linux
- WAS : Apache Tomcat 9.0

<br>

## 주요 기능(Main Function)
- 회원(member)
    - 로그인(login) : /member/login
    - 로그아웃(logout) : /member/logout
    - 회원가입(join) : /member/join
    - 회원목록(list) : /member/list
    - 회원정보 조회(detail) : /member/detail
    - 회원정보 수정(update) : /member/update
    - 회원정보 삭제(delete) : /member/delete

- 게시판(board)

<br>

## MySQL DataBase Table
```roomsql
drop table if exists springframework_board.member;

create table springframework_board.member (
	id bigint primary key auto_increment,
    memberEmail varchar(20) unique,
    memberPassword varchar(20),
    memberName varchar(20),
    memberAge int,
    memberMobile varchar(30)
);
```

<br>

## MySQL DataBase 계정 생성 및 권한 부여
```roomsql
create database springframework_board;
create hoong@localhost identified by '8888';
grant all privileges on springframework_board.* to hoong@localhost;
```