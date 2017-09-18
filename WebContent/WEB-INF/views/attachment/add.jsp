<%@ page contentType="text/html;charset=UTF-8"%>
<%-- <%@ include file="/common/taglibs.jsp"%> --%>
 <%@include file="/common/taglibs.jsp" %>




<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- <style>

thead {
  vertical-align: top;
  text-align: left;
}

div{
 color: white;
 height: 25px;
 width: 100px;
 font-size: 6px;
 background-color: 	#9ACD32;
 text-align: center;
 
}
</style> -->

<style type="text/css">
	#outer {
		width: 100%;
		height: 100%;
	}
	
	#inner {
		width: 100%;
		height: 100%;
		padding-top: 0px;
		background: #CDCDCF;
	}
	
	#inner1{
		width: 95%;
		height: 92%;
		margin-left: 20px;
		background: #F2F3E5;
		bottom: 8px;
	}
	
	#ht {
		color: white;
		height: 25px;
		width: 17%;
		font-size: 6px;
		background: #BDBD0D;
		text-align: center;
	    z-index: 3; 
		bottom: -15px;
		margin-left: 18px;
		border-top: 18px;
	}
	
	table td{
		padding: 2px;
		margin-bottom: 2px;
		padding-left: 40px;
		padding-right: 40px;
		padding-bottom: 0px;
		background-color: #DAE9BC;
	}
	
	input {
		height: 26px !important;
		
	}
	
	td {
		padding-top: 0px;
		padding-bottom: 0px;
	}
</style>
</head>
<body>

<%-- <form action="<%=request.getContextPath() %>/main/${action}"  method="POST" >
	<input name="id" type="hidden" value="${attachment.id}"/>
	<input name="fileName" type="text" value="${attachment.fileName}"/>
	<input name="filePath" type="text" value="${attachment.filePath}"/>
	<input name="rid" type="text" value="${attachment.rid }"/>
	<input type="submit" value="add" />
</form> --%>


		<%-- <form action="<%=request.getContextPath() %>/main/${action}"  method="POST" >
		<table  bgcolor="#C0C0C0" height="290" width="800" class="pure-table" align="center">
 	   	 	<tr>
 	   	 		
	     		<td>
		    		<table border="0" bgcolor="#F2F3E5" height="250" width="760" class="pure-table" align="center">
		    			<tr> <td>
		    				<thead>
										<tr>
											<td><div><h1>Personal Info</h1></div></td>
										</tr>
		    						</thead>
		    						</td></tr>
		    						<tr ><td >
		    				    
		    					<table border="1" height="200" width="752" bordercolor="black" align="center" >
		    						
		    							<tr bgcolor="pink"><td >Names:</td><td><input type="text" name="Name" ></td></tr>
											<tr bgcolor="pink"><td>FilePath:</td><td><input type="text" name="FilePath" ></td></tr>
										
											<tr bgcolor="pink">
												<td>RID:</td><td><input type="text" name="RID" ></td></tr>

											<tr bgcolor="pink"><td>ID:</td><td><input type="text" type="hidden" name="ID" ></td></tr>	

											<tr bgcolor="pink"><td>ID:</td><td><input type="text" type="hidden" name="ID" ></td></tr>
											<tr bgcolor="pink"><td colspan="2" align="center"><input type="button" value="submit"  /></td></tr>
											

		    					</table>
		    				</td>
		    			</tr>
		    		</table>
	       		 </td>
	    	 </tr>
		</table>
	</form> --%>
	
	
	<div id=outer>
		<div id=inner>
			<div id=ht><h1>Attribute Info</h1></div>
			<div id=inner1><br><br><br><br>
				<table border="1" height="100" width="500" bordercolor="black" align="center">
					<form action="<%=request.getContextPath() %>/main/${action}"  method="POST" >
					<tr><td>Name:</td><td><input name="name" type="text" style="margin-bottom: 3px;" /></td></tr>
					<tr><td>Email:</td><td><input name="email" type="text" style=margin-bottom: 3px;" /></td></tr>
					<tr><td>Login:</td><td><input name="login" type="text" style="margin-bottom: 3px;" /></td></tr>
					<tr><td>Password:</td><td><input name="password" type="password" style="margin-bottom: 3px;" /></td></tr>
					<tr><td>SiteTitle:</td><td><input name="sitetitle" type="text" style="margin-bottom: 3px;" /></td></tr>
					<tr><td>SiteDomain:</td><td><input name="sitedomain" type="text" style="margin-bottom: 3px;" /></td></tr>
					<tr><td>Protocol:</td><td><input name="protocol" type="text" style="margin-bottom: 3px;" /></td></tr>
					<tr><td colspan="2" align="center"><button type="submit" style="margin-bottom: 3px;" class="small button success button">Submit</button><button type="cancel" style="margin-bottom: 3px;" class="small button alert button">Cancel</button></td></tr>
					</form>
				</table>
			</div>
		</div>
	</div>
</body>
</html>