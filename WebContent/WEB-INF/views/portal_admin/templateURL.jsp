<%@ page contentType="text/html;charset=UTF-8"%>
 <%@ include file="/common/taglibs.jsp"%> 
 <%@ include file="/WEB-INF/common/taglib-js.jsp"%>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <!-- <link rel="stylesheet" href="http://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css"> -->
<title>Welcome to CMS Product</title>
<head>
<!-- <style>
#outer
{
			
			width:100%;
			height:100%;
		/*  margin-top:5px; */
/* margin-left: 5px; */ */
		}
		#inner{
			width: 100%;
			
			height:100%;
			padding-top:0px;
		
			background:#CDCDCF;
		}
		#inner1{
			width: 93.9%;
			height: 92%;
			margin-left:18.5px;
			background:#F2F3E5;
			bottom: 10px;
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
table
{
   width:46%;
}

input
{
    height: 36px !important;
  
	
}

td
{
  padding-top: 0px;
  padding-bottom: 0px;
  
}

form {

   align:"center";

	}
	#chromeFix { display: block; position: absolute; width: 1px; height: 100%; top: 0px; left: 0px;}
	
</style>
 -->
</head>
<body>
<span id="chromeFix"></span>
<div id=outer>
		<div id=inner>
			 <div id=ht><h6><spring:message code="template_Info"></spring:message></h6></div>
				<div id="inner1"><br>
					<table class="table_design" border="1" bordercolor="white" align="center">
					<form action="<%=request.getContextPath()%>/templateurl/create" method="post">
					<br>
					<br>
					<br>
<center>
	<%-- <form name="frmtemplateurl"  action="${ctx}/templateurl/create" method="post"> --%>

			<tr>
				<td><spring:message code="templates"></spring:message>:</td>
				<td>
					<select name="templateId" required>
						<option selected value="">select template</option>
						<c:forEach items="${templates}" var="template">
							<option value="${template.id}">${template.name} </option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td><spring:message code="templatesurl"></spring:message> <font color=red>*</font>:</td>
				<td><input type="text" name="templateURL" required="true"  required pattern='[A-Za-z\\s]*'/></td>
			</tr>
			<tr>
				<td>
					<spring:message code="templateName"></spring:message> <font color=red>*</font>:
				</td>
				<td>
				<input type="text" name="templateName" required pattern="^[a-zA-Z ]+$"' title="space not allowed"/></td>
			</tr>
			<tr>
			<tr><td align="right"><button type="submit" class="small button success button" style="margin-bottom: 3px;"><spring:message code="submit"></spring:message></button></td><td align="left"><button type="reset" style="margin-bottom: 3px;" class="small button alert"  onclick="history.go(-1);"><spring:message code="cancel"></spring:message></button></td></tr>
			<%-- <tr><td colspan="2" align="center"> <button type="submit" class="small button success button" style="margin-bottom: 3px;"><spring:message code="submit"></spring:message></button><button type="reset" style="margin-bottom: 3px;" class="small button alert"  onclick="history.go(-1);"><spring:message code="cancel"></spring:message></button></td></tr> --%>

			</tr>
			</td>
</form>
		</table>
			</div>
		</div>
	
	
</body>
</html> 
