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


<form id="mainForm" method="post" action="<%=request.getContextPath()%>/main/${action}">
<table class="pure-table" align="center">

<thead>
<tr >

							<td align="center" colspan="2"  class="biao_bj1" >Attachment</td>
							<td   ><input type="text" class="search-query"
								name="search_LIKE_fileName"
								value="${param.search_LIKE_fileName}"
								id="search_LIKE_fileName" /></td>
							<td align="center" colspan="2"><button type="submit">Submit</button></td>
</tr>







 
<tr>
<tr><td colspan="5"><a href="<%=request.getContextPath()%>/main/create"><img border="0" src="../static/css/add.png" width="20" height="20"></a></td></tr>

<tr style="border: 10px;">
<!-- <th>Name </th>
<th>Email </th>
<th>Login </th>
<th>Password </th>
<th>SiteTitle </th>
<th>SiteDomain </th>
<th>Protocol</th>
<th>Actions</th> -->
<td>Sno:</td>
<th>Filename:</th>
<th>Filepath:</th>
<th>RID:</th>
<th>Actions:</th>

</tr></thead>
<c:forEach  items="${attachment.content}" var="attach" varStatus="index">


			
<tr>
<td >${ index.index+attachment .size* attachment .number+1}</td>
<td>${attach.fileName}</td>
<td>${attach.filePath}</td>
<td>${attach.rid}</td>
<%-- <td>${attachment.name}</td>
<td>${attachment.email}</td>
<td>${attachment.login}</td>
<td>${attachment.password}</td>
<td>${attachment.sitetitle}</td>
<td>${attachment.sitedomain}</td>
<td>${attachment.password}</td> --%>

<td><a href="<%=request.getContextPath()%>/main/view/${attach.id}"><img border="0" src="../static/css/eye.png" width="20" height="20"></a>
<a href="<%=request.getContextPath()%>/main/edit/${attach.id}"><img border="0" src="../static/css/Edit.png" width="20" height="20"></a>
<a href="<%=request.getContextPath()%>/main/delete/${attach.id}"><img border="0" src="../static/css/delete.png" width="20" height="20"></a>
</td>
</tr>		
<br>
</c:forEach>
<tr>
<td  colspan="5">
<tags:pagination page="${attachment}" paginationSize="${pagination}" />

</td>


</tr>
</table>
</form>



</body>
</html>