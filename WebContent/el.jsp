<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>  
</head>
<body>
EL 맛보기<br>
<%
if(request.getParameter("name") == null){
%>
	<jsp:forward page="el.html"/>
<%	
}
%>
jsp 표현식 사용 :<%=request.getParameter("name") %><br> <%--이걸 풀어써주면 아래처럼 된다--%>
jsp 표현식 사용 :<% out.println(request.getParameter("name")); %><br>
EL 사용 : ${param.name}
</body>
</html>