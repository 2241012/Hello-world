<?xml version="1.0" encoding="UTF-8" ?>

<%-- pageディレクティブ --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page isELIgnored="false" contentType="text/html; charset=UTF-8" import="java.util.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Hello JSP!</title>
</head>
<body>
	ようこそ! JSP＆サーブレットの世界へ!
	現在の時刻は
	<%
		Calendar calendar = new GregorianCalendar();
		out.println( calendar.get(GregorianCalendar.HOUR_OF_DAY));
		out.println(":");
		out.println(calendar.get(GregorianCalendar.MINUTE));
	%>
	です。<br />

	<%-- 午前と午後の判定結果 --%>
	現在は
	<%
		//Calendarの日時が午前であるが午後であるかを判定する。
		int ampm = calendar.get(GregorianCalendar.AM_PM);

		String value ="";
		if(ampm == GregorianCalendar.AM){
			value = "午前中";
		}else if(ampm == GregorianCalendar.PM){
			value = "午後";
		}
		out.println(value);
	%>
	<br />

	<table>
		<tr>
			<%
				for(int i=0; i<9; i++){
			%>
				<td><% out.print(i); %></td>
			<%
				}
			%>
		</tr>
	</table>

	<%-- includeディレクティブ(include.jspの呼び出し) --%>
	<%-- <%@ include file="include.jsp" %> --%>

</body>
</html>