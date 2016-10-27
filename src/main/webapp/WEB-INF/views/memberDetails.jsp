<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="/WEB-INF/views/head.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body{
background-color:#cccccc;
} 

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="content">
			<fieldset>
				<legend>Register Here</legend>
				<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
				<a href="${flowExecutionUrl}&_eventId_home">Home</a>
				
				<sf:form modelAttribute="userBean"><br />
				<div>
					<sf:label path="userName">UserName:</sf:label>
					<sf:input path="userName" pattern="[a-zA-Z]{3,30}" required="true"/><br />
					<!-- to display validation messages -->
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('userName')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br /><hr></div>
					
					<div>
					<sf:label path="email">Email Id: </sf:label>
					<sf:input path="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required="true"/><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('email')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br /><hr></div>
					
					<sf:label path="password">Password: </sf:label>
					<sf:input type="password" path="password" required="true"/><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('password')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br /><hr>
					
					<%-- <sf:label path="conformpassword">ConformPassword: </sf:label>
					<sf:input path="conformpassword"/><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('conformpassword')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br /><hr> --%>
					
					<sf:label path="phonenumber">Phonenumber: </sf:label>
					<sf:input path="phonenumber"  pattern="[9|7|8][0-9]{9}"/><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('phonenumber')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br /><hr>
					
					<sf:label path="address">Address: </sf:label>
					<sf:input path="address" required="true"/><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('address')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br /><hr>
					
					<sf:label path="age">Age: </sf:label>
					<sf:input path="age" required="true" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('age')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br /><hr>
					
					<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
					 <input name="_eventId_submit" type="submit" value="Submit" /><br />
				</sf:form>
			</fieldset>
		</div>
		<div class="container">
		<%-- <%@include file="/WEB-INF/views/footer.jsp"%> --%>
		</div>
	</body>
</html> 