<%@page import="Model.ActivityDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.ActivityDAO"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="kor">
<head>
<meta charset="utf-8">
   <!-- <link rel="stylesheet" hrefmainPage.css="" /> -->
   <link rel="stylesheet" title="Standard" href="styles.css"
      type="text/css" media="screen" />

<script>var el_cF = document.getElementById('contentFlow')</script>

   <script language="JavaScript" type="text/javascript"
      src="contentflow.js"></script>
   <script tyle="text/javascript">
      var cf = new ContentFlow("contentFlow", {
         reflectionColor : "#000000"
      });
   </script>
   <script tyle="text/javascript">
      var cf = new ContentHelp("contenthelp", {
         reflectionColor : "#000000"
      });
   </script>
</head>

<body>
   <%@include file="nav.jsp"%>
   <%
      // 비로그인 상태에서 랜덤으로 공모전을 보여주기 위함
   Random rd = new Random();
   %>
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />s
   <div id="extra">
      <%
         if (info != null) {
      %>
      "<%=info.getUser_nick()%>을 위한 대외활동이 준비되어 있습니다."<img src="arrow.png"
         id="arrow" />
      <%
         } else {
      %>
      "여러분을 위한 대외활동이 준비되어 있습니다."
      <%
         }
      %>
      <img src="arrow.png" id="arrow" />
   </div>

   <h3 href="#" style="color: gray">추천 공모전</h3>
   <%
      ActivityDAO dao = new ActivityDAO();
   ArrayList<ActivityDTO> c_list = dao.showList("0"); // 공모전 랜덤
   ArrayList<ActivityDTO> v_list = dao.showList("1"); // 봉사활동 랜덤
   ArrayList<ActivityDTO> i_list = dao.showList("2"); // 인턴 랜덤
   ArrayList<ActivityDTO> l_list = dao.showList("3"); // 강연 랜덤
   %>
   <!-- ===== FLOW ===== -->
   <div id="contentFlow" class="ContentFlow">
      <!-- should be place before flow so that contained images will be loaded first -->
      <div class="loadIndicator">
         <div class="indicator"></div>
      </div>

      <!-- 공모전 -->
      <div class="flow">
         <%
            for (int i = 0; i < 10; i++) {
            int j = (int) (Math.random() * 100);
         %>

         <div class="item">
            <img class="content" id="ci<%=i %>" src="<%=c_list.get(j).getAct_poster()%>" /> <a
               href="detail.jsp?act_seq=<%=c_list.get(j).getAct_seq()%>"><div
                  class="caption" id="ct<%=i %>"><%=c_list.get(j).getAct_name()%></div></a>
         </div>
         <%
            }
         %>
      </div>
      <div class="globalCaption"></div>
      <div class="scrollbar">
         <div class="slider">
            <div class="position"></div>
         </div>
      </div>
   </div>
   <br />

   <!-- ----봉사활동===== -->
   <h3 href="#" style="color: gray">추천 봉사활동</h3>
   <div id="contentFlow2" class="ContentFlow">
      <!-- should be place before flow so that contained images will be loaded first -->

      <div class="flow">
         <%
            for (int i = 0; i < 10; i++) {
            int j = (int) (Math.random() * 65);
         %>

         <div class="item">
            <img class="content" id="vi<%=i %>" src="<%=v_list.get(j).getAct_poster()%>" /> <a
               name="actTitle"
               href="detail.jsp?act_seq=<%=v_list.get(j).getAct_seq()%>"><div class="caption" id="vt<%=i %>"><%=v_list.get(j).getAct_name()%></div></a>
         </div>
         <%
            }
         %>
      </div>
      <div class="globalCaption"></div>
      <div class="scrollbar">
         <div class="slider">
            <div class="position"></div>
         </div>
      </div>
   </div>
   <br />

   <!-- 강연 -->
   <h3 href="#" style="color: gray">추천 강연</h3>
   <div id="contentFlow3" class="ContentFlow">
      <!-- should be place before flow so that contained images will be loaded first -->

      <div class="flow">
         <%
            for (int i = 0; i < 10; i++) {
            int j = (int) (Math.random() * 60);
         %>
         <div class="item">
            <img class="content" id="li<%=i %>" src="<%=l_list.get(j).getAct_poster()%>" /> <a
               class="actTitle"
               href="detail.jsp?act_seq=<%=l_list.get(j).getAct_seq()%>"><div
                  class="caption" id="lt<%=i %>"><%=l_list.get(j).getAct_name()%></div></a>
         </div>
         <%
            }
         %>

      </div>
      <div class="globalCaption"></div>
      <div class="scrollbar">
         <div class="slider">
            <div class="position"></div>
         </div>
      </div>
   </div>

   <br />
   <!-- 인턴 -->
   <h3 href="#" style="color: gray">추천 인턴활동</h3>
   <div id="contentFlow4" class="ContentFlow">
      <!-- should be place before flow so that contained images will be loaded first -->

      <div class="flow">
         <%
            for (int i = 0; i < 10; i++) {
            int j = (int) (Math.random() * 99);
         %>
         <div class="item">
            <img class="content" id="ii<%=i %>" src="<%=i_list.get(j).getAct_poster()%>" /> <a
               class="actTitle"
               href="detail.jsp?act_seq=<%=i_list.get(j).getAct_seq()%>"><div
                  class="caption" id="it<%=i %>"><%=i_list.get(j).getAct_name()%></div></a>
         </div>
         <!--          </a> -->
         <%
            }
         %>
         </div>
         <div class="globalCaption"></div>
         <div class="scrollbar">
            <div class="slider">
               <div class="position"></div>
            </div>
         </div>
