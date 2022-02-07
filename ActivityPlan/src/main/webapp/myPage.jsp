<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<link rel="stylesheet" href="./CSS/myPage.css" />
<style>
</style>
</head>

<body>
	<%@ include file="nav.jsp"%>
	<div id="wrap"></div>

	<div id="container" style="height: 1049px;">
		<!-- CONTENTS -->
		<!-- CONTENTS -->
		<div id="content" class="section_home">
			<div class="column">

				<!-- 프로필 설정 -->
				<div class="sh_group">
					<div class="sh_header">
						<h2>내 정보 수정</h2>

						<dt class="blind">&nbsp;</dt>


						<div class="sh_content">
							<dl class="sh_lst2">
								<dt class="nic_tit">닉네임</dt>
								<dd class="nic_desc"><%=info.getUser_nick()%></dd>

								<!-- <dt> 이메일</dt>
                  <dd>sa******@y*******.co.kr</dd> -->
								<dt>휴대전화</dt>
								<dd><%=info.getUser_tel()%></dd>
							</dl>
							<dl class="sh_lst2 nudge" id="divNudge">
								<dt></dt>
								<dd>
									<div class="nudge_tooltip">
										<span class="banner_area"> <span class="nudge_edge"></span>
											<a href="javascript:closeNudge();" role="button"
											aria-label="닫기" class="nudge_close"></a>
										</span>
									</div>
								</dd>
							</dl>
						</div>
						</dl>
					</div>
					<p class="btn_area_btm">
						<a href="modify.jsp"
							onclick="changeImage();clickcr(this,'imn.prfmodify','','',event);"
							class="btn_model"><b class="btn2">수정</b></a>
					</p>
				</div>

				<!-- 캘린더 관리 -->
				<div class="sh_group">
					<div class="sh_header">
						<h2>MY 캘린더</h2>
					</div>
					<div class="sh_content">

						<p class="contxt">
							내가 추가한 대외활동을 편리하게!<br>MY 캘린더에서 나의 계획과 일정 대외활동을 관리해보세요!
						</p>

					</div>
					<p class="btn_area_btm">
						<a href="./cal.jsp?user_id=<%=info.getUser_id()%>" class="btn_model"
							onclick="clickcr(this,'imn.signhis','','',event);"><b
							class="btn2">MY 캘린더 확인</b></a> <a
							href="/user2/help/externalAuth?lang=ko_KR" class="btn_model"
							onclick="clickcr(this,'imn.signmng','','',event);"><b
							class="btn2">MY캘린더 수정</b></a>
					</p>
				</div>

				<!-- 이력 관리 -->
				<div class="sh_group">
					<div class="sh_header">
						<h2>내 이력 관리</h2>
					</div>
					<div class="sh_content">
						<p class="contxt">
							내가 참가하거나<br> 수상을 한 대외활동을 관리할 수 있습니다.
						</p>
					</div>
					<p class="btn_area_btm">
						<a href="https://pay.naver.com/shipping/list" class="btn_model"
							onclick="clickcr(this,'imn.addcheck','','',event);"><b
							class="btn2">조회하기</b></a>
					</p>
				</div>
			</div>
			<div class="column">

				<!-- 관심사 수정 -->
				<div class="sh_group ">
					<div class="sh_header">
						<h2>관심사 수정</h2>
						<dt class="blind">&nbsp;</dt>

						<div class="sh_content">

							<p class="contxt">
								내 관심사를 수정할 수 있습니다.<br>내 관심사를 수정하여 대외활동을 추천받을 수 있습니다.
							</p>

						</div>

					</div>

					<p class="btn_area_btm">
						<a href="/user2/help/changeUserInfo?menu=nid&amp;lang=ko_KR"
							onclick="clickcr(this,'imn.cntmodify','','',event);"
							class="btn_model"><b class="btn2">수정</b></a>
					</p>
				</div>
				<!-- 찜 목록 -->
				<div class="sh_group">
					<div class="sh_header">
						<h2>찜 목록</h2>


						<div class="sh_content">
							<p class="contxt">
								내가 추가한 관심 대외활동이 있습니다.<br>대외활동을 확인하거나 삭제할 수 있습니다.
							</p>
						</div>
						<p class="btn_area_btm">
							<a href="./bookmark.jsp?user_id=<%=info.getUser_id()%>"
								onclick="clickcr(this,'imn.regmodify','','',event);"
								class="btn_model"><b class="btn2">확인하기</b></a>
						</p>
					</div>
				</div>


				<p class="desc_sub">
					타임비를 더 이상 이용하지 않는다면 <a
						href="/user2/help/leaveId?menu=nid&amp;lang=ko_KR"
						onclick="clickcr(this,'imn.memberout','','',event);" class="more">회원탈퇴
						바로가기</a>
				</p>
				<div class="resize-triggers">
					<div class="expand-trigger">
						<div style="width: 955px; height: 100px;"></div>
					</div>
					<div class="contract-trigger"></div>
				</div>
			</div>
			<!-- //CONTENTS -->
			<script type="text/javascript">
				document.getElementById("mainBody").className = "skin_main";
			</script>
		</div>




		<script type="text/javascript" src="/inc/common/js/jquery.resize.js"></script>
		<script type="text/javascript">
			var ua = window.navigator.userAgent.toLowerCase();
			var cur_container_height = Number(document
					.getElementById("content").clientHeight);
			var min_container_height = 647;
			var header_height = 140;
			var footer_height = 85;

			window.onload = changeContentSize; // Window 창 로드시
			window.onresize = changeContentSize; // Window 창 크기를 조정할때마다
			$("#content").resize(changeContentSize);

			function changeContentSize() {
				cur_container_height = Number(document
						.getElementById("content").clientHeight);

				var container_height = min_container_height;
				var window_height = Number(document.documentElement.clientHeight)
						- header_height - footer_height;
				if (window_height > cur_container_height) {
					if (window_height > min_container_height) {
						container_height = window_height;
					}
				} else {
					if (cur_container_height > min_container_height) {
						container_height = cur_container_height;
					}
				}

				if (navigator.appName == 'Netscape'
						&& navigator.userAgent.search('Trident') != -1) { // ie11 추가
					document.getElementById("container").style.height = container_height
							+ "px";
				} else if (window.navigator.userAgent.indexOf("MSIE") == -1
						|| (document.all && window.XMLHttpRequest)) { // ie6 제외
					document.getElementById("container").style.height = container_height
							+ "px";
				} else {
					document.getElementById("container").style.height = "100%";
				}
			}

			function setContainerHeight(height) {
				if (height >= 0) {
					cur_container_height = height;
				} else {
					cur_container_height = Number(document
							.getElementById("container").clientHeight);
				}

				if (height == -9 || height == 0 || height == "undefined") { //공지사항 예외처리 //ie7대응
					document.getElementById("container").style.height = "100%";
				} else {
					changeContentSize();
				}
			}
		</script>
	</div>
	</div>