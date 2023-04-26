<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-26
  Time: 오후 6:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>updateResult</title>
</head>
<script>
  const result = ${updateResult};
  if (result >0){
    alert("정보 수정 성공!");
    location.href ="/list";
  } else {
    alert("문제가 있읍니다");
    location.href = "/index";
  }
</script>
<body>

</body>
</html>

