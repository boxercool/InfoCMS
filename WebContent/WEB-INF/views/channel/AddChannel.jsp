<%@ page contentType="text/html;charset=UTF-8"%>





<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="<%=request.getContextPath() %>/Channel/${action}"  method="POST" >
	<input name="channelid" type="hidden" value="${channel.channelid}"/>
	<input name="channelName" type="text" value="${channel.channelName}"/>
	
	<input type="submit" value="add" />
</form>

</body>
</html>