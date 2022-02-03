<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="./findAccount.css" />
  </head>
  <body>
    <img src="timeB로고.svg" id="logo" />
    <div class="container">
      <div class="main-wrap" width="40px" height="20px">
        <form class="loginForm" action="" method="post">
          <div class="textForm" div style="text-align: center">
            <input
              name="name"
              type="text"
              class="name"
              placeholder="이름을 입력하세요."
            />
          </div>
          <div class="textForm" div style="text-align: center">
            <input
              name="phonenumber"
              type="text"
              class="number"
              placeholder="전화번호를 입력하세요."
            />
          </div>
          <div class="button" style="text-align: center">
            <button>아이디 찾기</button>
          </div>
        </form>
      </div>
    </div>
  </body>
</html>