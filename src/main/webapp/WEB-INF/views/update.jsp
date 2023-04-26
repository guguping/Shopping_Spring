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
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="/resources/js/bootstrap.bundle.min.js"></script>
</head>
<body>
  <h2>안녕 나는 h2</h2>

  <div class="container" style="width: 300px;margin: auto">
      <form action="/update" method="post" onsubmit="return fun3()">
          <label for="custno">회원번호</label>
          <input type="text" name="custno" value="${memberDTO.custno}" id="custno" readonly>
          <label for="custName">회원성명</label>
          <input type="text" name="custName" value="${memberDTO.custName}" id="custName">
          <label for="phone">회원전화</label>
          <input type="text" name="phone" value="${memberDTO.phone}" id="phone">
          <label for="address">회원주소</label>
          <input type="text" name="address" value="${memberDTO.address}" id="address">
          <label for="joinDate">가입일자</label>
          <input type="text" name="joinDate" value="${memberDTO.joinDate}" id="joinDate">
          <label for="grade">고객등급</label>
          <input type="text" maxlength="1" name="grade" value="${memberDTO.grade}" id="grade">
          <label for="city">도시코드</label>
          <input type="text" maxlength="2" name="city" value="${memberDTO.city}" id="city">
          <button>등록</button>
          <button type="button" onclick="fun2()">취소</button>
      </form>
  </div>
  <a href="/" style="text-decoration-line : none">인덱스로 이동</a>
</body>
<script>
    const fun2 = () =>{
        location.href = "/"
    }
    const fun3 = ()=>{
        const cust_Name = document.getElementById("custName");
        if (cust_Name.value.length == 0){
            alert("회원성명이 입력되지 않았습니다");
            cust_Name.focus();
            return false;
        }else{
            return true;
        }
    }
</script>
</html>
