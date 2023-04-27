<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-27
  Time: 오후 4:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>member_sales</title>
    <link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
<%@include file="./component/header.jsp" %>
<%@include file="./component/nav.jsp" %>
<div class="container" id="section">
    <h2 id="titail">회원 매출 리스트</h2>
    <table class="table table-dark table-hover">
        <tr>
            <th>회원번호</th>
            <th>회원성명</th>
            <th>고객등급</th>
            <th>매출</th>
        </tr>
        <c:forEach items="${mList}" var="s">
            <tr>
                <td><a href="/update?custno=${s.custno}" style="text-decoration: none">${s.custno}</a></td>
                <td>${s.custName}</td>
                <td>${s.grade}</td>
                <td>${s.price}</td>
            </tr>
        </c:forEach>
    </table>
</div>
<%@include file="./component/footer.jsp" %>
</body>
</html>
