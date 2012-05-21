<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>JSP宣言サンプル</title>
	</head>
	<%!
		int count = 0;

		//countが10以上になった場合に文字列を返す。
		String check(){
			String value="";
			if(count >=10){
				value = "*10以上になりました*";
			}
			return value;
		}
	%>
	<body>
		現在のcountの値は
		<%
			count++;
			out.println(count);
		%>
		<%= count %> <%-- ⇒スクリプトレットから式タグに変換 --%>
		です。
		<%= check() %> <%-- ⇒スクリプトレットから式タグに変換 --%>
	</body>
</html>