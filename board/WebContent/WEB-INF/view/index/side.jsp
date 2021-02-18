<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://kit.fontawesome.com/f3e90f406f.js"
	crossorigin="anonymous"></script>
<div class="side">
	<div class="profile">
		<img src="/images/user.png" alt="user" class="profile_user"><br>
		<c:if test="${empty id}">
			<span>guest</span>
		</c:if>
		<c:if test="${not empty id}">
			<span>${id}</span>
		</c:if>	
	</div>
	<div class="side_menu">
		<c:if test="${id eq 'admin'}">
			<i class="fas fa-clipboard"></i><a href="/admin/index">게시판</a>
		</c:if>
		<c:if test="${not (id eq 'admin')}">
			<i class="fas fa-clipboard"></i><a href="/index">게시판</a>
		</c:if>
			
	</div>
</div>