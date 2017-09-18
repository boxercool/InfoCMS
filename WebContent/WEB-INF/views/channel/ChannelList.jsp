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


<form id="mainForm" method="post" action="<%=request.getContextPath()%>/Channel/${action}">
<table class="pure-table" align="center">

<thead>
<tr >

							<td align="center" colspan="2"  class="biao_bj1" >Channel</td>
							<td   ><input type="text" class="search-query"
								name="search_LIKE_channelName"
								value="${param.search_LIKE_channelName}"
								id="search_LIKE_fileName" /></td>
							<td align="center" colspan="2"><button type="submit">Submit</button></td>
</tr>







 
<tr>
<tr><td colspan="5"><a href="<%=request.getContextPath()%>/Channel/create"><img border="0" src="../static/css/add.png" width="20" height="20"></a></td></tr>

<tr style="border: 10px;">
<th>Serial Number</th>
<th>Channel Name</th>
<th>Create Date</th>
<th>Actions</th>

</tr></thead>
<c:forEach  items="${channel.content}" var="chan" varStatus="index1">


			
<tr>
 <td >${index1.index+channel.size*channel.number+1}</td>
<td>${chan.channelName}</td>
<td>${chan.createdate}</td>

<td><a href="<%=request.getContextPath()%>/Channel/view/${chan.channelid}"><img border="0" src="../static/css/eye.png" width="20" height="20"></a>
<a href="<%=request.getContextPath()%>/Channel/edit/${chan.channelid}"><img border="0" src="../static/css/Edit.png" width="20" height="20"></a>
<a href="<%=request.getContextPath()%>/Channel/delete/${chan.channelid}"><img border="0" src="../static/css/delete.png" width="20" height="20"></a>
</td>
</tr>		
<br>
</c:forEach>
<tr>
<td  colspan="5">
<tags:pagination page="${channel}" paginationSize="${pagination}" />

</td>


</tr>
</table>
</form>



</body>
</html>




