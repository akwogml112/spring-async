<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/async/res/common.css">
</head>
<body>
	<div class="container">
		<h1>학생 ${title}</h1>
		<form:form method="post" modelAttribute="student">
			<div class="form-group">
				<label>학번:</label>
				<form:input path="studentNumber" class="form-control w200" />
			</div>
			<div class="form-group">
				<label>이름:</label>
				<form:input path="name" class="form-control w200" />
			</div>
			<div class="form-group">
				<label>학과</label>
				<form:input path="departmentId" class="form-control w200" />
			</div>
			<div class="form-group">
				<label>학년:</label>
				<form:input path="year" class="form-control w200" />
			</div>
			<button type="submit" class="btn btn-primary">
				<i class="glyphicon glyphicon-ok"></i> 저장
			</button>
			<c:if test="${ student.id > 0 }">
				<a href="delete?id=${ student.id }"
					class="btn btn-danger" data-confirm-delete> <i
					class="glyphicon glyphicon-trash"></i> 삭제
				</a>
			</c:if>
			<a href="list" class="btn btn-default"> <i class="icon icon-list"></i>
				목록으로
			</a>
		</form:form>
		<c:if test="${ not empty message }">
			<div class="alert alert-info">${ message }</div>
		</c:if>
	</div>
</body>
</html>
