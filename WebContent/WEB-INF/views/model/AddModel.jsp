<%@page import="com.infotop.channel.entity.Channel"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ include file="/common/taglibs.jsp"%> --%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%-- 
<%
	List<Channel> channel =(List<Channel>)request.getAttribute("channel");
%> --%>
<form action="<%=request.getContextPath() %>/Model1/${action}"  method="POST" >
	<input name="modelid" type="hidden" value="${modelf.modelid}"/>
	 <select name="channelName">
	 <c:forEach items="${channel}" var="read">
	 <option value="${read.channelName}">${read.channelName}</option>
	 
	 </c:forEach>
	 </select>
    <%-- <option>Select Channel</option>
<%
for(Channel Channe:channel){
	%>
		<option value =<%=Channe.getChannelid() %>><%=Channe.getChannelid() %></option>
		<%
	}
%></select> --%>
	<input name="name" type="text" value="${modelf.name}"/>
	
	<input type="submit" value="add" />
</form>

</body>
</html>