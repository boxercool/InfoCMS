<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/common/taglibs.jsp" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ include file="/WEB-INF/common/taglib-js.jsp"%>
<%@taglib  prefix="shiro" uri="http://www.springside.org.cn/tags/shiro"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<!-- <style>
table, td, tr, th, thead 
{
   
	border: 1px solid black;
}  
.table3
{
   width:45%;
   font-family: sans-serif;
   
}
.table3 tbody{border:1px solid black}
.table3,table1{border-collapse:collapse;border-spacing:0}
.table3 tr{empty-cells:show;border:1px solid #cbcbcb;border: 1px solid black}
.table3 caption{color:#000;font:italic 85%/1 arial,sans-serif;padding:1em 0;text-align:center}
.table3 td,.table3 th{border-left:1px solid #cbcbcb;border-width:0 0 0 1px;font-size:inherit;margin:0;overflow:visible;padding:.5em 1em;valign:baseline}
.table3 td:first-child,.table3 th:first-child{border-left-width:0;valign:baseline}
.table3 thead{background-color:#e0e0e0;color:#000;text-align:left;vertical-align:bottom;border: 1px solid black}
.table3 td{background-color:transparent}
.table3 tbody tr:nth-child(even) {background-color:#f1f1f1}
.table3-odd td,.table3-striped tr:nth-child(2n-1) td{background-color:#f2f2f2}
.table3-bordered td{border-bottom:1px solid #cbcbcb}
.table3-bordered tbody>tr:last-child>td{border-bottom-width:0}
.table3-horizontal td,.table3-horizontal th{border-width:0 0 1px;border-bottom:1px solid #cbcbcb}
.table3-horizontal tbody>tr:last-child>td{border-bottom-width:0}
</style>
 -->
</head>
<body>	
<form id="mainForm" method="post" action="<%=request.getContextPath()%>/main/${action}">
	 	<br>
	 	<br>
	 	<br>
	 	<table class="table3" align="center">
	 		<thead>
	 			<tr>
	 				<td align="center"  class="biao_bj1" id="f1"><center>
	 				<spring:message code="site_header"></spring:message></center>
	 				</td>
	 				<td><input type="text" class="search-query"
	 					  name="search_LIKE_fileName"
	 					  value="${param.search_LIKE_fileName}"></td>
	 			    <td align="center" colspan="1"><center><button type="Submit" class="b1">
	 		 	<spring:message code="submit"></spring:message> 
	 			    </button></center></td>		  
	 			</tr>
	 			<tr>
	 				<tr>
	 				<td colspan="3"><a href="<%=request.getContextPath()%>/template/create"><img border="0" src="../static/css/add.png" width="20" height="20"></a></td></tr>
	 				<tr style="border: 10px;" bgcolor="#E0E0E0">
	 				<th> <spring:message code="templateName"></spring:message> </th>
	 				<th colspan="2"> <spring:message code="actions"></spring:message> </th>
	 				</tr>
	 		</thead>
	 		
	 		<c:forEach items="${list.content}" var="template" end="5">
	 				<tr>
	 						<td>${template.name}</td>
	 						
	 						<td colspan="2"><a href="${ctx}/template/view/${template.id}">
	 						
	 						<!-- <img border="0" src="../static/css/eye.png" width="20" height="20"></a> -->
	 						<a href="${ctx}/template/edit/${template.id}">
	 						
	 						<img border="0" src="../static/css/Edit.png" width="20" height="20"></a>
	 						<a href="${ctx}/template/delete/${template.id}">
	 						
	 						<img border="0" src="../static/css/delete.png" width="20" height="20"></a>
	 			
	 			</tr></tr>
					
	 		</c:forEach>
	 		<tr></tr>
	 		<tr>
	 			<td colspan="3">
	 			<tags:pagination paginationSize="${pagination}" page="${list}"/></td>
	 		</tr> 	
	 	</table>
	 		
	 				
	 </form>
</table> 
	
	<%-- 	<form id="mainForm" method="post" action="<%=request.getContextPath()%>/main/${action}">
	 	<table class="pure-table">
	 		<thead>
	 			<tr >
	 				<td align="center"  class="biao_bj1">template</td>
	 				<td><input type="text" class="search-query"
	 					  name="search_LIKE_fileName"
	 					  value="${param.search_LIKE_fileName}"></td>
	 			    <td align="center" colspan="1"><button type="Submit">Submit</button></td>		  
	 			</tr>
	 			<tr >
	 				<tr ><td colspan="3"><a href="<%=request.getContextPath()%>/template/create"><img border="0" src="../static/css/add.png" width="20" height="20"></a></td></tr>
	 				<tr style="border: 10px;" bgcolor="#E0E0E0">
	 				<th>name</th>
	 				<!-- <th>copyrighttxt</th>
	 				<th>socialmedia</th> -->
	 				<th colspan="2">Actions</th><!-- <th></th> -->
	 				</tr></thead>
	 					<c:forEach items="${list.content}" var="tempi" >
	 					<tr>
	 						<td>${index.index+sitei .size* sitei.number+1 }</td>
	 						<td>${tempi.name}</td>
	 						<td>${homei.copyrighttxt}</td>
	 						<td>${homei.favoriteSM}</td>
	 						<td colspan="2"><a href="${ctx}/template/view/${tempi.id}"><img border="0" src="../static/css/eye.png" width="20" height="20"></a>
	 						<a href="${ctx}/template/edit/${tempi.id}"><img border="0" src="../static/css/Edit.png" width="20" height="20"></a>
	 						<a href="${ctx}/template/delete/${tempi.id}"><img border="0" src="../static/css/delete.png" width="20" height="20"></a>
	 						<a href="http://${site.sitedomain}/${site.id}">website</a></td><!-- <td></td> -->
	 					
	 					</tr></c:forEach> 
	 					
	 					<tr>
	 					<td colspan="3">
	 					<tags:pagination page="${site}" paginationSize="${pagination}" />
	 					<tags:pagination paginationSize="${pagination}" page="${list}" /></td>
	 			</tr>
	 		
	 	</table>
	 
	 </form> --%>
</body>
</html>
