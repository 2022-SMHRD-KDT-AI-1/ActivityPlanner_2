<%@page import="java.util.ArrayList"%>
<%@page import="Model.ActivityDAO"%>
<%@page import="Model.ActivityDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
	<link rel="stylesheet" href="./CSS/detail.css" />
</head>

<body>
	<%@ include file="nav.jsp"%>
	<%
		int seq = Integer.parseInt(request.getParameter("act_seq"));
		ActivityDAO dao = new ActivityDAO();
		ActivityDTO dto = dao.showDetail(seq);
		
	/* String showType = null;

	 switch(dto.getAct_type()){
	case "0":
		showType = "공모전";
		break;
	case "1":
		showType = "봉사활동";
		break;
	case "2":
		showType = "인턴";
		break;
	case "3":
		showType = "강연";
		break;
	} */
	%>
	<h1></h1>
	<br />
	<h1></h1>
	<br />
	<h1></h1>
	<br />
	<h1></h1>
	<br />
	<%-- //	<h3 href="#" style="color: gray"><%=showType %></h3> --%>
	<hr />
	<h3 href="#" style="color: gray"><%=dto.getAct_name()%></h3>
	<!-- <p align="left"> -->
	<!-- <div>
      <img src="pics/pic1.jpg" width="520" align="left" />

      <h3 href="#" style="color: gray" margin="20px">이름</h3>
      <h3 href="#" style="color: gray" margin="20px">시작 날짜</h3>
      <h3 href="#" style="color: gray" margin="20px">끝 날짜</h3>
      <h3 href="#" style="color: gray" margin="20px">소개</h3>
      <h3 href="#" style="color: gray" margin="20px">혜택</h3>
      <h3 href="#" style="color: gray" margin="20px">주최, 주관</h3>
      <h3 href="#" style="color: gray" margin="20px">상금</h3>
      <h3 href="#" style="color: gray" margin="20px">분야</h3>
      <h3 href="#" style="color: gray" margin="20px">홈페이지</h3>
      <h3 href="#" style="color: gray" margin="20px">포스터</h3>
    </div> -->
	<fieldset style="width: 2000px; height: 3000px">
		<div>
			<div class="info_list clearfix">
				<div class="contest_poster">
					<picture> <a href="<%=dto.getAct_poster()%>"
						data-lightbox="poster"> <img src="<%=dto.getAct_poster()%>"
						 align="left" /></a></picture>
				</div>
				<div class="contest_field">
					<table>
						<caption>공모전/대외활동 정보</caption>
						<tbody>
							<tr>
								<th>주최/주관</th>
								<td><%=dto.getAct_center() %></td>
							</tr>
							<tr>
								<th>시작날짜</th>
								<td><%=dto.getAct_sdate()%></td>
							</tr>
							<tr>
								<th>끝 날짜</th>
								<td><%=dto.getAct_edate()%></td>
							</tr>
							<tr>
								<th>혜택</th>
								<td><%=dto.getAct_benefits()%></td>
							</tr>
							<tr>
								<th>상금</th>
								<td><%=dto.getAct_money()%></td>
							</tr>
							<tr>
								<th>분야</th>
								<td><%=dto.getAct_category()%></td>
							</tr>
							<tr>
								<th>홈페이지</th>
								<td><%=dto.getAct_homepage()%></td>
							</tr>
						</tbody>
					</table>
					<ul class="contest_button_wrap clearfix">
						<li><a
							href="https://etcimg.kbsec.com/html/design/20220119155403/notice.html"
							target="_blank" title="접수처로 이동"><button
									class="btn_orange homepage">
									<i class="fa fa-home"></i> <span>접수처</span>
								</button></a></li>
						<li><a
							href="https://etcimg.kbsec.com/html/design/20220119155403/notice.html"
							target="_blank" title="접수처로 이동"><button
									class="btn_orange homepage">
									<i class="fa fa-home"></i> <span>접수처</span>
								</button></a></li>
						<li><a
							href="https://etcimg.kbsec.com/html/design/20220119155403/notice.html"
							target="_blank" title="접수처로 이동"><button
									class="btn_orange homepage">
									<i class="fa fa-home"></i> <span>접수처</span>
								</button></a></li>
						<li><a
							href="https://etcimg.kbsec.com/html/design/20220119155403/notice.html"
							target="_blank" title="접수처로 이동"><button
									class="btn_orange homepage">
									<i class="fa fa-home"></i> <span>접수처</span>
								</button></a></li>
						<!-- <li id="sns_list" class="sns_list clearfix">
              <a
                href="#"
                onclick="shareSNS('facebook','KB증권 디지털 Idea Market 공모전','https://www.all-con.co.kr/view/contest/475135')"
                class="fb"
                ><img src="/img/ico_share_facebook.png" alt="페이스북 공유"
              /></a>
              <a
                href="#"
                onclick="shareSNS('twitter','KB증권 디지털 Idea Market 공모전','https://www.all-con.co.kr/view/contest/475135')"
                class="tw"
                ><img src="/img/ico_share_twitter.png" alt="트위터 공유"
              /></a>
              <a
                href="#"
                onclick="shareSNS('blog','KB증권 디지털 Idea Market 공모전','https://www.all-con.co.kr/view/contest/475135')"
                class="nv"
                ><img src="/img/ico_share_naver.png" alt="네이버블로그 공유"
              /></a>
              <img
                src="/img/ico_share_kakao.png"
                alt="카카오톡 공유"
                style="cursor: pointer"
                id="btn_share_kakao"
              />
            </li> -->
					</ul>
				</div>
			</div>
		</div>

		<!-- <p style="color: black; margin: 30px">이름</p>
      <p style="color: black; margin: 30px">시작날짜</p>
      <p style="color: black; margin: 30px">끝 날짜</p>
      <p style="color: black; margin: 30px">소개</p>
      <p style="color: black; margin: 30px">혜택</p>
      <p style="color: black; margin: 30px">주최, 주관</p>
      <p style="color: black; margin: 30px">상금</p>
      <p style="color: black; margin: 30px">분야</p>
      <p style="color: black; margin: 30px">홈페이지</p>
      <p style="color: black; margin: 30px">포스터</p>
    </div> -->

	</fieldset>

	<!-- ===== FLOW ===== -->
	<!--  -->
	<div id="contentFlow" class="ContentFlow" style="height: 499px">
		<!-- should be place before flow so that contained images will be loaded first -->
		<div class="loadIndicator" style="display: none">
			<div class="indicator"></div>
		</div>

		<div class="mouseoverCheckElement"></div>
	</div>
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />

	<br />

	<!-- ----봉사활동===== -->

	<br />

	<!-- 강연 -->

	<br />
	<!-- 인턴 -->
</body>
</html>