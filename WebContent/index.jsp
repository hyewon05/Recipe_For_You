<%@page import="kr.co.rfy.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&family=Roboto:ital,wght@0,100;1,100&display=swap" rel="stylesheet">
    <title>냉장고를 부탁해</title>
<style>
div {
    box-sizing: border-box;
}
#wrapper {
    width: 100%;
    background-color: #fff;
}
.header {
    position: relative;
    width: 100%;
    height: 200px;
    border-bottom: 1px solid #E0E0E0;
}
.top {
    width: 100%;
    height: 35px;
    background-color: #5c9970;
    text-align: center;
}
.top-img {
    display: inline-block;
}
.top1 {
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 13px;
    line-height: 35px;
    color: #fff;
}

.header1 {
    width: 100%;
    max-width: 1280px;
    height: 105px;
    text-align: center;
    margin: 0 auto;
    position: relative;
    padding: 30px 0;
}
.logo {
    width: 15.9%;
    height: 47px;
}
.box-user{
   position: absolute;
   top: 40px;
   right: 0;
}
.mypage {
    display: inline-block;
    margin-right: 35px;
}
.login {
    display: inline-block;
    margin-right: 35px;
}
.admin {
    display: inline-block;
    margin-right: 35px;
}
.navibar {
    width: 100%;
    max-width: 1280px;
    height: 60px;
    position: relative;
    padding: 0;
}
.navbar {
    width: 50%;
    padding: 0;
    float: left;
}
.navdistance {
    width: 100%;
    height: 100%;
}
.nav-item {
    color: #5E5E5E;
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 15px;
    font-weight: bold;
    line-height: 55px;
    letter-spacing: 1.8px;
    text-align: center;
}
.nav-about {
    width: 100px;
    height: 60px;
    
    color: #5E5E5E;
}
.nav-recipe {
    width: 100px;
    height: 60px;
    color: #5E5E5E;
}
.nav-info {
    width: 100px;
    height: 60px;
    color: #5E5E5E;
}
.nav-mypage {
    width: 100px;
    height: 60px;
    color: #7FB292;
    margin-left: 20px;
    position: relative;
}
.nav-mypage:hover {
   color: #7FB292;
}
.nav-mypage:before {
   content: "";
   display: block;
   width: 2px;
   height: 30px;
   background-color: #E0E0E0;
   position: absolute;
   left: -15px;
   bottom: 8px;
   z-index: 999;
}
.nav-item:hover>a{
    color: #7FB292;
}
.nav-item:hover > .submenu {
    width: 100%;
    height: 100%;
    transition-property: height;
    transition-duration: 1s;
    border: 1px solid #5E5E5E;
}

.nav-item:hover > .myMenuSub>li>a:hover {
    color: #7FB292;
}
.submenu {
    margin-right: 10px;
    padding: 0px;
    height: 0px;
    overflow: hidden;
    transition-property: height;
    background-color: white;
}
.submenu > li {
    list-style: none;
}
.submenu > li > a {
    display: block;
    width: 100%;
    height: 30px;
    text-decoration: none;
    text-align: center;
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 14px;
    margin-top: 10px;
    color: #5E5E5E;
}
.nav-line {
    height: 26px;
    float: left;
    position: absolute;
    top: 40%;
    left: 30%;
}
.box-search {
   width: 50%
}

.searchbar {
    position: relative;
    margin-bottom: auto;
    margin-top: 20px;
    margin-left: 0px;
    width: 100%;
    height: 30px;
    border-radius: 30px;
    border-color: #7FB292;
    border-style: solid;
}
.search_input {
    color: black;
    border: 0;
    outline: 0;
    background: none;
    border-color: #7FB292;
    width: 100%;
    caret-color: transparent;
    line-height: 25px;
    padding: 0 10px;
}
.search_icon {
    height: 12px;
    width: 10px;
    position: absolute;
    top: 15%;
    right: 3%;
    border-radius: 50%;
    color: #7FB292;
    text-decoration: none;
}

.form-control {
    width: 600px;
    border-radius: 20px 20px;
    margin: 10px 0 0 0;
}

.contents {
    width: 100%;
    max-width: 1280px;
    height: 1000px;
    margin: 33px auto 50px auto;
    border: 1px solid black;
}


.footer {
    width: 100%;
    height: 200px;
    border-top: 1px solid #E0E0E0;
}
.footer1 {
    max-width: 1280px;
    margin-top: 20px;
}

.footer1>pre{
    font-size: 13px;
    text-align: left;
    font-family: 'Noto Sans KR', sans-serif;
}
.footer-bottom {
    width: 100%;
    background-color: #E4E4E4;
}

#footer-word>pre{
    max-width: 1280px;
    margin: 0 auto;
    text-align: left;
    font-size: 13px;
    font-family: 'Noto Sans KR', sans-serif;
    
}

.myMenu, .login, .admin {
    color: #5E5E5E;
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 12px;
    font-weight: bold;
    line-height: 10px;
    letter-spacing: 1px;
    text-align: center;
	box-sizing: border-box;
}


