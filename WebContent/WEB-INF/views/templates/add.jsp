<%@ page contentType="text/html;charset=UTF-8"%>
<!--  <link rel="stylesheet" href="http://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css"> -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>  -->
<%@include file="/common/taglibs.jsp" %>
<%@ include file="/WEB-INF/common/taglib-js.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<!-- <style>

#outer{
		width:100%;
		height:100%;
		
		}
		
		#inner
		{
			width: 100%;
			height:100%;
			padding-top:5px;
			background:#CDCDCF;
		}
		#inner1
		{
			width: 95%;
			height: 92%;
			margin-left:18.5px;
			background:#F2F3E5;
			bottom: 8px;
		}
		
#ht
{
 color: white;
 height: 25px;
 width: 17%;
 font-size: 6px;
 background:#BDBD0D;
 text-align: center;
 z-index: 3;
 bottom: -15px;
 margin-left: 18px;
 border-top: 18px;
 
 }
table td 
{
 /*  border-color:1px solid white!important; */
/*   border-color:#FFFFF; */

   border: 1px solid white;
 padding:2px; 
  margin-bottom: 2px;
  padding-left: 40px;
  padding-right: 40px;
    padding-bottom:0px;
	background-color:#DAE9BC;
	 border-top: none; 
	/*   border-left:1px white;  */
	/*  border-bottom:none;
   */
}


input
{
    height:40px 
    !important;
   
}

td
{
  padding-top: 0px;
  padding-bottom: 0px;
  
}
</style> -->
 </head>

<body>
<%-- 	<form name="templateForm" action="${ctx}/template/create" method="post">
	<input type="hidden" name="id" value="${template.id}"/>
		<table>	
			<tr>
				<td>Template name</td>
				<td><input type="text" name="name" value="${template.name}"/></td>
			</tr>
			<tr>
				<td><button type="submit">Add</button></td>
			</tr>
		</table>
	</form> --%>
		
	<div id=outer>
		<div id=inner>
			<div id=ht><h6><spring:message code="template_Info"></spring:message></h6></div>
				<div id="inner1"><br><br><br><br>
					<table class="table_design" border="1" height="100" width="500" bordercolor="black" align="center">
						<form action="<%=request.getContextPath()%>/template/create" method="post">
						<tr class="table_design">
				<input name="id" type="hidden" value="${template.id}"/><td><spring:message code="templateName"></spring:message>:</td><td><input name="name" type="text" style="margin-bottom:3px;" maxlength="17" id="name" value="${template.name}" required pattern="^[a-zA-Z ]+$" /></td></tr>
					 	<tr class="table_design"><td align="right"><button type="submit" class="small button success button" style="margin-bottom: 3px;"><spring:message code="submit"></spring:message></button></td><td align="left"><button type="reset" style="margin-bottom: 3px;" class="small button alert"  onclick="history.go(-1);"><spring:message code="cancel"></spring:message></button></td></tr>
							<%-- <tr><td colspan="2" align="center"> <button type="submit" class="small button success button" style="margin-bottom:3px;"><spring:message code="submit"></spring:message></button><button type="reset" style="margin-bottom: 3px;" class="small button alert button"onclick="history.go(-1);"><spring:message code="cancel"></spring:message></button></td></tr> --%>
						</form>
					</table>
				</div>
		</div>
	</div>
</body>
</html>