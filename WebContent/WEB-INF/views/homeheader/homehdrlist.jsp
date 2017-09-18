<%@ page language="java" pageEncoding="UTF-8"%>
<%-- <script src="${ctx}/css/jquery.fileupload-noscript.css" ></script>
<script src="${ctx}/css/jquery.fileupload-ui-noscript.css"></script>
<script src="${ctx}/css/jquery.fileupload-ui.css"></script>
<script src="${ctx}/css/jquery.fileupload.css"></script>
<script src="${ctx}/css/style.css"></script> --%>

<%@ include file="/common/taglibs.jsp"%> 
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@taglib  prefix="shiro" uri="http://www.springside.org.cn/tags/shiro"%>
<%@ include file="/WEB-INF/common/taglib-js.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%-- <link rel="stylesheet" href="${ctx}/static/css/pure/pure-min.css">  --%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- <style>
table, td, tr, th, thead {
	border: 1px solid black;
} 
table{
  width:90%;
}
</style> -->
</head>
<body>
	 <form id="mainForm" method="post" action="<%=request.getContextPath()%>/main/${action}">
		 	<table class="table2" align="center" style="margin-top: 70px;">
	 		<thead>
	 			<tr >
	 				<td colspan="2" class="biao_bj1"><center><spring:message code="header_homeheader"></spring:message></center></td>
	 				<td><input type="text" class="search-query"
	 					  name="search_LIKE_fileName"
	 					  value="${param.search_LIKE_fileName}"></td>
	 			    <td colspan="11"><center><button class="b1" type="Submit"><spring:message code="header_Submit"></spring:message></button></center></td>		  
	 			</tr>
	 			<tr>
	 				<tr ><td colspan="14"><a href="<%=request.getContextPath()%>/header/createheader"><img border="0" src="../static/css/add.png" width="20" height="20"></a></td></tr>
	 				<tr style="border: 10px;" bgcolor="#E0E0E0">
	 				<th><spring:message code="header_websitetitle"></spring:message></th>
	 				<th><spring:message code="header_websitelogo"></spring:message></th>
	 				<th><spring:message code="header_backgroundimage"></spring:message></th>
	 				<th><spring:message code="header_websiteid"></spring:message></th>
	 				<th colspan="10"><spring:message code="header_Actions"></spring:message></th>
	 				</tr></thead>
	 					<c:forEach items="${homehdrlist.content}" var="homei" >
	 					<tr>
	 						<%-- <td>${index.index+sitei .size* sitei.number+1 }</td> --%>
	 						<td>${homei.websitetitle}</td>
	 						<td>${homei.websitelogo}</td>
	 						<td>${homei.backgroundimage}</td>
	 						
	 							<c:forEach items="${site}" var="site">
								<c:if test="${homei.websiteid eq site.id }">
									<td colspan="5">${site.sitetitle}</td>
								</c:if>
								
							</c:forEach>
							
	 						<%-- <td>${homei.websiteid}</td> --%>
	 						<td colspan="6"><a href="${ctx}/header/view/${homei.id}"><img border="0" src="../static/css/eye.png" width="20" height="20"></a>
	 						<a href="${ctx}/header/edit/${homei.id}"><img border="0" src="../static/css/Edit.png" width="20" height="20"></a>
	 						<a href="${ctx}/header/delete/${homei.id}"><img border="0" src="../static/css/delete.png" width="20" height="20"></a>
	 						</td>		
	 					</tr></c:forEach> 
	 					
	 					<tr>
	 					<td colspan="14">
	 					<%-- <tags:pagination page="${site}" paginationSize="${pagination}" /> --%>
	 					<tags:pagination paginationSize="${pagination}" page="${homehdrlist}" /></td>
	 			</tr>
	 		
	 	</table>
	 
	 </form>
</body>
</html>