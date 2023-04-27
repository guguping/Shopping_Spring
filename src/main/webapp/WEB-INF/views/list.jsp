<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-26
  Time: 오후 2:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>list</title>
<%--    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">--%>
    <script src="/resources/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
<%@include file="./component/header.jsp"%>
<%@include file="./component/nav.jsp"%>
<div class="container" id="section">
    <h2 id="titail">홈쇼핑 회원 리스트</h2>
        <table class="table table-dark table-hover">
            <tr>
                <th>회원번호</th>
                <th>회원성명</th>
                <th>전화번호</th>
                <th>주소</th>
                <th>가입일자</th>
                <th>고객등급</th>
                <th>거주지역</th>
            </tr>
            <c:forEach items="${mList}" var="s">
            <tr>
                <td><a href="/update?custno=${s.custno}" style="text-decoration: none">${s.custno}</a></td>
                <td>${s.custName}</td>
                <td>${s.phone}</td>
                <td>${s.address}</td>
                <td>${s.joinDate}</td>
                <td>${s.grade}</td>
                <td>${s.city}</td>
            </tr>
            </c:forEach>
        </table>
</div>
<%@include file="./component/footer.jsp"%>
</body>
<script>
    const fun1 = ()=>{
        location.href = "/save";
    }
    const fun2 = () => {
        location.href = "/list";
    }
    const fun5 = () => {
        location.href="/";
    }
</script>
</html>
