<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>달력</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="Content-Language" content="ko">
<meta http-equiv="Content-Type" content="text/html; charset=ks_c_5601-1987">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script src="./cal.js"></script>
<link rel="stylesheet" type="text/css" href="./CSS/cal.css">
</head>


<center>

<body>
<%@ include file="nav.jsp" %>
	<h2></h2>
	<h2></h2>
	<h2></h2>
  

    <table id="cal" width=670 border=0 cellpadding=0 cellspacing=0>
        <tr>
        <td nowrap valign=top><!--------달력 들어갈곳----->
            <table border=0 cellpadding=0 cellspacing=0 width=100%>
                <tr>
                    <td>
                        <table border=0 cellpadding=0 cellspacing=0 width=100%>
                            <tr>
                                <td rowspan=2 width=1 height=10 nowrap bgcolor=ffffff></td>
                                <td width="1%" bgcolor=#FFFFFF></td>
                            </tr>
                            <tr>
                                <td height=1 bgcolor=#FFFFFF></td>
                            </tr>
                            <tr>
                                <td width="97%" bgcolor=#77A6EA height=45 align=center bordercolorlight="#000000" bordercolordark="#000000"><!-----날짜 넣는 곳--->
                                    <table border=0 cellpadding=0 cellspacing=0>
                                        <tr>
                                            <td nowrap>&nbsp;&nbsp;
                                                <input class="fas fa-chevron-right fa-rotate-180" TYPE="button" VALUE="&#xf043;" onClick="javascript:prevMonth();" class="10"> <!--------년도----------> 
                                                <select id=yearSelect onChange='setCalendar()'>
                                                <script type=text/javascript>
                                                     for (var i = 1800, selectStr = ""; i <= 2101; i++)
                                                        selectStr += "<option value='" + i + "'>" + i + " 년</option>";
                                                    selectStr += "</select>";
                                                    document.write(selectStr);
                                                </script>
         <!--------년도---------->
         <!--------월---------->
                                                </select>
                                                <select id=monthSelect  id=monthSelect onChange='setCalendar()'>
                                                <script type=text/javascript>
                                                    for (var i = 1, selectStr = ""; i <= 12; i++)
                                                    selectStr += "<option value='" + i + "'>" + i + " 월</option>";
                                                selectStr += "</select>";
                                                document.write(selectStr);
                                                </script>
         <!--------월---------->
                                                <input class="fa fa-chevron-right" TYPE="button" VALUE="&#xf043;" onClick="javascript:nextMonth();" class="10" >
                                                </select>
                                            </td>
                                            <td ailgn=right>
                                                <p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <b><input class="today" TYPE="button" VALUE="오늘 날짜 보기" onClick="javascript:currentMonth();" class="10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <font color=#fff><span style="font-size:20px;" id=curenMonth></span></font></b>
                                            </td>
                                        </tr>
                                    </table>
      <!-----날짜 넣는 곳---></td>
                            </tr>
                            <tr>
                                <td width="97%" height=1 border=0 bgcolor="#000000" bordercolorlight="#000000" bordercolordark="#000000"></td>
                            </tr>
                            <tr>
                                <td width="97%" bgcolor=ffffff align=center bordercolorlight="#000000" bordercolordark="#000000"><!----달력 넣는곳------>
                                    <table border=1 cellpadding=0 cellspacing=0 width=1000px bordercolor="#ECEEF2">
                                        <tr>
                                            <td colspan=7 height=7 nowrap></td>
                                        </tr>
                                        <tr>
                                            <td width=15% align=center><font id=ln6 color=red>일·SUN</font></td>
                                            <td width=14% align=center><font id=ln6>월·MON</font></td>
                                            <td width=14% align=center>화·TUE</td>
                                            <td width=14% align=center><font id=ln6>수·WED</font></td>
                                            <td width=14% align=center><font id=ln6>목·THU</font></td>
                                            <td width=14% align=center><font id=ln6>금·FRI</font></td>
                                            <td width=15% align=center><font id=ln6 color=#0099FF>토·SAT</font></td>
                                        </tr>
                                        <tr>
                                            <td colspan=7 height=7 nowrap></td>
                                        </tr>
                                            <script type=text/javascript>
                                                for (i = 0; i < 6; i++)
                                                {
                                                document.write("<tr height='65'>");


                                                for (j = 0; j < 7; j++)
                                                document.write("<td class='tb' cellSpacing='1' id='dayCell" + ( i * 7 + j )+"'></td>");
                                                document.write("</tr>");
                                                }



                                                if (typeof(rege_0_1) != "undefined" && 1800 <= rege_0_1 && rege_0_1 <= 2101)
                                                {
                                                ayear = rege_0_1;
                                                amonth = 1;
                                                }


                                                if (typeof(rege_0_2) != "undefined" && 1 <= rege_0_2 && rege_0_2 <= 12)
                                                amonth = rege_0_2;
                                                </script>
                                        <tr>
                                            <td colspan=7 height=7 nowrap></td>
                                        </tr>
                                    </table>
      <!----달력 넣는곳------></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</body>
</html>