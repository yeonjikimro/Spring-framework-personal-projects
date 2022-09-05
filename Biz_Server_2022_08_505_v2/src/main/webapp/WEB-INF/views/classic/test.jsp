<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />    
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@ include file="../include/header.jsp" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style>
	div.todo_body {
		width: 60%;
		margin:10px auto;
		padding:2rem;
	}
	
	div select.deal {
		width: 50px auto;
		text-align: center;
	}
	div.select_div {
		margin: 40px auto;
		display: flex;
		flex-direction: row;
	}
	
	table {
	}
	div.c_list {
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		margin: 100px auto;
		
	}
	div h1.title {
	margin: 50px auto;
		
	}
	div.2_list {
		margin: 100px auto;
	}
	div.list_but {
		margin-left : auto;
	}
</style>
<script>
const rootPath = "${rootPath}"
</script>
<script src="${rootPath}/static/js/todo.js?20220816002"></script>
<script src="${rootPath}/static/js/checkButton.js?22-09-05-001"></script>
<body>
<div class="c_list">
	<div>
		<h1 class="title" >Classic Recommend</h1>
	</div>
<div class="2_list">
	<div class="select_div">
		<select style="width:200px" class="deal" name="method">
					<option value="">오늘의 기분</option>
					<option value="슬픔">슬픔</option>
					<option value="비">비</option>
					<option value="힘">힘</option>
					<option value="공부">공부</option>
					<option value="아침">아침</option>
					<option value="힐링">힐링</option>
		</select>
		<div class="list_but"><a href="${rootPath}/user/${classic.m_seq}/checkList">
		<button type="submit" onclick='getCheckboxValue()'>내 리스트에 담기</button></a></div>
	</div>
		<table class="w3-table w3-striped">
		<colgroup>
			<col width="100px">
			<col width="200px">
			<col width="100px">
			<col width="300px">
		</colgroup>
				<tr>
					<th>번호</th>
					<th>곡 이름</th>
					<th>작곡가</th>
					<th>주소</th>
					<th>음악담기</th>
				</tr>
				
				<form method="get" action="/${user.username}/mypage">
				<c:forEach items="${CLASSIC}" var="classic" varStatus="INDEX">
					<tr>
						<td>${INDEX.count}</td>
						<td>${classic.song}</td>
						<td>${classic.musician}</td>
						<td><a href="${classic.address}">${classic.address}</a></td>
						<td style="display: none">${classic.mood}</td>
						<td><input type="checkbox" name="m_list" value="${classic.song}"></td>
					</tr>
				</c:forEach>
				</form>
			</table>
		</div>
</div>




</body>
</html>