#myMenu:hover > .myMenuSub {
	display: block;
}
.myMenuSub:hover > ul {
	display: block;
	
}
.myMenuSub{
	padding: 5px;
	background-color: white;
	position: relative;
	z-index:999;
	display: none;
	border: 1px solid #5E5E5E;
}
.myMenuSub > li {
    list-style: none;
}
.myMenuSub > li > a {
    width: 100%;
    height: 20px;
    text-decoration: none;
    text-align: center;
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 12px;
    line-height: 30px;
    color: #5E5E5E;    
    background-color: white;
}
.box-user > div{
	float: left;
}
a { text-decoration:none !important }
</style>

</head>
<body>
<%
     Member m = (Member)session.getAttribute("member");
%>
 <div id="wrapper">
        <div class="header fixed-top">
            <div class="top">
                <div class=top-img><img src="/assets/common/images/topicon.png" alt="" width="18px" height="25px"></div>
                <span class="top1 align">마이냉장고에 나만의 식재료를 등록하고 레시피를 추천 받아 보세요!</span>
            </div>
            <div class="header1">
                <a href="" class="logo">
                    <img src="/assets/common/images/main%20logo.png" alt="">
                </a>
                <div class="box-user">
               		<div id="mypage">
	                    <a href="" class="mypage">
	                    	<img src="/assets/common/images/headericon1.png" alt="" width="23px" height="28px">
	        	        </a>
       	    	    </div>
                 <%if(m==null) {%>
                 <div>
	                <a href="/views/member/memberLogin.jsp" class="login" style="text-decoration: 'none'">
	                    <img src="/assets/common/images/headericon2.png" alt="" width="23px" height="28px">
	                    로그인
	                </a>
                </div>
                <%}else{ %>
                <div id="myMenu">
                	<a href="#" class="myMenu login" style="text-decoration: 'none'">
	                    <img src="/assets/common/images/headericon2.png" alt="" width="23px" height="28px">
	                    <%=m.getUserName() %>님 
	                </a>    
                    <ul class="myMenuSub">
                    	<li><a href="/views/member/memberUpdateCheck.jsp">회원정보 수정</a></li>
                   		<li><a href="/views/member/memberPwdCheck.jsp">비밀번호 변경</a></li>
                   		<li><a href="/member/memberLogout.do">로그아웃</a></li>
                    </ul>
	            </div>    
                	<%if(m.getRoll().substring(0,2).equals("AD")) {%>
                <div>	
                	<a href="/recipeBoard/recipeBoardAllSelect.do" class="admin">
	            	    <img src="/assets/common/images/headericon3.png" width="15px" height="28px"> 관리자 페이지
	               	</a>
	            </div>    		
                	<%} %>
                <%} %> 
                </div>
                
            </div>

            <div class="navibar container-fluid">
                <nav class="navbar navbar-expand-lg nav-distance">
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active nav-about" href="#">ABOUT</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active nav-recipe" href="#">레시피</a>
                                <ul class="submenu">
              						<li><a href="/recipe/recipeBoard/selectAll.do">모두보기</a></li>
                                    <li><a href="/recipe/recipeBoardSelectList.do?recipe=hansik">한식</a></li>
                                    <li><a href="/recipe/recipeBoardSelectList.do?recipe=yangsik">양식</a></li>
                                    <li><a href="/recipe/recipeBoardSelectList.do?recipe=ilsik &">일식</a></li>
                                    <li><a href="/recipe/recipeBoardSelectList.do?recipe=jungsik">중식</a></li>
                                    <li><a href="/recipe/recipeBoardSelectList.do?recipe=bunsik">분식</a></li>
                                    <li><a href="/recipe/recipeBoardSelectList.do?recipe=vege">채식</a></li>
                                    <li><a href="/recipe/recipeBoardSelectList.do?recipe=dite">다이어트</a></li>
                                    <li><a href="/recipe/recipeBoardSelectList.do?recipe=banchan">밑반찬</a></li>
                                    <li><a href="/recipe/recipeBoardSelectList.do?recipe=annju">안주</a></li>
                                </ul>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link active nav-info" href="#">고객센터</a>
                                <ul class="submenu">
                                    <li><a href="">공지사항</a></li>
                                    <li><a href="">자주하는질문</a></li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active nav-mypage" href="/mybox/myboxList.do">마이냉장고</a>
                            </li>
                        </ul>
                    </div>
                </nav>
                <div class=" box-search d-flex justify-content-center h-100">
                    <div class="searchbar">
                        <input class="search_input" type="text" name="" placeholder="">
                        <a href="" class="search_icon"><i class="fas fa-search"></i></a>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="contents"></div>
        
        <div class="footer">
            <div class="footer1 container">
            <pre>
(주)컬쳐히어로
            
            
상호:(주)컬쳐히어로   대표자:양준규  개인정보관리책임자:장호진  사업자 등록번호:144-81-35400
            
통신판매업 신고:제 2015-경기성남-1940호  전화:1833-8307  팩스:031-8017-1800
            
주소:(13487) 경기도 성남시 분당구 삼평동625 판교세븐벤처밸리1단지 제3동 1001호 이메일:commerce@culturehero.net
            </pre>
            </div>
            <div class="footer-bottom">
               <div id="footer-word">
                <pre>      이용약관   개인정보처리방침   공지사항   자주묻는질문   광고/제휴문의:contact@culturehero.net</pre>
                </div>
            </div>
        </div>
    </div>



    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
</body>
</html>