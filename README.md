<p align="center">
 <img src="https://cdn.pixabay.com/photo/2014/03/24/13/40/dumbbells-293955__340.png" height="200px" alt="KJW Health"></a>
</p>

<h1 align="center">KJW Health</h1>

<div align="center">

### 🛠 &nbsp;Technical Skills
![Java](https://img.shields.io/badge/-Java-05122A?style=flat&logo=Java)&nbsp;
![Spring](https://img.shields.io/badge/-Spring-05122A?style=flat&logo=spring)&nbsp;
![JavaScript](https://img.shields.io/badge/-JavaScript-05122A?style=flat&logo=javascript)&nbsp;
![Eclipse](https://img.shields.io/badge/-Eclipse-05122A?style=flat&logo=Eclipse)&nbsp;
![MySQL](https://img.shields.io/badge/-MySQL-05122A?style=flat&logo=MySQL)&nbsp;
![AWS](https://img.shields.io/badge/-AWS-05122A?style=flat&logo=amazon-aws)&nbsp;
![JQuery](https://img.shields.io/badge/-JQuery-05122A?style=flat&logo=JQuery)&nbsp;\
<br>
![Bootstrap](https://img.shields.io/badge/-Bootstrap-05122A?style=flat&logo=bootstrap&logoColor=563D7C)&nbsp;
![HTML](https://img.shields.io/badge/-HTML-05122A?style=flat&logo=HTML5)&nbsp;
![CSS](https://img.shields.io/badge/-CSS-05122A?style=flat&logo=CSS3&logoColor=1572B6)&nbsp;\
![Git](https://img.shields.io/badge/-Git-05122A?style=flat&logo=git)&nbsp;
![GitHub](https://img.shields.io/badge/-GitHub-05122A?style=flat&logo=github)&nbsp;
![Markdown](https://img.shields.io/badge/-Markdown-05122A?style=flat&logo=markdown)&nbsp;
![Youtube Badge](https://img.shields.io/badge/-Youtube-05122A?style=flat&logo=youtube)&nbsp;

</div>

---

<p align = "center">💡 비만도 측정 및 진단결과 기록 / 식단 추천 / 건강용품,식품 추천 / 정보를 공유 할 수 있는 커뮤니티를 포함한 <br> 건강 관리 프로젝트</p>

# :movie_camera: KJW Health 전체 기능 시연 및 설명 영상

[![Watch the video](https://user-images.githubusercontent.com/86758906/136792181-a525fe15-f04e-448b-af29-3712ff3ebcf7.png)](https://youtu.be/rD2_dO5Zmkg)

### 기능별 영상 시간 :pushpin: Check
* ### [00:00 ~ 01:06](https://www.youtube.com/watch?v=rD2_dO5Zmkg&t=0s) 회원가입 / 로그인
* ### [01:16 ~ 02:28](https://www.youtube.com/watch?v=rD2_dO5Zmkg&t=76s) 진단하기 / 진단결과
* ### [02:28 ~ 03:10](https://www.youtube.com/watch?v=rD2_dO5Zmkg&t=148s) 건강 기록실
* ### [03:10 ~ 03:45](https://www.youtube.com/watch?v=rD2_dO5Zmkg&t=190s) 건강용품식품 / 식단레시피 화면 리스트
* ### [03:45 ~ 06:35](https://www.youtube.com/watch?v=rD2_dO5Zmkg&t=225s) 건강 공유 게시판 모든 기능
* ### [06:51 ~ 07:13](https://www.youtube.com/watch?v=rD2_dO5Zmkg&t=411s) userId 별 페이징
* ### [07:13 ~ 07:35](https://www.youtube.com/watch?v=rD2_dO5Zmkg&t=433s) 마이 페이지
* ### [07:35 ~ 08:19](https://www.youtube.com/watch?v=rD2_dO5Zmkg&t=455s) 관리자 페이지

## :book: 프로젝트 설명

* 코로나로 인해 평소보다 건강관리가 안되고 있는 시점에서 생각한 프로젝트 개발
* 개인별로 건강관리를 할 수 있는 사이트 개발
* 로그인 기반의 프로젝트 / 진단하기, 진단결과 기록, 식단추천, 건강용품/식품 추천, 기록실 등의 기능 개발
* 정보 공유 게시판을 통한 소셜기능을 포함한 프로젝트

## :page_facing_up: 포트폴리오

### 링크를 클릭해주세요!! [포트폴리오](portfolio.pdf) 

## :mag_right: 설계

* UI 기획
    #### https://ovenapp.io/project/Jf2xG5QEngfmB07lG3vcTgfWIBkGGOeG#VgL67
    
* 데이터 베이스, URL 설계, 일정 설계
    #### https://docs.google.com/spreadsheets/d/1_Q830KmiS-ayP8VYmQ40_vCBhxZ2f79swT_NdlE9BO4/edit#gid=0

## :paperclip: 구현한 핵심 기능 및 설명

 #### * package : [com.kimjinwoo.kjwhealth.*](https://github.com/kjw7580/spring_KJWHealth_0913/tree/develop/src/main/java/com/kimjinwoo/kjwhealth)
 #### * view : [/webapp/WEB-INF/jsp/*](https://github.com/kjw7580/spring_KJWHealth_0913/tree/develop/src/main/webapp/WEB-INF/jsp)
 #### * mapper : [/resources/mappers/*](https://github.com/kjw7580/spring_KJWHealth_0913/tree/develop/src/main/resources/mappers)
 #### * yml 설정 : [/resources/application.yml](https://github.com/kjw7580/spring_KJWHealth_0913/blob/develop/src/main/resources/application.yml)
 #### * gradle 설정 : [build.gradle](https://github.com/kjw7580/spring_KJWHealth_0913/blob/develop/build.gradle)
 
 * 진단하기
  #### - 진단하기 과정에서 BMI정보를 저장 -> 저장된 정보를 통해 BMI수치 획득
 * 진단결과 기록
  #### - 얻은 BMI수치를 기준으로 개인별 자가진단 / 식단 / 건강용품식품 추천 -> 기록하기 기능 
 * 나의 기록실
  #### - 기록된 진단결과 저장 -> 저장된 진단결과에 대한 정보들 보러가기 기능
 * 건강 공유 게시판 (글 작성, 수정, 삭제, 댓글, 페이징, 검색)
  #### - 유저끼리 정보를 공유를 할 수 있는 게시판 [글 작성, 수정, 삭제, 댓글, 페이징, 검색]기능 포함

## :scroll: License

![](https://img.shields.io/badge/Tomcat-Apache%20License%202.0-brightgreen)&nbsp;
![](https://img.shields.io/badge/Spring%20framework-Apache%20License%202.0-orange)&nbsp;
<br><br>
![](https://img.shields.io/badge/Mysql-GPLv2%20or%20proprietary-red)&nbsp;
![](https://img.shields.io/badge/Mybatis-Apache%20License%202.0-blue)&nbsp;
![](https://img.shields.io/badge/Bootstrap-MIT%20License-yellow)&nbsp;
<br><br>
![](https://img.shields.io/badge/jQuery-MIT%20License-lightgrey)&nbsp;
![](https://img.shields.io/badge/%EC%9D%B4%EB%AF%B8%EC%A7%80%20%EC%B6%9C%EC%B2%98-pixabay-yellowgreen)&nbsp;

## :watch: Deploy History

### 2021-09-08 ~ 2021-09-14

- 프로젝트 기획
- DB 설계 / URL 설계 / 일정 설계
- 프로젝트 설정 / 세팅

### 2021-09-15 ~ 2021-09-17

- 모든 페이지 레이아웃 디자인 및 수정

### 2021-09-18 ~ 2021-09-26

- version-1 모든 기능 구현 및 테스트
- 구현한 기능 : 게시판 / 관리자 페이지[INSERT 페이지] / 건강용품식품 화면 <br> 식단 레시피 화면 / 진단하기 화면 / 진단결과 화면 / 나의 기록실 화면 / 메인 페이지

### 2021-09-27 ~ 현재

- version-2 구현 중
- 현재까지 구현된 기능 : 댓글 작성 및 삭제 / 기록실 상세페이지 및 삭제 / 게시판 검색기능 <br> 내가 쓴 게시물 View / 게시판[검색결과], 레시피, 건강용품식품, 기록실 화면 페이징 / 마이페이지


## :clock12: 향후 계획

 * 게시판 조회수 기능
 * 계정별 등급 기능
 * 기록실 기록된 정보에 대한 메모 기능
 * 진단하기 -> 설문 기능
