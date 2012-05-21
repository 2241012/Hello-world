<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Mapからの取得</title>
	</head>
	<body>
		<%
			Map<String, Object>map = new HashMap<String, Object>();
			map.put("name", "ユーザ名");
			map.put("userid", "ID90001");
			map.put("mail", "mail@maildomain.co.jp");

			pageContext.setAttribute("userinfo", map);
		%>

		<%-- ELで表示 --%>
		${userinfo.name}.
		${userinfo.userid},
		${userinfo.mail},

	</body>
</html>