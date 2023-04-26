<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-26
  Time: 오후 1:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index</title>
</head>
<body>
    <h2>index입니다</h2>
    <button onclick="fun1()">멤버 등록</button>
    <button onclick="fun2()">회원목록조회/수정</button>
</body>
<script>
    const fun1 = ()=>{
        location.href = "/save";
    }
    const fun2 = () => {
        location.href = "/list";
    }
</script>
</html>
