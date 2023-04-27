```
    drop table if exists member_tbl_02;
    create table member_tbl_02(
        custno bigint auto_increment primary key,
        custname varchar(20),
        phone varchar(13),
        address varchar(60),
        joindate date,
        grade varchar(1),
        city varchar(2)
);
```

```javascript
const saveForm = document.getElementById("save-form");
  saveForm.addEventListener("submit",function (e){
    e.preventDefault(); // 해당 요소의 기본 동작을 수행하지 않을 때
  });
```
preventDefault 새로 배움<br>

-   인텔리제이 MySQL 연동하기
-   인텔리제이 HTML쉽게 사용하기
-   component폴더 만들고 include써보기
-   try cach 를 사용하여 save404에러 잡기

