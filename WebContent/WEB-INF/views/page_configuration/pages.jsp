<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ include file="/WEB-INF/common/taglib-js.jsp"%>
<%@taglib  prefix="shiro" uri="http://www.springside.org.cn/tags/shiro"%>
<html>
<head>
<!-- <style>
  table, td, tr, th, thead 
{
	border: 1px solid black;
} 
.table3 tbody tr:nth-child(even){background-color:#f1f1f1}
.table3-odd td,.table3-striped tr:nth-child(2n-1) td{background-color:#f2f2f2} 

.table3
{
   width:50%;
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
	<%-- <table>
		<c:forEach var="page" items="${pages}">
		<tr>
			<td>
			   
				<a href="${ctx}/web/${page.pagename}/${page.pagename}">${page.pagename}</a>
			</td>
			<td>
				<a href="${ctx}/pageConfiguration/template/${page.id}">Configuration</a>
			
			</td>
		</tr>
		</c:forEach>
	</table> --%>
	<form id="mainForm" method="post" action="<%=request.getContextPath()%>/main/${action}">
		 <table class="table3" align="center" style="margin-top: 70px;">
	 		<thead>
	 			<%-- <tr>
	 				<td align="center"  class="biao_bj1">Page Configuration</td>
	 				<td><input type="text" class="search-query"
	 					  name="search_LIKE_fileName"
	 					  value="${param.search_LIKE_fileName}"></td>
	 			    <td align="center" colspan="5"><button type="Submit">Submit</button></td>		  
	 			</tr> --%>
	 				<tr style="border:1px;" bgcolor="#E0E0E0">
	 				<th>S.No</th>
	 				<th>PageName</th>
	 				<th colspan="6">Configuration</th>
	 				</tr>
             </thead>
	 				 <c:forEach items="${pages}" var="pagei" varStatus="loop1">
	 					<tr>
	 					    <td align="center">${loop1.count}</td>
	 						<td><a href="${ctx}/web/${pagei.pagename}/${pagei.pagename}">${pagei.pagename}</a></td>
	 						<td colspan="6"><a href="${ctx}/pageConfiguration/template/${pagei.id}">Configuration</a></td>		
	 					</tr>
	 					</c:forEach> 
	 					<tr>
	 					<%-- <td colspan="7">
                        <tags:pagination paginationSize="${pagination}" page="${pages}"/></td> 
	 			       </tr>      --%>
	 	</table> 
	 </form>
	</body>
</html>