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
<div class="btn-toolbar justify-content-center" role="toolbar" aria-label="Toolbar with button groups">

 <c:if test="${page.prev}">
 <div class="btn-group mr-2" role="group" aria-label="First group">
    [<button type="button" class="btn btn-primary" onclick='/board/listPage?num=${page.startPageNum - 1}"'>이전</button>]
 </div>
 
</c:if>

<c:forEach begin="${page.startPageNum}" end="${page.endPageNum}" var="num">
 <div class="btn-group mr-2" role="group" aria-label="First group">
    <button type="button" class="btn btn-primary" onclick='location.href="/board/listPage?num=${num}"'>${num}</button>
 </div>
</c:forEach>

<c:if test="${page.next}">
 <div class="btn-group mr-2" role="group" aria-label="First group">
    [<button type="button" class="btn btn-primary" onclick='"/board/listPage?num=${page.endPageNum + 1}"'>다음</button>]
 </div>

</c:if>


<!-- 
 <c:forEach begin="1" end="${pageNum}" var="num">
    <span>
     <a href="/board/listPage?num=${num}">${num}</a>
  </span>
 </c:forEach> -->
</div>

<div class='btn btn-warning float-right mb-5 mr-3'>
	<a href="/board/write"> 글쓰기</a>
	
</div>

</div>

</body>
</html>