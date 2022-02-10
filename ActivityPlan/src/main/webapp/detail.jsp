<%@page import="java.util.ArrayList"%>
<%@page import="Model.ActivityDAO"%>
<%@page import="Model.ActivityDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<link rel="stylesheet" href="./CSS/detail.css" />
</head>
<body>
	<div id="wrapper">
		<div id="container_wr">
			<div id="container">
				<h2 id="container_title">
					<span title="2022 대구 라이프스타일 굿즈 공모전">대학생·일반인 공모전</span>
				</h2>
				<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
				<script>
					Kakao.init("2b2a22987b72748f36cfba844fc5ea02");
				</script>
				<script src="https://www.all-con.co.kr/js/linkify.min.js"></script>
				<script src="https://www.all-con.co.kr/js/linkify-jquery.min.js"></script>
				<script
					src="https://www.all-con.co.kr/js/lightbox2/lightbox.min.js?ver=210625"></script>
				<link rel="stylesheet"
					href="https://www.all-con.co.kr/js/lightbox2/lightbox.min.css" />
				<link rel="stylesheet"
					href="https://www.all-con.co.kr/js/lite-youtube/lite-yt-embed.css" />
				<script
					src="https://www.all-con.co.kr/js/lite-youtube/lite-yt-embed.js"></script>
				<style type="text/css">
.write_div {
	margin-top: 30px;
	text-align: center;
	font-size: 12px;
}

.write_div a.btn, .write_div .btn {
	font-size: 14px;
	padding-top: 3px;
}

.btn_edit {
	border: 0;
	background: #2980b9;
	color: #fff;
	cursor: pointer;
	border-radius: 3px;
	margin-right: 10px;
}

