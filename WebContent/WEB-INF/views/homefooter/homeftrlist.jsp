<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/common/taglibs.jsp"%> 
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@taglib  prefix="shiro" uri="http://www.springside.org.cn/tags/shiro"%>
<%@ include file="/WEB-INF/common/taglib-js.jsp"%>
 
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
		<form id="mainForm" method="post" action="<%=request.getContextPath()%>/main/${action}">
	 	<table class="table2" align="center" style="margin-top: 70px;">
	 		<thead>
	 			<tr >
	 				<td colspan="2" class="biao_bj1"><center><spring:message code="footer_homefooter">
	 				</spring:message></center></td>
	 				<td><input type="text" class="search-query"
	 					  name="search_LIKE_fileName"
	 					  value="${param.search_LIKE_fileName}"></td>
	 			    <td  colspan="11"><center><button class="b1" type="Submit">
	 			    <spring:message code="footer_Submit">
	 			    </spring:message></button></center></td>		  
	 			</tr>
	 			<tr >
	 				<tr ><td colspan="14"><a href="<%=request.getContextPath()%>/footer/createfooter">
	 				<img border="0" src="../static/css/add.png" width="20" height="20"></a></td></tr>
	 				<tr style="border: 10px;" bgcolor="#E0E0E0">
	 				<th><spring:message code="footer_backimgfooter"></spring:message></th>
	 				<th><spring:message code="footer_copyrighttxt"></spring:message></th>
	 				<th><spring:message code="footer_socialmedia"></spring:message></th>
	 				<th><spring:message code="footer_websiteid"></spring:message></th>
	 				<th colspan="10"><spring:message code="footer_Actions"></spring:message></th>
	 				</tr></thead>
	 				<c:forEach items="${homeftrlist.content}" var="homei" >
	 					<tr>
	 						<%--  <td>${index.index}</td>  --%>
	 						<td>${homei.backimgfooter}</td>
	 						<td>${homei.copyrighttxt}</td>
			
  <!-- 	fetching the  multiple data to home list page 'mnk' -->	
   	<td>
   		<c:forEach items="${homei.favoriteSM}" var="temp" varStatus="index">
   		  <p>${homei.favoriteSM[index.index]}</p>
   	  	</c:forEach>
 	</td>	
   				 
   				 
	 			<c:forEach items="${site}" var="site">
	 						<c:if test="${homei.websiteid eq site.id }">
	 							<td colspan="5">${site.sitetitle}</td>
	 						</c:if>
	 						</c:forEach>
	 						<td colspan="6"><a href="${ctx}/footer/view/${homei.id}">
	 						<img border="0" src="../static/css/eye.png" width="20" height="20"></a>
	 						<a href="${ctx}/footer/edit/${homei.id}">
	 						<img border="0" src="../static/css/Edit.png" width="20" height="20"></a>
	 						<a href="${ctx}/footer/delete/${homei.id}">
	 						<img border="0" src="../static/css/delete.png" width="20" height="20"></a>
	 						<%-- <a href="http://${site.sitedomain}/${site.id}">website</a> --%></td>
	 						
	 							
	 					</tr>
	 					</c:forEach> 
	 					
	 					<tr>
	 					<td colspan="14">
	 					<%-- <tags:pagination page="${site}" paginationSize="${pagination}" /> --%>
	 					<tags:pagination paginationSize="${pagination}" page="${homeftrlist}" /></td>
	 			</tr>
	 		
	 	</table>
	 
	 </form>
</body>
</html>