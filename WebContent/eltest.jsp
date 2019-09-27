<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page isELIgnored="false" %>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>EL 연산자</h2>
\${3+4} --> ${3+4}<br>
\${5/4} --> ${5/4} <!--${5 div 4}--> <br>
\${5/4} --> ${5/0}<br>
\${3>4} --> ${3>4} ${3 gt 4}<br>
\${3<=4} --> ${3<=4} ${3 le 4}<br>
\${5>4 and 3<=2} --> ${5>4 and 3 <=2}<br>
\${5>4?10:20} --> ${5>4?10:20}<br>

<h2>내장객체</h2>
<%
request.setAttribute("aa","air"); 
session.setAttribute("bb","book");
application.setAttribute("cc", "cat");
%>
<%=request.getAttribute("aa")%> ${requestScope.aa} ${aa}<br>
<%=session.getAttribute("bb")%> ${sessionScope.aa}<br>
<%=application.getAttribute("cc")%> ${applicationScope.aa}<br>
jsp 내장 객체 : <%= request.getHeader("host") %><br>
EL : ${header.host} ${header["host"]}
<hr>
collection 내용 처리 <br>
<%
ArrayList list = new ArrayList();
list.add("kor");
list.add("eng");
request.setAttribute("list",list);
%>
${list[0]} ${list["1"]}
<p/>
<a href = "eltest.html">html 문서로부터 자료 얻기</a><br>
이름 : ${param.irum} ${param["irum"]} <%=request.getParameter("irum")%>
<%
String arr[] = request.getParameterValues("sung");
%>
성격 : ${paramValues.sung[0]} ${paramValues.sung["1"]}
</body>
</html>






















