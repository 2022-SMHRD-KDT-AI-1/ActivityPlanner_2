<%@page import="Model.MyActingDAO"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Model.ActivityDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.ActivityDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
</head>
<link rel="stylesheet" href="./CSS/myActing.css" />
<script src="https://kit.fontawesome.com/246a4fba0b.js"
	crossorigin="anonymous"></script>
<body>
	<%
	String id = request.getParameter("user_id");
	MyActingDAO dao = new MyActingDAO();
	ArrayList<ActivityDTO> list = dao.showMyActing(id);
	/* SimpleDateFormat tf = new SimpleDateFormat("yyyy-MM-dd");
	String from = null; */
	%>

	<br />
	<br />
	<br />
	<br />
	<br />
	<table class="bookmark" align="center">
		<tr>
			<td id="mark">
				<h2 style="color: gray">저장한 대외활동</h2>
			</td>
		</tr>
	</table>
	<br />
	<br />
	<button id="alldelete" align="right">모두삭제</button>
	<div class="adv">공고</div>
	<table class="box" border="1px" align="center">
		<div class="p-list" align="center">
			<tr>
				<th>번호</th>
				<th><a class="type">타입</a></th>
				<th><a class="tit">대외활동명</a></th>
				<th><a class="organ">주최/주관</a></th>
				<th><a class="day">마감날짜</a></th>
				<th><a class="category">분야</a></th>
				<th><a class="delete">삭제</a></th>
			</tr>
			<%
				if (list != null) {
				for (int i = 0; i < list.size(); i++) {
			%>
		
			<tr>
			<td><%=i + 1%></td>
			<td><%=list.get(i).getAct_type()%></td>
			<td><%=list.get(i).getAct_name()%></td>
			<td><%=list.get(i).getAct_center()%></td>
			<td><%=list.get(i).getAct_edate()%></td>
			<td><%=list.get(i).getAct_category()%></td>
			<td><button type="button" id="delete">
					<img src="./pics/delete.png">
				</button></td>
		</tr>
		<%
			}
		} else {
		%>
		<tr>
			<td colspan="6">저장한 대외활동이 없습니다.</td>
		</tr>
		<%
			}
		%>
		</div>
		<!--   <tr>
          <td>2022 대구 라이프스타일 굿즈 공모전</td>
          <td>대구관광재단</td>
          <td>D-10 접수중</td>
          <td>202</td>
          <td>
          <button type="button" id="delete" >
            <img src="./pics/delete.png">
          </button></td>
        </tr>
      </div>
      <br><br> -->
	</table>
	<br>
	<br>
	<div type="submit" name="home" value="홈으로돌아가기" text align="center">홈으로돌아가기</div>
</body>
</html>