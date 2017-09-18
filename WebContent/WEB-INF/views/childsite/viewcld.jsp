<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ include file="/WEB-INF/common/taglib-js.jsp"%> 
<!-- <link rel="stylesheet" href="http://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css"> -->
<html>
<head>
<!-- <style type="text/css">
#outer{
		
			width:100%;
			height:100%;
			/* margin-top: 5px;
margin-left: 5px; */
		}
		#inner{
			width: 100%;
			height:100%;
			padding-top:5px;
			background:#CDCDCF;
		}
		#inner1{
			width: 95%;
			height: 92%;
			margin-left:18.5px;
			background:#F2F3E5;
			bottom: 8px;
		}
		
#ht{
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

input{
    height: 30px !important;
   
}


td
{
  padding-top: 0px;
  padding-bottom: 0px;
  
}
</style> -->
 </head>
 <body>
   
<%-- <table>
	<tr>
		<td>name</td>
		<td>:${Childsite.pagename}</td>
	</tr>
	<tr>
		<td>phone</td>
		<td>:${Childsite.websiteid}</td>
	</tr>	
</table>
<a href="/HiberJpa/Childsite/list">home</a> --%>
<div id=outer>
		<div id=inner>
			 <div id=ht><h6><spring:message code="page_Info"></spring:message></h6></div>
				<div id="inner1"><br><br><br><br>
				
					<table class="table_design" border="1"  bordercolor="" align="center">
						<%-- <form action="<%=request.getContextPath()%>/type/${action}" method="post"> --%>
							<tr class="table_design"><td><spring:message code="page_name"></spring:message><font color=red>*</font>:</td><td><input name="name" type="text" style="margin-bottom: 3px;" value="${Childsite.pagename }" readonly/></td></tr>
							<tr class="table_design"><td><spring:message code="usersite"></spring:message>:</td><td><input name="websiteid" type="text" style="margin-bottom: 3px;" value="${Childsite.websiteid}" readonly /></td></tr>
							<tr class="table_design"><td><spring:message code="type"></spring:message>:</td><td><input name="type" type="text" style="margin-bottom: 3px;" value="${Childsite.type}" readonly/></td></tr>
							<tr class="table_design"><td><spring:message code="url"></spring:message><font color=red>*</font>:</td><td><input name="url" type="text" style="margin-bottom: 3px;" value="${Childsite.url}" readonly/></td></tr>
							<tr class="table_design"><td colspan="2" align="center"><button type="reset" style="margin-bottom: 3px;" class="small button alert button" onclick="history.go(-1);"><spring:message code="cancel"></spring:message></button></td></tr>
						<!-- </form> -->
					</table>
				</div>
		</div>
	</div>
</body>
</html>
