 <%@ page contentType="text/html;charset=UTF-8"%>
 <%@include file="/common/taglibs.jsp" %>
 <%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
 <%@taglib  prefix="shiro" uri="http://www.springside.org.cn/tags/shiro"%>
 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../static/css/pure/pure-min.css">
<title>View Page</title>
<style>
table, th, td ,tr,thead{
    border: 1px solid black;
}

</style>
</head>
<body>


<form id="mainForm" method="post" action="<%=request.getContextPath()%>/Model1/${action}">
<table class="pure-table" align="center">

<thead>
<tr >

							<td align="center" colspan="2"  class="biao_bj1" >Model</td>
							<td   ><input type="text" class="search-query"
								name="search_LIKE_name"
								value="${param.search_LIKE_name}"
								id="search_LIKE_fileName" /></td>
							<td align="center" colspan="2"><button type="submit">Submit</button></td>
</tr>







 
<tr>
<tr><td colspan="5"><a href="<%=request.getContextPath()%>/modelController/create"><img border="0" src="../static/css/add.png" width="20" height="20"></a></td></tr>

<tr style="border: 10px;">

<th>Channel ID</th>
<th>Model Name</th>
<th>Create Date</th>
<th>Actions</th>
<th>Template</th>
</tr></thead>
<c:forEach  items="${modelf.content}" var="modelf" varStatus="index">


			
<tr>
 <td>${modelf.channelName}</td>
<td>${modelf.name}</td>
<td>${modelf.createdate}</td>

<td><a href="<%=request.getContextPath()%>/modelController/view/${modelf.modelid}"><img border="0" src="../static/css/eye.png" width="20" height="20"></a>
<a href="<%=request.getContextPath()%>/modelController/edit/${modelf.modelid}"><img border="0" src="../static/css/Edit.png" width="20" height="20"></a>
<a href="<%=request.getContextPath()%>/modelController/delete/${modelf.modelid}"><img border="0" src="../static/css/delete.png" width="20" height="20"></a>
</td>
<td align="center" colspan="2"><a href="<%=request.getContextPath()%>/modelController/template/${modelf.modelid}">Generate Template</a></td>
</tr>		
<br>
</c:forEach>
<tr>
<td  colspan="5">
<tags:pagination page="${modelf}" paginationSize="${pagination}" />

</td>


</tr>
</table>
</form>



</body>
</html>




