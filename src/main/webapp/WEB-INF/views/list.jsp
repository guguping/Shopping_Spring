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
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="/resources/js/bootstrap.bundle.min.js"></script>
</head>

<body>
  <h2>안녕 나는 list</h2>
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
                <td><a href="/update?custno=${s.custno}">${s.custno}</a></td>
                <td>${s.custName}</td>
                <td>${s.phone}</td>
                <td>${s.address}</td>
                <td>${s.joinDate}</td>
                <td>${s.grade}</td>
                <td>${s.city}</td>
            </tr>
            </c:forEach>
        </table>
    <a href="/" style="text-decoration-line : none">인덱스로 이동</a>
</body>
</html>
