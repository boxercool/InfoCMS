<%@ page contentType="text/html;charset=UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="shiro" uri="http://www.springside.org.cn/tags/shiro"%>
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


<form id="mainForm" method="post" action="<%=request.getContextPath()%>/type/${action}">
<table class="pure-table" align="center">

<thead>
<tr >

							<td align="center" colspan="2"  class="biao_bj1" >Attribute</td>
							<td   ><input type="text" class="search-query"
								name="search_LIKE_fieldname"
								value="${param.search_LIKE_fieldname}"
								id="search_LIKE_fileName" /></td>
							<td align="center" colspan="2"><button type="submit">Submit</button></td>
</tr>







 
<tr>
<tr><td colspan="5"><a href="<%=request.getContextPath()%>/type/create"><img border="0" src="../static/css/add.png" width="20" height="20"></a></td></tr>

<tr style="border: 10px;">

<th>Model Name</th>
<th>Filed  Name</th>
<th>Data Type</th>
<th>Length</th>
<th>Default</th>
<th>Primary Key</th>
<th>Not Null</th>
<th>Auto Increment</th>
<th>Create Date</th>
<th>Actions</th>

</tr></thead>
<c:forEach  items="${attribute.content}" var="attribute" varStatus="index">


			
<tr>
 <td>${attribute.name}</td>
 <td>${attribute.fieldname}</td>
 <td>${attribute.datatype}</td>
 <td>${attribute.length}</td>
 <td>${attribute.default1}</td>
 <td>${attribute.pk}</td>
 <td>${attribute.notnull}</td>
<td>${attribute.autoincre}</td>
<td>${attribute.createdate}</td>

<td><a href="<%=request.getContextPath()%>/type/view/${attribute.attributeid}"><img border="0" src="../static/css/eye.png" width="20" height="20"></a>
<a href="<%=request.getContextPath()%>/type/edit/${attribute.attributeid}"><img border="0" src="../static/css/Edit.png" width="20" height="20"></a>
<a href="<%=request.getContextPath()%>/type/delete/${attribute.attributeid}"><img border="0" src="../static/css/delete.png" width="20" height="20"></a>
</td>
</tr>		
<br>
</c:forEach>
<tr>
<td  colspan="5">
<tags:pagination page="${attribute}" paginationSize="${pagination}" />

</td>


</tr>
</table>
</form>



</body>
</html>




