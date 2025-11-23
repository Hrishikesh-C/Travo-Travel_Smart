<%@page import="com.travoapp.model.dto.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@keyframes bounce {
  0%, 100% { 
  transform: translateY(0);
  }
  50% { 
  transform: translateY(-10px);
  }
}
h2 {
  animation: bounce 1s infinite;
  font-weight: bold;
  color: #5C2E91;
}
h1{
color:#5C2E91;

}



</style>
</head>

<body>
<%
Users u=(Users)session.getAttribute("users");
if(u==null){
	%>
	<script type="text/javascript">
	alert("PLEASE LOGIN");
	</script>
	<% 
	request.getRequestDispatcher("Login.jsp").include(request, response);
	return;
}

%>
<h1>Welcome back, <%= u.getName()%> </h1>
<h2>Where would you like to go today?</h2>

</body>
</html>