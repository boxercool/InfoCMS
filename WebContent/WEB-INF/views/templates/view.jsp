<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="/WEB-INF/common/taglib-js.jsp"%>
   <!--  <link rel="stylesheet" href="http://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css"> -->
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
    <%@include file="/common/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>

/* #outer{
		  width:100%;
			height:100%;
			/* margin-top: 5px;
margin-left: 5px; */
		}
		#inner{
			width: 100%;
			
			height:100%;
			padding-top:0px;
		
			background:#CDCDCF;
		}
		#inner1{
			width: 95%;
			height: 92%;
			margin-left:20px;
			background:#F2F3E5;
			bottom: 8px;
		} */
		
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
table td {
 padding:2px; 
  margin-bottom: 2px;
  padding-left: 40px;
  padding-right: 40px;

padding-bottom:0px;
	background-color:#DAE9BC; */


}

input{
    height:29px !important;
   
}

td
{
  padding-top: 0px;
  padding-bottom: 0px;
  
}
</style>
</head>
<body>
	<div id=outer>
		<div id=inner>
			<div id=ht><h6>Template Info</h6></div>
				<div id="inner1"><br><br><br><br>
					<table border="1" height="100" width="500" bordercolor="black" align="center">
						<form action="<%=request.getContextPath()%>/template/view" method="post">
				
							<tr><input name="id" type="hidden" value="${template.id}"/><td>Template name:</td><td><input type="text" name="name"  style="margin-bottom: 3px;" id="name" value="${template.name }" readonly="true"/></td></tr>
							
							 <tr><td colspan="2" align="center"> <button type="submit" class="small button success button" style="margin-bottom: 3px;">Submit</button><button type="cancel" style="margin-bottom: 3px;" class="small button alert button">Cancel</button></td></tr> -->
						</form>
					</table>
				</div>
		</div>
	</div>
</body>
</html>