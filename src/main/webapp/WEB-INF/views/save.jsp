<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-26
  Time: 오후 1:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>save</title>
  <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
  <script src="/resources/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<h2>홈쇼핑 회원 등록</h2>
<div class="container" style="width: 300px;margin: auto">
  <table class="table-bordered" style="text-align: center">
    <form action="/saveParam" method="post" onsubmit="return fun3()">
      <tr>
        <th><label for="custno">회원번호</label></th>
        <td><input type="text" name="custno" placeholder="자동발생" id="custno" readonly></td>
      </tr>
      <tr>
        <th><label for="custName">회원성명</label></th>
        <td><input type="text" name="custName" id="custName"></td>
      </tr>
      <tr>
        <th><label for="phone">회원전화</label></th>
        <td><input type="text" name="phone" id="phone"></td>
      </tr>
      <tr>
        <th><label for="address">회원주소</label></th>
        <td><input type="text" name="address" id="address"></td>
      </tr>
      <tr>
        <th><label for="joinDate">가입일자</label></th>
        <td><input type="text" name="joinDate" id="joinDate"></td>
      </tr>
      <tr>
        <th><label for="grade">고객등급</label></th>
        <td><input type="text" maxlength="1" name="grade" id="grade"></td>
      </tr>
      <tr>
        <th><label for="city">도시코드</label></th>
        <td><input type="text" maxlength="2" name="city" id="city"></td>
      </tr>
      <tr>
        <th></th>
        <td><button>등록</button>
        <button type="button" onclick="fun2()">취소</button></td>
      </tr>
    </form>
  </table>
</div>
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
