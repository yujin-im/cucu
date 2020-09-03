<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 수정</title>
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
<input type="text" name="title" class="form-control" value="${view.title}" /><br />
</div>


<label>작성자</label>
<input type="text" name="writer" class="form-control" value="${view.writer}"/><br />

<label>내용</label>
<textarea cols="50" rows="5" name="content" class="form-control"> ${view.content}</textarea><br />

<button type="submit" class="form-control btn btn-success" style="width:100px; float:right;">완료</button>

</form>
</div>
</div>
</div>
</body>
</html>