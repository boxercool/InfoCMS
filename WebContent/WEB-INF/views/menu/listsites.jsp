 <%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/taglibs.jsp"%> 
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
 <%@taglib  prefix="shiro" uri="http://www.springside.org.cn/tags/shiro"%>
<link rel="stylesheet" href="../static/css/pure/pure-min.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<head>
<style>
 table, td, tr, th, thead {
	border: 1px solid black;
} 

</style>
</head>
<body>
	<br>
	 <br>
	 <form id="mainForm" method="post" action="<%=request.getContextPath()%>/main/${action}">
	 	<table class="pure-table" align="center">
	 		<thead>
	 			<tr>
	 				<td align="center" colspan="1" class="biao_bj1"><spring:message code="site_header"></spring:message></td>
	 				<td><input type="text" class="search-query"
	 					  name="search_LIKE_fileName"
	 					  value="${param.search_LIKE_fileName}"></td>
	 			    <td align="center" colspan="2"><button type="Submit"><spring:message code="submit"></spring:message></button></td>		  
	 			</tr>
	 			
	 				<tr style="border: 10px;" bgcolor="#E0E0E0">
	 			 
	 				    <th><spring:message code="site_Title"></spring:message></th>
	 				     <th><spring:message code="site_Domain"></spring:message></th>
	 				       <th><spring:message code="actions"></spring:message></th> 
	 				       
	 		
	 				</tr></thead> 
	 					<c:forEach items="${sitelist.content}" var="sitei" >
	 					<tr>
	 						
	 						
	 						<td>${sitei.sitetitle}</td>
	 						<td>${sitei.sitedomain}</td>
	 						
	 						<td>
	 						<a href="${ctx}/menu/treemenu/${sitei.id}"><img border="0" src="../static/css/Edit.png" width="20" height="20"></a>
	 						</td>
	 					
	 					
	 							
	 					</tr></c:forEach> 
	 					
	 					<tr>
	 					<td colspan="4">
	 					<tags:pagination paginationSize="${pagination}" page="${sitelist}" /></td>
	 			</tr>
	 		
	 	</table>
	 
	 </form>
	 </body>
</html>