<script
  src="https://code.jquery.com/jquery-3.6.0.js"
  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
  crossorigin="anonymous"></script>
        <%
        if(info!=null){
        %>
      <script>
      //alert("로그인 되었지비")
         $.ajax({
             url:'http://127.0.0.1:5000/ActivityPlan/main.jsp', 
             type:'get', 
             data:{'id': "<%=info.getUser_id()%>"},
             dataType:'json',
             success: function(data) {
                console.log(data);
                 //서버로부터 정상적으로 응답이 왔을 때 실행
                 //alert("현재아이디 : "+"<%=info.getUser_id()%>")
                 var el = document.querySelector('#contentFlow>.flow');
                 var innerht =""; 
                 for(var i=0; i<10; i++){
                    innerht += `<div class="item">
                         <img class="content" src="${data['result'][i*3+2]}" /> 
                         <a class="caption" href="detail.jsp?act_seq=${data['result'][i*3]}"><div
                            >${data['result'][i*3+1]}</div></a>
                   </div>`
                 }
                 el.innerHTML = innerht;
                 var cf = new ContentFlow("contentFlow", {
                     reflectionColor : "#000000"
                 });
                 cf.init();
                 
                 el = document.querySelector('#contentFlow2>.flow');
                 innerht =""; 
                 for(var i=0; i<10; i++){
                    innerht += `<div class="item">
                         <img class="content" src="${data['v_result'][i*3+2]}" /> <a
                            class="caption" href="detail.jsp?act_seq=${data['v_result'][i*3]}"><div
                            >${data['v_result'][i*3+1]}</div></a>
                   </div>`;
                 }
                 el.innerHTML = innerht;
                 cf = new ContentFlow("contentFlow2", {
                     reflectionColor : "#000000"
                 });
                 cf.init();
                 
                 el = document.querySelector('#contentFlow3>.flow');
                 innerht =""; 
                 for(var i=0; i<10; i++){
                    innerht += `<div class="item">
                         <img class="content" src="${data['l_result'][i*3+2]}" /> <a
                            class="caption" href="detail.jsp?act_seq=${data['l_result'][i*3]}"><div
                            >${data['l_result'][i*3+1]}</div></a>
                   </div>`;
                 }
                 el.innerHTML = innerht;
                 cf = new ContentFlow("contentFlow3", {
                     reflectionColor : "#000000"
                 });
                 cf.init();
                 
                 el = document.querySelector('#contentFlow4>.flow');
                 innerht =""; 
                 for(var i=0; i<10; i++){
                    innerht += `<div class="item">
                         <img class="content" src="${data['i_result'][i*3+2]}" /> <a
                            class="caption" href="detail.jsp?act_seq=${data['i_result'][i*3]}"><div
                            >${data['i_result'][i*3+1]}</div></a>
                   </div>`;
                 }
                 el.innerHTML = innerht;
                 cf = new ContentFlow("contentFlow4", {
                     reflectionColor : "#000000"
                 });
                 cf.init();
             },
             error: function(err) {
                 //서버로부터 응답이 정상적으로 처리되지 못햇을 때 실행
                 alert("통신실패! : " +err);
                 console.log(err);
             }
         });
      </script>
      <%
      }else{
      %>
         <script>
            //alert("로그인 안되었지비")
         </script>
      <%} %>
      }
      </div>
</body>
</html>