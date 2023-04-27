<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="menu">
  <li>
    <a onclick="fun1()">멤버 등록</a>
  </li>
  <li>
    <a onclick="fun2()">회원목록조회/수정</a>
  </li>
  <li>
    <a onclick="money()">회원매출조회</a>
  </li>
  <li>
    <a onclick="fun5()">홈으로</a>
  </li>
</div>
<script>
  const fun1 = ()=>{
    location.href = "/save";
  }
  const fun2 = () => {
    location.href = "/list";
  }
  const fun5 = () => {
    location.href = "/";
  }
  const money = () =>{
    location.href = "/membersales";
  }
</script>
