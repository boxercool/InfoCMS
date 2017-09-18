<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/taglibs.jsp"%> 
<%@ include file="/WEB-INF/common/taglib-js.jsp"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@taglib  prefix="shiro" uri="http://www.springside.org.cn/tags/shiro"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.table2{  table-layout:fixed;  }
 /*  table td{word-wrap:break-word;}  */
</style>
<body>
	<br>
	 <br>
	 <form id="mainForm" method="post" action="<%=request.getContextPath()%>/main/${action}">
	 	<table class="table2" align="center">
	 		<thead class="table2" >
	 			<tr>
	 				<td colspan="3"  id="f1"><center><spring:message code="site_header"></spring:message></center></td>
	 				<td colspan="2"><input type="text" class="search-query"
	 					  name="search_LIKE_fileName"
	 					  value="${param.search_LIKE_fileName}"></td>
	 			    <td colspan="3" align="center"><center><button class="b1" type="Submit"><spring:message code="submit"></spring:message></button></center></td>		  
	 			</tr>
	 			<tr>
	 				<tr><td colspan="8"><a href="<%=request.getContextPath()%>/site/create">
	 				<img border="0" src="../static/css/add.png" width="20" height="20"></a></td></tr>
	 				  <tr style="border:10px" bgcolor="#E0E0E0">
	 			      <th><spring:message code="login_UserName"></spring:message></th>
	 				  <th><spring:message code="site_mail"></spring:message></th>
	 				  <th><spring:message code="password"></spring:message></th> 
	 				  <th><spring:message code="Login_id"></spring:message></th>
	 				  <th><spring:message code="site_Title"></spring:message></th>
	 				  <th><spring:message code="site_Domain"></spring:message></th>
	 				  <th><spring:message code="protocol"></spring:message></th>
	 				  <th><spring:message code="actions"></spring:message></th>    
	 				</tr></thead> 
	 				<tbody>
	 					<c:forEach items="${sitelist.content}" var="sitei">
	 					<tr>
	 						<%-- <td>${index.index+sitei .size* sitei.number+1 }</td> --%>
	 						<td>${sitei.name}</td>
	 						<td style="white-space:pre-line">${sitei.email}</td>
	 						<td>${sitei.login}</td>
	 						<td>${sitei.password}</td>
	 						<td>${sitei.sitetitle}</td>
	 						<td>${sitei.sitedomain}</td>
	 						<td>${sitei.protocol}</td>
	 						<td><a href="${ctx}/site/view/${sitei.id}"><img border="0" src="../static/css/eye.png" width="20" height="20"></a>
	 						<a href="${ctx}/site/edit/${sitei.id}"><img border="0" src="../static/css/Edit.png" width="20" height="20"></a>
	 						<a href="${ctx}/site/delete/${sitei.id}"><img border="0" src="../static/css/delete.png" width="20" height="20"></a>
	 						<%--<a href="http://${site.sitedomain}/${site.id}">website</a>--%></td>		
	 					</tr></c:forEach> 
	 					
	 					<tr>
	 					<td colspan="8">
	 					<tags:pagination page="${sitelist}" paginationSize="${pagination}"/>
	 					<%--<tags:pagination page="${site}" paginationSize="${pagination}" />--%>
	 					</td>
	 			       </tr>
	 		   </tbody>
	 	</table>
	 
	 </form>
	
	 </body>
</html>