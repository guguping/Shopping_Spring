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
    <link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
<%@include file="./component/header.jsp"%>
<%@include file="./component/nav.jsp"%>
    <div class="container" id="section">
        <h2>쇼핑몰회원관리 프로그램</h2>
        <p>쇼핑몰 회원정보와 회원매출정보 데이터베이스를 구축하고 회원관리 프로그램을 작성하는 프로그램이다</p>
        <p>프로그램 작성 순서</p>
        <p>1.회원정보 테이블을 생성한다.</p>
        <p>2.매출정보 테이블을 생성한다.</p>
        <p>3.회원정보,매출정보테이블에 제시된 문제지의 참조데이터를 추가 생성한다.</p>
        <p>4.회원정보 입력 화면프로그램을 작성한다.</p>
        <p>5.회원정보 조회 프로그램을 작성한다.</p>
        <p style="margin-bottom: 0">6.회원매출정보 조회 프로그램을 작성한다.</p>
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
