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
<!--  <link
      rel="stylesheet"
      type="text/css"
      href="./하하하하하하하하.css"
      head=""
    /> -->
</head>
<body>
	<%@include file="nav.jsp"%>

	<%
		/* String type = request.getParameter("type"); */
	String type = request.getParameter("type");

	ActivityDAO dao = new ActivityDAO();
	ArrayList<ActivityDTO> b_list = dao.showList(type);
	%>

	<div style="text-align: left">
		<fieldset style="width: 2000px; height: 2000px">
			<h2 style="text-align: center; height: 150px"></h2>
			<h2 style="text-align: center"></h2>
			<h2 style="text-align: center; height: 50px"></h2>

			<!--   <hr align-text="right" width="1800" size="2" color="black" /> -->
			<h1 style="text-align: center;">
			<%if(type.equals("0")){%>
				공모전
			<%} %>
			
			</h1>
			<hr align-text="right" width="2000" size="2" color="skyblue" />

			<div
				class="MuiGrid-root MuiGrid-item MuiGrid-grid-xs-6 MuiGrid-grid-sm-6 MuiGrid-grid-md-3">
				<div class="jss124">
					<div class="MuiBox-root jss224 jss125">
						<!-- <a class="jss126 jss128" href="/activity/77512"> -->
						<div class="jss129"
							style="position: relative; overflow: hidden; display: flex; flex-direction: column; justify-content: center; align-items: left; height: 20%;">
							<!-- 								&gt; -->

							<div
								style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; background: white; transition: opacity 0.3s ease 0s; opacity: 0;"></div>
							<div class="MuiBox-root jss231 jss225 jss226">
								<!-- 		<svg class="MuiSvgIcon-root jss227" focusable="false"
										viewBox="0 0 12 16" aria-hidden="true"
										xmlns="http://www.w3.org/2000/svg" width="12" height="16">
                      <path fill="currentColor"
											d="M9.006 0H2.994A2.994 2.994 0 000 2.994V16l6-2.368L12 16V2.994A2.994 2.994 0 009.006 0z"></path>
                    </svg> -->
								<!-- <span class="MuiTypography-root jss228 MuiTypography-caption">0</span> -->
							</div>
							<table>
								<tbody>
									<%
										for (int i = 0; i < b_list.size(); i++) {
									%>
										<% 
											if(i % 5 == 0) {
										%>
										<tr>
										<%
											}
										%>
										<td><div class="poster"><a href="#"><img
												alt="<%=b_list.get(i).getAct_name()%>"
												src="<%=b_list.get(i).getAct_poster()%>" sizes="100vw"
												style="height: 300px; width: 45%; visibility: visible; display: block;"
											
												div="" />
												</a>
												</div>
												<div class="subject">
												<p><%=b_list.get(i).getAct_name() %></p>
												</div></td>
										<%
											if (i % 5 == 4) {
										%>
											</tr>
										<%
											} %>
									<%
										}
									%>
									<!-- <tr>
											<td><a href="#"></a><img alt="고교학점제 2022 학종 수시 자소서 공모전"
												src="https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_250,dpr_1/https://api.linkareer.com/attachments/67134"
												data-src="https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_750/https://api.linkareer.com/attachments/67134"
												data-srcset="https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_250,dpr_1/https://api.linkareer.com/attachments/67134 1x,
                      https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_250,dpr_2/https://api.linkareer.com/attachments/67134 2x,
                      https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_250,dpr_3/https://api.linkareer.com/attachments/67134 3x"
												sizes="100vw"
												style="height: 300px; width: 45%; visibility: visible;"
												srcset="
                              https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_250,dpr_1/https://api.linkareer.com/attachments/67134 1x,
                              https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_250,dpr_2/https://api.linkareer.com/attachments/67134 2x,
                              https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_250,dpr_3/https://api.linkareer.com/attachments/67134 3x
                            "
												div="" /></a></td>
											<td><img alt="28회 지용신인문학상 공모"
												src="https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_250,dpr_1/https://api.linkareer.com/attachments/67122"
												data-src="https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_900/https://api.linkareer.com/attachments/67122"
												data-srcset="https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_1/https://api.linkareer.com/attachments/67122 1x,
                        https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_2/https://api.linkareer.com/attachments/67122 2x,
                        https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_3/https://api.linkareer.com/attachments/67122 3x"
												sizes="100vw"
												style="height: 300px; width: 45%; visibility: visible;"
												srcset="
                              https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_250,dpr_1/https://api.linkareer.com/attachments/67122 1x,
                              https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_250,dpr_2/https://api.linkareer.com/attachments/67122 2x,
                              https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_250,dpr_3/https://api.linkareer.com/attachments/67122 3x
                            "
												div="" /></td>

											<td><img alt="제29회 대한민국 임팩테크대상' 응모작 공모"
												src="https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_1/https://api.linkareer.com/attachments/67119"
												data-src="https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_900/https://api.linkareer.com/attachments/67119"
												data-srcset="https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_1/https://api.linkareer.com/attachments/67119 1x,
                  https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_2/https://api.linkareer.com/attachments/67119 2x,
                  https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_3/https://api.linkareer.com/attachments/67119 3x"
												sizes="100vw"
												style="height: 300px; width: 45%; visibility: visible;"
												srcset="
                              https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_1/https://api.linkareer.com/attachments/67119 1x,
                              https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_2/https://api.linkareer.com/attachments/67119 2x,
                              https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_3/https://api.linkareer.com/attachments/67119 3x
                            "
												div="" /> &gt;</td>
											<td><img alt="2022 송월 30초 영화제"
												src="https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_1/https://api.linkareer.com/attachments/67090"
												data-src="https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_900/https://api.linkareer.com/attachments/67090"
												data-srcset="https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_1/https://api.linkareer.com/attachments/67090 1x,
                        https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_2/https://api.linkareer.com/attachments/67090 2x,
                        https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_3/https://api.linkareer.com/attachments/67090 3x"
												sizes="100vw"
												style="height: 300px; width: 45%; visibility: visible;"
												srcset="
                              https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_1/https://api.linkareer.com/attachments/67090 1x,
                              https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_2/https://api.linkareer.com/attachments/67090 2x,
                              https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_3/https://api.linkareer.com/attachments/67090 3x
                            "
												div="" /> &gt;</td>
											<td><img alt="제9회 광융합 제품디자인·기술사업화 아이디어 공모전"
												src="https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_1/https://api.linkareer.com/attachments/67081"
												data-src="https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_900/https://api.linkareer.com/attachments/67081"
												data-srcset="https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_1/https://api.linkareer.com/attachments/67081 1x,
                  https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_2/https://api.linkareer.com/attachments/67081 2x,
                  https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_3/https://api.linkareer.com/attachments/67081 3x"
												sizes="100vw"
												style="height: 300px; width: 45%; visibility: visible;"
												srcset="
                              https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_1/https://api.linkareer.com/attachments/67081 1x,
                              https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_2/https://api.linkareer.com/attachments/67081 2x,
                              https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_3/https://api.linkareer.com/attachments/67081 3x
                            "
												h2="" /></td>
										</tr>
										<tr>
											<td><img alt="제9회 광융합 제품디자인·기술사업화 아이디어 공모전"
												src="https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_1/https://api.linkareer.com/attachments/67081"
												data-src="https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_900/https://api.linkareer.com/attachments/67081"
												data-srcset="https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_1/https://api.linkareer.com/attachments/67081 1x,
                https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_2/https://api.linkareer.com/attachments/67081 2x,
                https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_3/https://api.linkareer.com/attachments/67081 3x"
												sizes="100vw"
												style="height: 300px; width: 40%; visibility: visible;"
												srcset="
                              https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_1/https://api.linkareer.com/attachments/67081 1x,
                              https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_2/https://api.linkareer.com/attachments/67081 2x,
                              https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_3/https://api.linkareer.com/attachments/67081 3x
                            "
												div="" /></td>
											<td><img alt="제9회 광융합 제품디자인·기술사업화 아이디어 공모전"
												src="https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_1/https://api.linkareer.com/attachments/67081"
												data-src="https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_900/https://api.linkareer.com/attachments/67081"
												data-srcset="https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_1/https://api.linkareer.com/attachments/67081 1x,
                    https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_2/https://api.linkareer.com/attachments/67081 2x,
                    https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_3/https://api.linkareer.com/attachments/67081 3x"
												sizes="100vw"
												style="height: 300px; width: 45%; visibility: visible;"
												srcset="
                              https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_1/https://api.linkareer.com/attachments/67081 1x,
                              https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_2/https://api.linkareer.com/attachments/67081 2x,
                              https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_3/https://api.linkareer.com/attachments/67081 3x
                            "
												div="" /></td>
											<td><img alt="제9회 광융합 제품디자인·기술사업화 아이디어 공모전"
												src="https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_1/https://api.linkareer.com/attachments/67081"
												data-src="https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_900/https://api.linkareer.com/attachments/67081"
												data-srcset="https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_1/https://api.linkareer.com/attachments/67081 1x,
                    https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_2/https://api.linkareer.com/attachments/67081 2x,
                    https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_3/https://api.linkareer.com/attachments/67081 3x"
												sizes="100vw"
												style="height: 300px; width: 45%; visibility: visible;"
												srcset="
                              https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_1/https://api.linkareer.com/attachments/67081 1x,
                              https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_2/https://api.linkareer.com/attachments/67081 2x,
                              https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_3/https://api.linkareer.com/attachments/67081 3x
                            "
												div="" /></td>
											<td><img alt="제9회 광융합 제품디자인·기술사업화 아이디어 공모전"
												src="https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_1/https://api.linkareer.com/attachments/67081"
												data-src="https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_900/https://api.linkareer.com/attachments/67081"
												data-srcset="https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_1/https://api.linkareer.com/attachments/67081 1x,
                    https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_2/https://api.linkareer.com/attachments/67081 2x,
                    https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_3/https://api.linkareer.com/attachments/67081 3x"
												sizes="100vw"
												style="height: 300px; width: 45%; visibility: visible;"
												srcset="
                              https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_1/https://api.linkareer.com/attachments/67081 1x,
                              https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_2/https://api.linkareer.com/attachments/67081 2x,
                              https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_3/https://api.linkareer.com/attachments/67081 3x
                            "
												div="" /></td>
											<td><img alt="제9회 광융합 제품디자인·기술사업화 아이디어 공모전"
												src="https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_1/https://api.linkareer.com/attachments/67081"
												data-src="https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_900/https://api.linkareer.com/attachments/67081"
												data-srcset="https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_1/https://api.linkareer.com/attachments/67081 1x,
                    https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_2/https://api.linkareer.com/attachments/67081 2x,
                    https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_3/https://api.linkareer.com/attachments/67081 3x"
												sizes="100vw"
												style="height: 300px; width: 45%; visibility: visible;"
												srcset="
                              https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_1/https://api.linkareer.com/attachments/67081 1x,
                              https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_2/https://api.linkareer.com/attachments/67081 2x,
                              https://res.cloudinary.com/linkareer/image/fetch/f_auto,w_300,dpr_3/https://api.linkareer.com/attachments/67081 3x
                            "
												div="" /></td>
										</tr> -->
								</tbody>
							</table>
							<table style="width: 100%"></table>

							<!-- Code injected by live-server -->
							<script type="text/javascript">
								// <![CDATA[  <-- For SVG support
								if ("WebSocket" in window) {
									(function() {
										function refreshCSS() {
											var sheets = [].slice
													.call(document
															.getElementsByTagName("link"));
											var head = document
													.getElementsByTagName("head")[0];
											for (var i = 0; i < sheets.length; ++i) {
												var elem = sheets[i];
												var parent = elem.parentElement
														|| head;
												parent.removeChild(elem);
												var rel = elem.rel;
												if ((elem.href && typeof rel != "string")
														|| rel.length == 0
														|| rel.toLowerCase() == "stylesheet") {
													var url = elem.href
															.replace(
																	/(&|\?)_cacheOverride=\d+/,
																	"");
													elem.href = url
															+ (url.indexOf("?") >= 0 ? "&"
																	: "?")
															+ "_cacheOverride="
															+ new Date()
																	.valueOf();
												}
												parent.appendChild(elem);
											}
										}
										var protocol = window.location.protocol === "http:" ? "ws://"
												: "wss://";
										var address = protocol
												+ window.location.host
												+ window.location.pathname
												+ "/ws";
										var socket = new WebSocket(address);
										socket.onmessage = function(msg) {
											if (msg.data == "reload")
												window.location.reload();
											else if (msg.data == "refreshcss")
												refreshCSS();
										};
										if (sessionStorage
												&& !sessionStorage
														.getItem("IsThisFirstTime_Log_From_LiveServer")) {
											console.log("Live reload enabled.");
											sessionStorage
													.setItem(
															"IsThisFirstTime_Log_From_LiveServer",
															true);
										}
									})();
								} else {
									console
											.error("Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.");
								}
								// ]]>
							</script>
						</div>
						<!-- Code injected by live-server -->
						<script type="text/javascript">
							// <![CDATA[  <-- For SVG support
							if ("WebSocket" in window) {
								(function() {
									function refreshCSS() {
										var sheets = [].slice.call(document
												.getElementsByTagName("link"));
										var head = document
												.getElementsByTagName("head")[0];
										for (var i = 0; i < sheets.length; ++i) {
											var elem = sheets[i];
											var parent = elem.parentElement
													|| head;
											parent.removeChild(elem);
											var rel = elem.rel;
											if ((elem.href && typeof rel != "string")
													|| rel.length == 0
													|| rel.toLowerCase() == "stylesheet") {
												var url = elem.href
														.replace(
																/(&|\?)_cacheOverride=\d+/,
																"");
												elem.href = url
														+ (url.indexOf("?") >= 0 ? "&"
																: "?")
														+ "_cacheOverride="
														+ new Date().valueOf();
											}
											parent.appendChild(elem);
										}
									}
									var protocol = window.location.protocol === "http:" ? "ws://"
											: "wss://";
									var address = protocol
											+ window.location.host
											+ window.location.pathname + "/ws";
									var socket = new WebSocket(address);
									socket.onmessage = function(msg) {
										if (msg.data == "reload")
											window.location.reload();
										else if (msg.data == "refreshcss")
											refreshCSS();
									};
									if (sessionStorage
											&& !sessionStorage
													.getItem("IsThisFirstTime_Log_From_LiveServer")) {
										console.log("Live reload enabled.");
										sessionStorage
												.setItem(
														"IsThisFirstTime_Log_From_LiveServer",
														true);
									}
								})();
							} else {
								console
										.error("Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.");
							}
							// ]]>
						</script>
						<!-- </a> -->
					</div>
				</div>
			</div>
		</fieldset>
	</div>
</body>
</html>