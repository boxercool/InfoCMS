<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ include file="/WEB-INF/common/taglib-js.jsp"%>
 <html>
 <head>
 <head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

 </head>
 <body>
 

	<div id=outer>
		<div id=inner>
		<div id=ht><h6><spring:message code="website_information"></spring:message></h6></div> 
				<div id="inner1"><br><br>
					<table class="table_design" border="1" height="100" width="500" bordercolor="" align="center">
						<form action="<%=request.getContextPath()%>/type/${action}" method="post">


							<tr class="table_design"><td><spring:message code="user_name"></spring:message><font color=red>*</font>:</td><td><input name="name" type="text" style="margin-bottom: 3px;" value="${site.name }"  readonly="true" /></td></tr>
							<tr class="table_design"><td><spring:message code="site_mail"></spring:message></td><td><input name="email" type="text" style="margin-bottom: 3px;" value="${site.email}"   readonly="true"/></td></tr>
							<tr class="table_design"><td><spring:message code="Login_id"></spring:message>:</td><td><input name="login" type="text" style="margin-bottom: 3px;" value="${site.login}"  readonly="true"/></td></tr>
							<tr class="table_design"><td><spring:message code="password"></spring:message>:</td><td><input name="password" type="password" style="margin-bottom: 3px;" value="${site.password}"  readonly="true" /></td></tr>
							<tr class="table_design"><td><spring:message code="site_Title"></spring:message>:</td><td><input name="sitetitle" type="text" style="margin-bottom: 3px;" value="${site.sitetitle }"  readonly="true" /></td></tr>
							<tr class="table_design"><td><spring:message code="site_Domain"></spring:message><font color=red>*</font>:</td><td><input name="sitedomain" type="text" style="margin-bottom: 3px;" value="${site.sitedomain }"  readonly="true" /></td></tr>
							<tr class="table_design"><td><spring:message code="protocol"></spring:message>:</td><td><input name="protocol" type="text" style="margin-bottom: 3px;"  value="${site.protocol}"  readonly="true"/></td></tr>
							<tr class="table_design"><td colspan="2" align="center"><button type="reset" value="cancel"style="margin-bottom: 3px;" class="small button alert" button value="Back" onclick="history.go(-1);"><spring:message code="cancel"></spring:message></button></td></tr>
							
						</form>
					</table>
				</div>
		</div>
	</div>


</body>
 </html>   





<%-- <%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<link rel="stylesheet" href="http://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css">
 <html>
 <head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="http://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css">
  
<style type="text/css">

#outer
		{
			width:100%;
			height:100%;
	/* 	margin-top: 5px;
/* margin-left: 5px;  */ */
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
 padding:2px; 
  margin-bottom: 2px;
  padding-left: 40px;
  padding-right: 40px;

padding-bottom:0px;
	background-color:#DAE9BC;


}
 input{
    height: 30px !important;
    
}


td
{
  padding-top: 2px;
  padding-bottom: 2px;
  
}
</style>
 </head>
 <body>
 
<!-- <form name="myForm" action="demo_form.asp" onsubmit="return validateForm()" method="post">
Name: <input type="text" name="fname">
<input type="submit" value="Submit">
</form> -->
    
<table>
	<tr>
		<td>name</td>
		<td>:${site.name}</td>
	</tr>
	<tr>
		<td>phone</td>
		<td>:${site.email}</td>
	</tr>
	<tr>
		<td>login</td>
		<td>:${site.login}</td>
	</tr>
	<tr>
		<td>password</td>
		<td>:${site.password}</td>
	</tr>
	<tr>
		<td>sitetitle</td>
		<td>:${site.sitetitle}</td>
	</tr>
	<tr>
		<td>sitedomain</td>
		<td>:${site.sitedomain}</td>
	</tr>
	<tr>
		<td>Protocol</td>
		<td>:${site.protocol}</td>
	</tr>
</table>

<a href="/HiberJpa/site/list">home</a>

	<div id=outer>
		<div id=inner>
		<div id=ht><h6>Website Info</h6></div> 
				<div id="inner1"><br><br>
					<table border="1" height="100" width="500" bordercolor="black" align="center">
						<form action="<%=request.getContextPath()%>/type/${action}" method="post">

							<tr><td>Name:</td><td><input name="name" type="text" style="margin-bottom: 3px;" value="${site.name }"  readonly="true" /></td></tr>
							<tr><td>Email:</td><td><input name="email" type="text" style="margin-bottom: 3px;" value="${site.email}"   readonly="true"/></td></tr>
							<tr><td>Login:</td><td><input name="login" type="text" style="margin-bottom: 3px;" value="${site.login}"  readonly="true"/></td></tr>
							<tr><td>Password:</td><td><input name="password" type="password" style="margin-bottom: 3px;" value="${site.password}"  readonly="true" /></td></tr>
							<tr><td>SiteTitle:</td><td><input name="sitetitle" type="text" style="margin-bottom: 3px;" value="${site.sitetitle }"  readonly="true" /></td></tr>
							<tr><td>SiteDomain</td><td><input name="sitedomain" type="text" style="margin-bottom: 3px;" value="${site.sitedomain }"  readonly="true" /></td></tr>
							<tr><td>Protocol:</td><td><input name="protocol" type="text" style="margin-bottom: 3px;"  value="${site.protocol}"  readonly="true"/></td></tr>
							<tr><td colspan="2" align="center"><button type="cancel" style="margin-bottom: 3px;" class="small button alert button">Cancel</button></td></tr>

							<tr><td><spring:message code="login.UserName"></spring:message>:</td><td><input type="text" name="name" style="margin-bottom: 3px;" value="${site.name }"
							 readonly/></td></tr>
							 
							<tr><td>Email:</td><td><input type="text" name="email" style="margin-bottom: 3px;" value="${site.email}" readonly/></td></tr>
							<tr><td>Login:</td><td><input type="text"  name="login" style="margin-bottom: 3px;" value="${site.login}"  readonly/></td></tr>
							<tr><td><spring:message code="login.UserName"></spring:message>:</td><td><input  type="password" name="password" style="margin-bottom: 3px;" value="${site.password}" readonly/></td></tr>
							<tr><td>SiteTitle:</td><td><input  type="text" name="sitetitle"  style="margin-bottom: 3px;" value="${site.sitetitle }" readonly/></td></tr>
							<tr><td>SiteDomain</td><td><input name="sitedomain" type="text" style="margin-bottom: 3px;" value="${site.sitedomain }" readonly/></td></tr>
							<tr><td>Protocol:</td><td><input name="protocol" type="text" style="margin-bottom: 3px;"  value="${site.protocol}" readonly/></td></tr>
							<tr><td colspan="2" align="center"><button type="cancel" value="cancel"style="margin-bottom: 3px;" class="small button alert" button value="Back" onclick="history.go(-1);">Cancel</button></td></tr>
							

						<!-- </form> -->
					</table>
				</div>
		</div>
	</div>



</body>
 </html>   


 --%>