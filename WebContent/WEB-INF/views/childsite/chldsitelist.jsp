<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ include file="/WEB-INF/common/taglib-js.jsp"%>
<%@taglib  prefix="shiro" uri="http://www.springside.org.cn/tags/shiro"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.table2{table-layout:fixed;}
.table2 td{word-wrap:break-word;}
</style>
<body>	
 <br>
<form id="mainForm" method="post" action="<%=request.getContextPath()%>/main/${action}"> 
<br><br> 	 	   
	 	<table class="table2" align="center">
	 		<thead>
	 			<tr>
	 				<td align="center" colspan="3" id="f1" class="biao_bj1"><center><spring:message code="site_header"></spring:message></center></td>
	 				<td ><input type="text" class="search-query"
	 					  name="search_LIKE_fileName"
	 					  value="${param.search_LIKE_fileName}"></td>
	 			    <td align="center" colspan="1"><center><button class="b1" type="Submit"><spring:message code="submit"></spring:message></button></center></td></tr>		  
	 		
	 			<tr>
	 			<tr> <td colspan="5"><a href="<%=request.getContextPath()%>/Childsite/create"> 
	 			<img border="0" src="../static/css/add.png" width="20" height="20"></a></td></tr>
	 				
	 				
	 				<tr style="border:10px;" bgcolor="#E0E0E0">
	 			
	 				<th><spring:message code="page_name"></spring:message> </th>
	 				<th><spring:message code="website_ID"></spring:message> </th>
	 				<th><spring:message code="type"></spring:message></th>
	 				<th><spring:message code="url"></spring:message></th>
	 			    <th><spring:message code="actions"></spring:message></th>		
	 	             </tr> </thead>
	 					<c:forEach items="${chldsitelist.content}" var="Childsite" >
	 				  	<tr>
	 						<%-- <td>${index.index+sitei .size* sitei.number+1 }</td> --%>
	 						<td> ${Childsite.pagename} </td>
	 						<td> ${Childsite.websiteid} </td>
	 						<td> ${Childsite.type} </td>
	 						<td> ${Childsite.url} </td>
	 				 	<td><a href="${ctx}/Childsite/view/${Childsite.id}"><img border="0" src="../static/css/eye.png" width="20" height="20"></a>
	 						<a href="${ctx}/Childsite/edit/${Childsite.id}"><img border="0" src="../static/css/Edit.png" width="20" height="20"></a>
	 						<a href="${ctx}/Childsite/delete/${Childsite.id}"><img border="0" src="../static/css/delete.png" width="20" height="20"></a>
	 						<%-- <a href="http://${site.sitedomain}/${site.id}">website</a> --%></td>
	 					 							
	 					</tr> </c:forEach> 
	 			<tr>
	 					<td colspan="5">
	 					<tags:pagination paginationSize="${pagination}" page="${chldsitelist}" />
	 					<%-- <%-- <tags:pagination page="${site}" paginationSize="${pagination}" /> 
	 					<tags:pagination paginationSize="${pagination}" page="${chldsitelist}" />  --%></td>
	 			</tr>	
	 	</table>
	 </form>	 
</body>
</html>
