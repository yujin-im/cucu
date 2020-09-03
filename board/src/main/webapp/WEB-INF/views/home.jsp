<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<link rel= "stylesheet" href="https://bootswatch.com/4/journal/bootstrap.min.css">
	<title>Home</title>
	<style>

body {
    background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
    background-size: 400% 400%;
    animation: gradient 15s ease infinite;
}

@keyframes gradient {
    0% {
        background-position: 0% 50%;
    }
    50% {
        background-position: 100% 50%;
    }
    100% {
        background-position: 0% 50%;
    }
}

Resources
	</style>
</head>
<body>
<div class="jumbotron" style="background-color:transparent; 
	position: absolute; top:50%; left:50%; margin:0 auto; transform:translate(-400px,-130px);">
<h1 class="text-light">Welcome My Spring Board Page!</h1>

<div class="btn-group mt-2 mb-4" role="group" aria-label="actionButtons">
    <a href="/board/listPage?num=1" class="d-block btn btn-outline-light"><i class="fas fa-file-download mr-2"></i>게시판 보러 가기</a>
    <a href="https://potofolioYJ.pythonanywhere.com" target="_blank" class="d-block btn btn-outline-light">포토폴리오 사이트 가기<i class="fas fa-external-link-square-alt ml-2"></i></a>
</div>

<h6 class="text-light small font-weight-bold"><i class="fas fa-code"></i> with <i class="fas fa-heart"></i> by Yujin Im</h6>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" integrity="sha256-qM7QTJSlvtPSxVRjVWNM2OfTAz/3k5ovHOKmKXuYMO4=" crossorigin="anonymous"></script>

</body>
</html>
