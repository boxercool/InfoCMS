<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ include file="/WEB-INF/common/taglib-js.jsp"%>
 <html>
 <head>
 <head>
<title>Insert title here</title>
<style>
header nav ul li {
   
	display: inline-block;
	margin-top: 15px;
}

header nav ul li a {
	color: Black;
	text-transform: uppercase;
	font-weight: bold;
	margin-right: 20px;
   
}
.table4 
{
    border-collapse: collapse;
	width:100%;
	height:100%;
}

.table4, td, th 
{
    border: 1px solid black;
}
.table_design
{
  width:100%;
}
</style>
 </head>
 <body>
		<div id=outer>
		<div id=inner>
			<div id=ht><h6><spring:message code="headerv_HomeHeaderInfo"></spring:message></h6></div>
				<div id="inner1">
				 <table class="table4"  align="center">
				    <tr>
				      <td width="40%">
					<table  class="table_design" border="1" height="100" width="500" bordercolor="black" align="left">
						<form:form method="post" onsubmit="bodyload()" modelAttribute="header" action="/InfoCMS/headerView/viewheader">
							<tr><input name="id" type="hidden" value="${headerView.id}"/><td><spring:message code="headerv_WebsiteTitle"></spring:message></td><td><input name="websitetitle" type="text" style="margin-bottom: 3px;" id="websitetitle" value="${headerView.websitetitle}"  readonly="true"/></td></tr>
							<tr><td><spring:message code="headerv_WebsiteLogo"></spring:message></td><td><img src="${ctx}/static/Websitelogo/${headerView.websitelogo}" height="100" width="100" /></td></tr>
							<tr><td><spring:message code="headerv_BackgroundImage"></spring:message></td><td> <img  src="${ctx}/static/BackgroundImage/${headerView.backgroundimage}" height="100" width="100"/></td></tr>
							<tr><td><spring:message code="headerv_WebsiteId"></spring:message></td>
							
							<c:forEach items="${site}" var="site">
								<c:if test="${headerView.websiteid eq site.id }">
									<td><input type="text" value="${site.sitetitle}" readonly="true"/></td>
								</c:if>
							</c:forEach>
						
							</tr>		
							
							<tr ><td colspan="2" align="center"><a href="${ctx}/header/list"><button type="button" value="cance" style="margin-bottom: 3px;" class="small button alert button"  ><spring:message code="headerv_Cancel"></spring:message></button></a></td></tr>
						
						</form:form>
					</table>
					</td>
					  <td>
					  
<header>
    <div id="myDiv" style="background-image: url(${ctx}/static/BackgroundImage/${headerView.backgroundimage});height:290px;">    
		 <div id="load" class="row">
	          <img src="${ctx}/static/Websitelogo/${headerView.websitelogo}" width="100" height="80" /></img>
	     </div>
		 <div class="title"  id="title">		 
		  <h1 ><span class="color">Website Title</span></h1>
		 </div>
		 <div class="Menu" >
			<nav>
			<ul>
				<li><a href="#"><spring:message code="header_Home"></spring:message></a></li>
				<li><a href="#"><spring:message code="header_Portfolio"></spring:message></a></li>
				<li><a href="#"><spring:message code="header_Contact"></spring:message></a></li>
				<li><a href="#"><spring:message code="header_Blog"></spring:message></a></li>
				<li><a href="#"><spring:message code="header_Logout"></spring:message></a></li>
			</ul>
		    </nav>
         </div>
	</div>
     
</header>
					  </td>
					</tr>
					</table>
				</div>
		</div>
	</div>
<script>
$(document).ready(function () {
var bla = $('#websitetitle').val();
$('#title span').text(bla);
});
/* window.onload = function(){document.getElementById("myDiv").style.backgroundImage="url('${ctx}/static/BackgroundImage/${headerView.backgroundimage}')";} */
</script>
</body>
 </html>   


