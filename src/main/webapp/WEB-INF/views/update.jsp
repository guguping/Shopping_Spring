<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-26
  Time: 오후 5:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>update</title>
    <%--    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">--%>
    <script src="/resources/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
<%@include file="./component/header.jsp" %>
<%@include file="./component/nav.jsp" %>
<div class="container" id="section">
    <h2 id="titail">홈쇼핑 회원 정보 변경</h2>
    <form action="/update" method="post" onsubmit="return fun4()">
        <table>
            <tr>
                <th>회원번호</th>
                <td><input type="text" name="custno" value="${memberDTO.custno}" id="custno" readonly></td>
            </tr>
            <tr>
                <th>회원성명</th>
                <td><input type="text" name="custName" value="${memberDTO.custName}" id="custName"></td>
            </tr>
            <tr>
                <th>회원전화</th>
                <td><input type="text" name="phone" value="${memberDTO.phone}" id="phone"></td>
            </tr>
            <tr>
                <th>회원주소</th>
                <td><input type="text" name="address" value="${memberDTO.address}" id="address"></td>
            </tr>
            <tr>
                <th>가입일자</th>
                <td><input type="text" name="joinDate" value="${memberDTO.joinDate}" id="joinDate"></td>
            </tr>
            <tr>
                <th>고객등급</th>
                <td><input type="text" maxlength="1" name="grade" value="${memberDTO.grade}" id="grade"></td>
            </tr>
            <tr>
                <th>도시코드</th>
                <td><input type="text" maxlength="2" name="city" value="${memberDTO.city}" id="city"></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <input style="display: inline" type="submit" value="등록">
                    <input style="display: inline" type="button" onclick="fun3()" value="취소">
                </td>
            </tr>
        </table>
    </form>
</div>
<%@include file="./component/footer.jsp" %>
</body>
<script>
    const fun3 = () => {
        location.href = "/"
    }
    const fun4 = () => {
        const cust_Name = document.getElementById("custName");
        if (cust_Name.value.length == 0) {
            alert("회원성명이 입력되지 않았습니다");
            cust_Name.focus();
            return false;
        } else {
            return true;
        }
    }
</script>
</html>
