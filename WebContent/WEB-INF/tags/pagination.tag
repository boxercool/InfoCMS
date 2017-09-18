<%@ tag pageEncoding="UTF-8"%>
<%@ attribute name="page" type="org.springframework.data.domain.Page" required="true"%>
<%@ attribute name="paginationSize" type="java.lang.Integer" required="true"%>
<%@ include file="/common/taglibs.jsp"%> 
<%--  <%@taglib uri="http://www.springframework.org/tags/form" prefix="spring1" %>  --%> 

<%
	int current = page.getNumber() + 1;
	int begin = Math.max(1, current - paginationSize / 2);
	int end = page.getTotalPages();
	long total=page.getTotalElements();
	int totalData = page.getContent().size();
	request.setAttribute("totalData", totalData);
	request.setAttribute("current", current);
	request.setAttribute("begin", begin);
	request.setAttribute("end", end);
%>
<style>
a{
color:green;
}
</style>
<script>
	function jumpPage(pageNo) {
		var mainForm=document.getElementById("mainForm"); 
	    mainForm.action="?page="+pageNo+"&sortType=${sortType}"
	    mainForm.submit();
	    k.action=""
	}
</script>

<div class="Row-Class" align="center">
<%
	if (page.hasNextPage() || page.hasPreviousPage()) {
%>

 <spring:message code="currentpage"></spring:message>
 <c:forEach var="i" begin="${begin}" end="${end}">
	<c:choose>
	<c:when test="${i==current}">${i}</c:when></c:choose>
	</c:forEach>${end} /<spring:message code="totaldata"></spring:message> 
	 <%=  total %> 

		
			<%
			if (page.hasPreviousPage()) {
		%>
		<a  href="javascript:jumpPage(1)" style="" ><img border="0" src="../static/css/fast1.png" width="20" height="20"></a>
		<a href="javascript:jumpPage(${current-1})" ><img border="0" src="../static/css/left_circle.png" width="20" height="20"></a>
		<%
			} else {
		%>
		<a class="disabled" href="#"><img border="0" src="../static/css/fast1.png" width="20" height="20"></a>
		<a href="#"><img border="0" src="../static/css/left_circle.png" width="20" height="20"></a>
		<% 
			}
		%>
		<%
			if (page.hasNextPage()) {
		%>
		<a class="btn btn-info" href="javascript:jumpPage(${current+1})"><img border="0" src="../static/css/right_arrow.png" width="20" height="20"></a>
		<a class="btn btn-info" href="javascript:jumpPage(${page.totalPages})"><img border="0" src="../static/css/fast.png" width="20" height="20"></a>
		<%
			} else {
		%>
		<a class="disabled" href="#"><img border="0" src="../static/css/right_arrow.png" width="20" height="20"></a>
		<a class="disabled" href="#"><img border="0" src="../static/css/fast.png" width="20" height="20"></a>
		<%
			}
		%>
		<%} %>
</div>