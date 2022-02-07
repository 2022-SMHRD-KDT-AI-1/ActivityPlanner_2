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
<link rel="stylesheet" href="CSS/bookmark.css" />
<script src="https://kit.fontawesome.com/246a4fba0b.js"
	crossorigin="anonymous"></script>
<body>
	<%
		String id = request.getParameter("user_id");
	MyActingDAO dao = new MyActingDAO();
	ArrayList<ActivityDTO> list = dao.showMyActing(id);
	
	%>
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<form>

		<table class="bookmark" align="center">
			<tr>
				<td id="mark">
					<h2 style="color: gray;">찜 목록</h2>
				</td>
			</tr>
		</table>
		<br /> <br />


		<table class="box" border="1" align="center">
			<div class="p-list" align="center">
				<%
					if (list.size() <= 0) {
				%>

				<tr style="width: auto;">
					<th style="border-inline-color: white;"><div id="contest_wrap">

							<div id="contest_info">
								<div class="info_list clearfix">
									<div class="contest_poster">
										<div style="width: 300px; height: 200px"></div>
									</div></th>
					<th><a class="organ">
							<div
								style="width: 500px; border-inline-color: white; font-weight: bolder;">즐겨찾기한
								대외활동이 없습니다.</div>
					</a></th>


					<th style="border-inline-color: white;"><a class="sDate"><div
								style="font-size: 17px; width: 200px; text-align: right; color: gray;"
								class="bmark"></a></th>
					<th><a ID="eDate"><div
								style="width: 200px; text-align: left; color: gray; font-size: 17px;"
								class="bmark"></a></th>
					<th><a class="day">
							<div style="width: 100px; font-size: 20px; margin: 10px;"
								class="dday"></div>
					</a></th>
					<th><a title="삭제하기"><button class="deleteButton">
								<i></i>
								<!-- <span>삭제</span> -->
							</button></a></th>
				</tr>
				<%
					} else {
					for (int i = 0; i < list.size(); i++) {
				%>
				<tr style="width: auto;">
					<th style="border-inline-color: white;"><div id="contest_wrap">
							<div id="contest_info">
								<div class="info_list clearfix">
									<div class="contest_poster">
										<div style="width: 300px; height: 200px">
											<img src="<%=list.get(i).getAct_poster() %>" width="150px" />
										</div>
									</div></th>
					<th><a class="organ">
							<div
								style="width: 500px; border-inline-color: white; font-weight: bolder;"><%=list.get(i).getAct_name() %></div>
					</a></th>


					<th style="border-inline-color: white;"><a class="sDate"><div
								style="font-size: 17px; width: 200px; text-align: right; color: gray;"
								class="bmark"><%=list.get(i).getAct_sdate() %> ~</a></th>
					<th><a ID="eDate"><div
								style="width: 200px; text-align: left; color: gray; font-size: 17px;"
								class="bmark"><%=list.get(i).getAct_edate() %></a></th>
					<th><a class="day">
							<div style="width: 100px; font-size: 20px; margin: 10px;"
								class="dday">진행중</div>
					</a></th>
					<th><form action="DeleteService"><button type="submit" name="act_seq" class="deleteButton" value="<%=list.get(i).getAct_seq() %>">
								<i></i> <span>삭제</span>
							</button></form></th>
				</tr>
				<%
					}
				}
				%>
			</div>

			</div>
		</table>
		<!--       <table class="box" border="1"  align="center" >
        <div class="p-list" align="center">
          <tr style="width: auto;">
            <th style="border-inline-color : white;"><div id="contest_wrap" >
              
              <div id="contest_info">
                <div class="info_list clearfix">
                  <div class="contest_poster">
                    <div style="width: 300px; height:200px">
                      <a
                        href="/data/poster/2201/475012.jpg?v=1643969171"
                        data-lightbox="poster"
                        ><img src="475012.jpg" width="150px"
                      /></a>
                    </div>
                  </div></th>
            <th ><a class="organ"> <div style="width: 500px; border-inline-color: white; font-weight: bolder; ">2022 대구 라이프스타일 굿즈 공모전</div></a></th>
            
            
            <th style= "border-inline-color : white;"><a class="sDate"><div style=" font-size: 17px; width: 200px; text-align: right ;  color: gray;"  class="bmark">
            2021. 01. 19 ~</a></th>
            <th><a ID="eDate"><div style="width: 200px; text-align: left ; color: gray; font-size: 17px;"  class="bmark" >
           2021. 02. 23</a></th>
            <th><a id="day"> <div style="width: 100px; font-size: 20px; margin: 10px;"  class="eday" > 마감</div></a></th>
            <th> <a  title="삭제하기"
              ><button class="deleteButton">
                <i ></i> <span>삭제</span>
              </button></a
            ></th>
          </tr>
        </div>
         
        </div>
      <br><br>
    </table> -->
		<br> <br>
		<div id="btn_submit " ; align=center;>
			<a
				href="main.jsp"><button
					type="button" class="btn_submit btn">홈으로 돌아가기</button></a>
		</div>
		</div>
</body>
</html>