.btn_del {
	border: 0;
	background: #ff4081;
	color: #fff;
	cursor: pointer;
	border-radius: 3px;
	margin-right: 10px;
}
</style>
				<%@include file="nav.jsp"%>
				<%
					int seq = Integer.parseInt(request.getParameter("act_seq"));

				ActivityDAO dao = new ActivityDAO();
				ActivityDTO dto = dao.showDetail(seq);

				// 상세내용에 줄바꿈 같은 꾸밈 넣기 위해 String을 배열로 넣기
				String[] arrayDetail = null;
				if (dto.getAct_type().equals("2")) {

				} else {
					String detail = dto.getAct_intro();

					arrayDetail = detail.split(""); // 한글자씩 저장
				}
				
				//String benefit, intro, sdate, edate, center, money, category, homepage, poster;
				String benefit = dto.getAct_benefits();
				String intro = dto.getAct_intro();
				String sdate = dto.getAct_sdate();
				String edate  = dto.getAct_edate();
				String center = dto.getAct_center();
				String money = dto.getAct_money();
				String category = dto.getAct_category();
				
				if(benefit == null){
					benefit = "없음";
				}
				if(intro == null){
					intro = "없음";
				}
				if(sdate == null){
					sdate = "없음";
				}
				if(edate == null){
					edate = "없음";
				}
				if(center == null){
					center="없음";
				}
				if(money == null){
					money = "없음";
				}
				if(category == null){
					category = "없음";
				}
				%>
				<br /> <br /> <br /> <br /> <br /> <br />

				<!-- 공모전사진 -->
				<div id="contest_wrap">
					<div class="contest_title_wrap">
						<span class="cl_dday">D-8</span> <a href="/view/contest/475012"><h1><%=dto.getAct_name()%></h1></a>
					</div>
					<div id="contest_info">
						<div class="info_list clearfix">
							<div class="contest_poster">
								<div style="width: 100px; height: 50px">
									<a href="/data/poster/2201/475012.jpg?v=1643969171"
										data-lightbox="poster"><img src="<%=dto.getAct_poster()%>"
										width="300px" /></a>
								</div>
							</div>
							<!-- 공모전 상세 -->
							<div class="contest_field" style="float: right">
								<table>
									<tbody>
										<tr></tr>
										<tr>
											<th>주최/주관</th>
											<td><%=center%></td>
										</tr>

										<tr>
											<th>시작날짜</th>
											<td><%=sdate%></td>
										</tr>
										<tr>
											<th>마감날짜</th>
											<td><%=edate%></td>
										</tr>
										<tr>
											<th>카테고리</th>
											<td><%=category%></td>
										</tr>
										<tr>
											<th>혜택</th>
											<td><%=benefit%></td>
										</tr>
										<tr>
											<th>상금</th>
											<td><%=money%></td>
										</tr>
									</tbody>
								</table>

								<!-- 버튼 -->
								<!-- 저장하기 -->
								<%
									if (info != null) {
								%>
								<a
									href="SaveService?act_seq=<%=dto.getAct_seq()%>&user_id=<%=info.getUser_id()%>"
									target="_blank" title="캘린더에 저장하기"> <%
 	} else {
 %> <a href="#"> <%
 	}
 %>
										<button class="btn_orange homepage">
											<i class="fa fa-home"></i> <span>저장하기+</span>
										</button>
								</a> <a href="<%=dto.getAct_homepage()%>" target="_blank"
									title="접수처로 이동"><button class="btn_orange homepage">
											<i class="fa fa-home"></i> <span>접수처</span>
										</button></a> <a href="" target="_blank" title="찜 추가">
										<button class="btn_orange scrap" id="btn_scrap" title="스크랩">
											<!-- 즐겨찾기(북마크) 넣기 -->
											<%
												if (info != null) {
											%>
											<a
												href="BookmarkService?act_seq=<%=dto.getAct_seq()%>&user_id=<%=info.getUser_id()%>">
												<%
													} else {
												%> <a href="#"> <%
 	}
 %> <img class="heart" src="heart.png" style="width: 25px" /></a>
										</button>
								</a>
							</div>
						</div>

						<div class="board_body">
							<div class="warning"></div>
							<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
							<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
							<br /> <br /> <br /> <br />
							<!-- 상세내용 -->
							<div class="title">상세내용</div>
							<div class="board_body_txt" id="contest_body">
								<%
									if (dto.getAct_type().equals("2")) {
								%>
								<img src="<%=dto.getAct_intro()%>">
								<%
									} else {
									for (int i = 0; i < arrayDetail.length; i++) {
										if (arrayDetail[i].equals("■") || arrayDetail[i].equals("□")) {
									out.print("<br>");
								%>
								<%=arrayDetail[i]%>
								<%
									} else {
								%><%=arrayDetail[i]%>
								<%
									}
								}
								}
								%>
								<!-- <p
                    style="
                      font-size: 14px;
                      color: rgb(80, 96, 240);
                      font-weight: 700;
                    "
                  >
                    2022 대구 라이프스타일 굿즈 공모전<br /><br /><br /><br />
                  </p>
                  <p
                    style="
                      font-size: 14px;
                      color: rgb(80, 96, 240);
                      font-weight: 700;
                    "
                  >
                    <b>○ 공모개요</b>
                  </p>
                  <p style="">
                    &nbsp; &nbsp;- 대구의 3대문화(가야, 신라, 유교)를 현대적으로
                    재해석한 대구만의 창의적인 관광 제품과 콘텐츠를 발굴하기
                    위한
                  </p>
                  <p style="">
                    &nbsp; &nbsp; &nbsp;‘2022 대구 라이프스타일 굿즈 공모전’을
                    다음과 같이 개최하오니 많은 참여 바랍니다.&nbsp;<br />
                  </p>
                  <p style="font-size: 13px; color: #000000">
                    &nbsp;<br /><br />
                  </p>
                  <p
                    style="
                      font-size: 14px;
                      color: rgb(80, 96, 240);
                      font-weight: 700;
                    "
                  >
                    <b>○ 공모주제</b>
                  </p>
                  <p style="">
                    <span style="font-size: 13px"
                      >&nbsp;
                      <span style="background-color: rgb(255, 231, 206)"
                        >&nbsp;<b style="">[</b></span
                      ></span
                    ><b style=""
                      ><font style="background-color: rgb(255, 231, 206)"
                        >대구 3대문화(신라, 가야, 유교)]</font
                      >
                    </b>
                  </p>
                  <p>
                    &nbsp; &nbsp;- 대구의 오리지널 콘텐츠인 3대문화(가야, 신라,
                    유교)를 현대적으로 재해석한 굿즈 제품
                  </p>
                  <p>
                    &nbsp; &nbsp; &nbsp;* 대구의 아이덴티티(옷차림, 음식, 성격,
                    억양, 지역특성 등)를 표현한 다양한 형태의 디자인 제품
                  </p>
                  <p><br /></p>
                  <p><br /></p>
                  <p>
                    <b style="color: rgb(80, 96, 240); font-size: 14px"
                      >○ 공모내용</b
                    ><br />
                  </p>
                  <p>
                    &nbsp; &nbsp;-&nbsp;<span
                      style="background-color: transparent"
                      >분야 : 심벌, 마크, 패턴 이미지, 비쥬얼 모티프, 드로잉,
                      디지털 일러스트 등</span
                    >
                  </p>
                  <p>
                    <span style="background-color: transparent"
                      >&nbsp; &nbsp;-&nbsp;</span
                    ><span style="background-color: transparent"
                      >활용 제품군 : 복식(의류, 장신구, 패션잡화), 패브릭,
                      라이프스타일 아이템, 소품 등</span
                    >
                  </p>
                  <p>
                    <span style="background-color: transparent"
                      >&nbsp; &nbsp;-&nbsp;</span
                    ><span style="background-color: transparent">조건</span>
                  </p>
                  <p>
                    &nbsp; &nbsp; &nbsp;① 목업(mock-up) 제작이 가능한
                    디자인이어야 하며, 시장성과 대중성이 있어야 함
                  </p>
                  <p>
                    &nbsp; &nbsp; &nbsp;② 가로 x 세로 x 높이, 3면의 합 115cm
                    이하 (기내 수화물 허용 크기) 제품(말거나 접은 형태의 최종
                    포장상태 사이즈)
                  </p>
                  <p>
                    &nbsp; &nbsp; &nbsp;③ 가격 : 10만 원 이내(세트 제품 구성 시
                    합계 금액 기준)
                  </p>
                  <div><br /></div>
                  <p style="font-size: 13px; color: #000000"><br /></p>
                  <p
                    style="
                      font-size: 14px;
                      color: rgb(80, 96, 240);
                      font-weight: 700;
                    "
                  >
                    <b>○ 기간 및 일정</b>
                  </p>
                  <p style="">
                    <span style="color: rgb(0, 0, 0); font-size: 13px"
                      >&nbsp; &nbsp;- </span
                    >공고 및 접수 : 1.24(월) ~ 2.13(일) 까지
                  </p>
                  <p style="">&nbsp; &nbsp;- (1차)서류심사 : 2.16(수)</p>
                  <p style="">&nbsp; &nbsp;- 대중심사 : 2월중 / 온라인 투표</p>
                  <p style="">&nbsp; &nbsp;- (1차)실물심사 : 3월중</p>
                  <p style="">
                    &nbsp; &nbsp;- 결과발표 : 3.14(월) / 홈페이지 공고 및
                    개별연락
                  </p>
                  <p style=""><br /></p>
                  <p style="font-size: 13px; color: #000000"><br /></p>
                  <p
                    style="
                      font-size: 14px;
                      color: rgb(80, 96, 240);
                      font-weight: 700;
                    "
                  >
                    <b>○ 지원자격</b>
                  </p>
                  <p style="">
                    <span style="color: rgb(0, 0, 0); font-size: 13px"
                      >&nbsp; &nbsp;- </span
                    >디자인 및 공예 분야 창작 제품을 지속 생산 가능한 참가자
                  </p>
                  <p>
                    &nbsp; &nbsp;- 국내 거주 개인 및 국내 소재 사업자등록을
                    완료한 기업
                  </p>
                  <p>
                    &nbsp; &nbsp;- 개인 참가자의 경우, 선정 뒤 사업자등록증 발급
                    절차 진행 필수
                  </p>
                  <p>
                    &nbsp; &nbsp;- 선정 후 2개월 내 실물 제작 및 판매 가능한
                    제품(제작 불가 시 수상 철회)
                  </p>
                  <p style="font-size: 13px; color: #000000"><br /><br /></p>
                  <p
                    style="
                      font-size: 14px;
                      color: rgb(80, 96, 240);
                      font-weight: 700;
                    "
                  >
                    <b>○ 접수방법</b>
                  </p>
                  <p
                    style="
                      font-size: 14px;
                      color: rgb(80, 96, 240);
                      font-weight: 700;
                    "
                  >
                    <span
                      style="
                        color: rgb(0, 0, 0);
                        font-size: 13px;
                        font-weight: 400;
                      "
                      >&nbsp; &nbsp;- 제출 서류 작성 후 홈페이지 접수&nbsp;<a
                        href="https://www.dggoods.co.kr/join"
                        class="linkified"
                        target="_blank"
                        >https://www.dggoods.co.kr/join</a
                      >&nbsp;</span
                    >
                  </p>
                  <p
                    style="
                      font-size: 14px;
                      color: rgb(80, 96, 240);
                      font-weight: 700;
                    "
                  >
                    <span
                      style="
                        color: rgb(0, 0, 0);
                        font-size: 13px;
                        font-weight: 400;
                      "
                      ><br
                    /></span>
                  </p>
                  <p
                    style="
                      font-size: 14px;
                      color: rgb(80, 96, 240);
                      font-weight: 700;
                    "
                  >
                    <span
                      style="
                        color: rgb(0, 0, 0);
                        font-size: 13px;
                        font-weight: 400;
                      "
                      ><br
                    /></span>
                  </p>
                  <p
                    style="
                      font-size: 14px;
                      color: rgb(80, 96, 240);
                      font-weight: 700;
                    "
                  >
                    <b>○ 제출서류</b>
                  </p>
                  <p>
                    &nbsp; &nbsp;- 제출 서류<a
                      href="https://www.all-con.co.kr/page/contest_file_down.php?cf_srl=82083"
                      target="_blank"
                      style="
                        color: rgb(80, 96, 240);
                        text-decoration: underline;
                        background-color: rgb(255, 255, 255);
                        font-family: 나눔고딕;
                        font-weight: 400;
                        outline: 0px;
                      "
                      ><font
                        color="#000000"
                        style="background-color: rgb(255, 255, 0)"
                        >(다운로드하기)</font
                      ></a
                    ><span style="background-color: transparent"
                      >&nbsp;:&nbsp;</span
                    ><span style="background-color: transparent"
                      >출품신청서, 개인정보동의서, 참가 확인서</span
                    >
                  </p>
                  <p>
                    <span style="background-color: transparent"
                      >&nbsp; &nbsp; &nbsp;※</span
                    ><span style="background-color: transparent">&nbsp;</span
                    >사업체 참가자의 경우 사업자등록증 사본 제출
                  </p>
                  <p>
                    <span style="background-color: transparent"><br /></span>
                  </p>
                  <p>
                    <span style="background-color: transparent"
                      >&nbsp; &nbsp;- 제출서류 내용 :&nbsp;</span
                    ><br />
                  </p>
                  <p>
                    &nbsp; &nbsp; · 출품신청서 : 제품 사진 삽입 및 설명 기입
                    (PPT 형식으로 제출)
                  </p>
                  <p>
                    <span style="background-color: transparent"
                      >&nbsp; &nbsp; ·</span
                    ><span style="background-color: transparent">&nbsp;</span
                    >개인정보동의서 : 한글파일 작성 및 참가자 서명 필수 (PDF
                    형식으로 제출)
                  </p>
                  <p>
                    <span style="background-color: transparent"
                      >&nbsp; &nbsp; ·</span
                    ><span style="background-color: transparent">&nbsp;</span
                    >참가 확약서 : 한글파일 작성 및 참가자 서명 필수 (PDF
                    형식으로 제출)
                  </p>
                  <p>
                    <span style="background-color: transparent"
                      >&nbsp; &nbsp; ·</span
                    ><span style="background-color: transparent">&nbsp;</span
                    >(기업의 경우) 사업자등록증 사본 : 이미지 파일 (jpg, jpeg,
                    png 형식으로 제출)
                  </p>
                  <p>
                    &nbsp; &nbsp; &nbsp;※ 작품 접수 후 수정사항 있을 시 접수
                    확인을 통해 수정
                  </p>
                  <p><br /></p>
                  <p>
                    &nbsp; &nbsp;- 파일명 : 서류접수자료는 공지된 파일명에
                    맞추어 첨부 제출
                  </p>
                  <p>
                    &nbsp; &nbsp; · (이름)출품신청서 / (이름)개인정보동의서 /
                    (이름)참가확약서 / (이름)사업자등록증 사본<br />
                  </p>
                  <p style="font-size: 13px; color: #000000"><br /><br /></p>
                  <p
                    style="
                      font-size: 14px;
                      color: rgb(80, 96, 240);
                      font-weight: 700;
                    "
                  >
                    <b>○ 심사기준</b>
                  </p>
                  <p style="">
                    <span style="color: rgb(0, 0, 0); font-size: 13px"
                      >&nbsp; &nbsp;- 상징성(25) : 대구 3대문화 상징 부합, 제품
                      브랜딩의 우수성 등</span
                    >
                  </p>
                  <p style="">
                    <span style="color: rgb(0, 0, 0); font-size: 13px"
                      >&nbsp; &nbsp;- 심미성(25) : 제품의 내구성, 정교성, 완성도
                      등</span
                    >
                  </p>
                  <p style="">
                    <span style="color: rgb(0, 0, 0); font-size: 13px"
                      >&nbsp; &nbsp;- 독창성(25) : 기존 제품과의 차별성 등</span
                    >
                  </p>
                  <p style="">
                    <span style="color: rgb(0, 0, 0); font-size: 13px"
                      >&nbsp; &nbsp;- 지속가능성(25) : 활용성, 기능성, 경제성,
                      판매가능성, 대중성 등</span
                    >
                  </p>
                  <p style="">
                    <span style="color: rgb(0, 0, 0); font-size: 13px"
                      >&nbsp; &nbsp;※ 동점자 순위 결정 : 상징성 - 심미성 -
                      독창성 - 지속가능성 순으로 점수를 비교하여 걸정</span
                    >
                  </p>
                  <p style="font-size: 13px; color: #000000"><br /><br /></p>
                  <p
                    style="
                      font-size: 14px;
                      color: rgb(80, 96, 240);
                      font-weight: 700;
                    "
                  >
                    <b>○ 시상내역</b>
                  </p>
                  <p style="">
                    <span style="color: rgb(0, 0, 0); font-size: 13px"
                      >&nbsp; &nbsp;[</span
                    >총 4,000만원] (제품 제작 지원금 및 지적재산권 등록 비용 등
                    / 세금 포함)
                  </p>
                  <p style="">&nbsp; &nbsp;- 대상(1) : 상금 1,000만원</p>
                  <p style="">&nbsp; &nbsp;- 최우수상(2) : 상금 700만원</p>
                  <p style="">&nbsp; &nbsp;- 우수상(4) : 상금 400만원</p>
                  <p>
                    &nbsp; &nbsp;※ 본 특전은 현금 상금이 아닌 제품 제작에
                    지원되는 지원금입니다
                  </p>
                  <p><br /></p>
                  <p><br /></p>
                  <p>
                    <b style="color: rgb(80, 96, 240); font-size: 14px"
                      >○ 수상자 특전</b
                    ><br />
                  </p>
                  <p>
                    &nbsp; &nbsp;- 제품, 디자인, 지적재산권 등 관련 분야 공통
                    교육 및 컨설팅
                  </p>
                  <p>
                    <span style="background-color: transparent"
                      >&nbsp; &nbsp;</span
                    >- 제품화 및 품질 향상을 위한 1:1 멘토링 지원(*제품 개발
                    컨설팅 과정 참여 필수)
                  </p>
                  <p>
                    <span style="background-color: transparent"
                      >&nbsp; &nbsp;</span
                    >- 제품 납품 후 온·오프라인 기획전, 팝업스토어 입점 지원
                  </p>
                  <p>
                    <span style="background-color: transparent"
                      >&nbsp; &nbsp;</span
                    >- 수상작 도록 제작 및 제품 전문 촬영 지원
                  </p>
                  <p><br /></p>
                  <p><br /></p>
                  <p></p>
                  <p
                    style="
                      font-size: 14px;
                      color: rgb(80, 96, 240);
                      font-weight: 700;
                    "
                  >
                    <b>○ 유의사항</b>
                  </p>
                  <p style="">
                    <span style="color: rgb(0, 0, 0); font-size: 13px"
                      >&nbsp; &nbsp;- </span
                    >다음 사항에 해당되는 경우 심사에서 제외되며, 수상 이후라도
                    자격이 박탈 및 수상이 취소됩니다
                  </p>
                  <p>
                    &nbsp; &nbsp; &nbsp;* 제출한 서류에 대한 모든 책임은
                    응모자에게 있음
                  </p>
                  <p>
                    <span style="background-color: transparent"
                      >&nbsp; &nbsp; &nbsp;·</span
                    ><span style="background-color: transparent">&nbsp;</span
                    >신청서 상의 내용이 사실과 다르거나 허위 작성으로 판명되는
                    경우
                  </p>
                  <p>
                    <span style="background-color: transparent"
                      >&nbsp; &nbsp; &nbsp;·</span
                    ><span style="background-color: transparent">&nbsp;</span
                    >표절하거나 저작권·디자인권 등 타인의 저작재산권을 침해한
                    것으로 인정될 경우
                  </p>
                  <p>
                    <span style="background-color: transparent"
                      >&nbsp; &nbsp; &nbsp;·</span
                    ><span style="background-color: transparent">&nbsp;</span
                    >국내에서 생산한 작품이 아닌 경우
                  </p>
                  <p>
                    <span style="background-color: transparent"
                      >&nbsp; &nbsp; &nbsp;·</span
                    ><span style="background-color: transparent">&nbsp;</span
                    >국내·외 다른 공모전에서 이미 수상한 작품인 경우
                  </p>
                  <p>
                    <span style="background-color: transparent"
                      >&nbsp; &nbsp; &nbsp;·</span
                    ><span style="background-color: transparent">&nbsp;</span
                    >기타 공모 요강에 명시된 요건에 적합하지 않은 경우
                  </p>
                  <p>
                    &nbsp; &nbsp;- 출품 시 제출한 자료에 대한 저작권은
                    출품자에게 있으나, 수상작에 한하여 주최·주관기관이
                  </p>
                  <p>
                    &nbsp; &nbsp; &nbsp;공익 목적의 작품집 및 기타 광고·홍보
                    등에 활용·배포할 수 있으며,
                  </p>
                  <p>
                    &nbsp; &nbsp; &nbsp;상호 협의하에 2차 저작물 작성권 및
                    사용권을 행사할 수 있음
                  </p>
                  <p style="font-size: 13px; color: #000000"><br /><br /></p>
                  <p
                    style="
                      font-size: 14px;
                      color: rgb(80, 96, 240);
                      font-weight: 700;
                    "
                  >
                    <b>○ 문의</b>
                  </p>
                  <p style="">
                    <span style="color: rgb(0, 0, 0); font-size: 13px"
                      >&nbsp; &nbsp;[</span
                    >2022 대구 라이프스타일 굿즈 공모전 운영사무국]
                  </p>
                  <p style="">
                    <span style="background-color: transparent"
                      >&nbsp; &nbsp; </span
                    ><span style="background-color: transparent">-&nbsp;</span
                    ><span style="background-color: transparent"
                      >☏ 010 - 2583 - 7219 /&nbsp;</span
                    ><span style="background-color: transparent"
                      >운영시간 : 월 ~ 금 10:00 ~ 18:00 (주말 및 공휴일
                      제외)</span
                    >
                  </p>
                  <p style="font-size: 13px; color: #000000"><br /></p> -->
							</div>
						</div>
					</div>
					<div class="write_div">
						<a
							href="list.jsp?type=<%=dto.getAct_type() %>"><button
								type="button" class="btn_submit btn">목록으로</button></a>
					</div>
				</div>

				<script>
					lightbox.option({
						resizeDuration : 200,
						wrapAround : true,
					});
					$("#btn_scrap").click(function(e) {
						if (!g5_is_member) {
							alert("로그인 후 이용해주세요");
							return false;
						}
						e.preventDefault();
						var $this = $(this), id = "475012";

						$.ajax({
							url : "/page/ajax.scrap.php",
							type : "POST",
							data : {
								id : id,
							},
							dataType : "json",
							async : true,
							complete : function(data) {
								//console.log(data.responseText);
								if (data.responseText == "success") {
									alert("스크랩되었습니다.");
								} else if (data.responseText == "error") {
									alert("이미 스크랩된 공모전입니다.");
								}
							},
							success : function(data) {
							},
							fail : function() {
							},
						});
					});

					$("#contest_body p").linkify();

					$(".share").click(function() {
						console.log("click share");
						$("#sns_list").toggle(50);
					});

					$(".linkcopy")
							.on(
									"click",
									function(e) {
										var url = "https://www.all-con.co.kr/view/contest/475012";

										var tempElem = document
												.createElement("textarea");
										tempElem.value = url;
										document.body.appendChild(tempElem);
										tempElem.select();
										tempElem.setSelectionRange(0, 99999);
										document.execCommand("copy");
										document.body.removeChild(tempElem);

										alert("링크를 클립보드에 복사하였습니다.");
									});

					$(".btn_orange.scrap").click(function() {
						toggleClass(".btn_orange.scrap.active-color");
					});
				</script>
			</div>
		</div>
	</div>
</body>
</html>
