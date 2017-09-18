<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body {
overflow: hidden;
}
</style>
</head>
<body>

<c:set var="number" value="1" />

	<div id="container">
		<main id="center" class="column">
			 <div class="frame" id="container">
             	<iframe name="content"src='${ctx}/portaladmin/${template.name}' width="300" height="500"  frameborder="0"></iframe> 
             	<c:if test="${templateid eq page.templateid}">
             	<!--  code for static need to change as dynamic start-->
             			<c:if test="${number == page.templateid }">            		
			             	<iframe name="content"src='${ctx}/portaladmin/Content/${templateid}/${pageid}/${websiteid}' width="300" height="500"  frameborder="0"></iframe>
			             	<%-- <iframe name="content"src='${ctx}/images/${templateid}/${pageid}/${websiteid}' width="300" height="500"  frameborder="0"></iframe> --%>
			             	<iframe name="content"src='${ctx}/portaladmin/forum/${templateid}/${pageid}/${websiteid}' width="300" height="500"  frameborder="0"></iframe>
			             
			             	<a href="${ctx}/images/${templateid}/${pageid}/${websiteid}" target="_blank">edit resource</a>
		             	</c:if>
		        <!--  code for static need to change as dynamic end-->
             	</c:if>
             </div>                                                            						
		</main>
	</div>
</body>
</html>