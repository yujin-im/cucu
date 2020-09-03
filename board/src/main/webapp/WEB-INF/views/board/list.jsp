<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel= "stylesheet" href="https://bootswatch.com/4/journal/bootstrap.min.css">
<title>insert title here</title>
</head>
<body>

<div id="nav">
 <%@ include file="../include/nav.jsp" %>
</div>
<div class="container mt-5">
<table class="table table-hover text-center table-spriped">
 <thead>
 <tr class="table-primary">
      <th>번호</th>
      <th>제목</th>
      <th>작성일</th>
      <th>작성자</th>
      <th>조회수</th>
    </tr>
 </thead>
 
 <tbody>
  <c:forEach items="${list}" var="list">
	 <tr class="table-danger">
	  <td>${list.bno}</td>
	  <td>
	  
	  <a href="/board/view?bno=${list.bno}">${list.title}</a>
	  </td>
	  <td>${list.regDate}</td>
	  <td>${list.writer}</td>
	  <td>${list.viewCnt}</td>
	 </tr>
</c:forEach>
 </tbody>

</table>

</div>

</body>
</html>