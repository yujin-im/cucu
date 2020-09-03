<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 조회</title>
<link rel= "stylesheet" href="https://bootswatch.com/4/journal/bootstrap.min.css">
</head>
<body>
<div id="nav">
 <%@ include file="../include/nav.jsp" %>
</div>
<div class="container mt-5">
<div class="card">
<div class="card-body">
<form method="post">

<div class="form-group">
<label>제목</label>
<input type="text" name="title" class="form-control" /><br />
</div>


<label>작성자</label>
<input type="text" name="writer" class="form-control" /><br />

<label>내용</label>
<textarea cols="50" rows="5" name="content" class="form-control"></textarea><br />
<div style="display: flex; float:right;">
<button type="submit" class="form-control btn btn-success" style="width:100px; float:right;">작성</button>

</div>

</form>
<button class="form-control btn btn-danger" onclick="location.href='/board/listPage?num=1'" style="width:100px; float:left; display:block; margin-left: 10px;">돌아가기</button>
</div>
</div>
</div>
</body>
</html>