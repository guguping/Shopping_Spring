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
      <table class="table-bordered" style="text-align: center">
          <form action="/update" method="post" onsubmit="return fun3()">
              <tr>
                  <th><label for="custno">회원번호</label><br></th>
                  <td><input type="text" name="custno" value="${memberDTO.custno}" id="custno" readonly></td>
              </tr>
              <tr>
                  <th><label for="custName">회원성명</label></th>
                  <td><input type="text" name="custName" value="${memberDTO.custName}" id="custName"></td>
              </tr>
              <tr>
                  <th><label for="phone">회원전화</label></th>
                  <td><input type="text" name="phone" value="${memberDTO.phone}" id="phone"></td>
              </tr>
              <tr>
                  <th><label for="address">회원주소</label></th>
                  <td><input type="text" name="address" value="${memberDTO.address}" id="address"></td>
              </tr>
              <tr>
                  <th><label for="joinDate">가입일자</label></th>
                  <td><input type="text" name="joinDate" value="${memberDTO.joinDate}" id="joinDate"></td>
              </tr>
              <tr>
                  <th><label for="grade">고객등급</label></th>
                  <td><input type="text" maxlength="1" name="grade" value="${memberDTO.grade}" id="grade"></td>
              </tr>
              <tr>
                  <th><label for="city">도시코드</label></th>
                  <td><input type="text" maxlength="2" name="city" value="${memberDTO.city}" id="city"></td>
              </tr>
              <tr>
                  <th></th>
                  <td><button>등록</button>
                      <button type="button" onclick="fun2()">취소</button></td>
              </tr>
          </form>
      </table>
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
