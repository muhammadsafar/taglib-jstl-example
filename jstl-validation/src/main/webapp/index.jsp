<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

	<h3>cout simple</h3>
	<c:out value="Muhammad Safar Baharuddin"></c:out>
	<br> 4*12 =
	<c:out value="${4*12}"></c:out>

	<c:set var="ummi" value="Ramlah"></c:set>
	<c:set var="abi" value="Baharuddin"></c:set>

	<br>
	<c:out value="my mother is ${ummi} and my father is ${abi} "></c:out>


	<h3>if condition</h3>
	<c:if test="${ummi.equals('Ramlah')}">
	Yes names is valid
	</c:if>

	<br>
	<h3>choose</h3>
	<c:set var="age" scope="session" value="16"></c:set>
	<c:choose>
		<c:when test="${(age > 4) && (age <=6)}">
		Masuk TK
		</c:when>

		<c:when test="${(age > 6) && (age <=12)}">
		Masuk SD
		</c:when>

		<c:when test="${(age > 12) && (age <=15)}">
		Masuk SMP
		</c:when>

		<c:when test="${(age > 15) && (age <=18)}">
		Masuk SMA
		</c:when>

		<c:otherwise>
		Kerja dan belajar lagi
		</c:otherwise>
	</c:choose>

	<br>
	<h3>looping</h3>

	<c:forEach var="i" begin="1" end="27" step="2">
		<c:out value="${i}"></c:out>
	</c:forEach>

	<br>
	<h3>for tokens => remove delimiter</h3>

	<c:forTokens items="Muhammad, Abid, Abdullah, Andi" delims="," var="x">
		<c:out value="${x }"></c:out>
	</c:forTokens>

	<br>
	<h3>catch</h3>

	<c:catch var="divideByZeroException">
		<%
		int ans = 2 / 0;
		%>
	</c:catch>

	<c:if test="${divideByZeroException != null }">
	Exception: ${divideByZeroException} <br>
	${divideByZeroException} <br>
	</c:if>


</body>
</html>