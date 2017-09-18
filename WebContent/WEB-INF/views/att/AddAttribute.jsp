<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="http://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css">
  
<style type="text/css">


#outer{
				
			
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
			width: 96%;
			height: 94%;
			margin-left:20px;
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
table td {
 padding:2px; 
  margin-bottom: 2px;
  padding-left: 40px;
  padding-right: 40px;
padding-bottom:0px;
	background-color:pink;

}

input{
    height: 26px !important;
    
	
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
		<div id=ht><h6>Attribute  Info</h6></div>
		<div id=inner1><br><br><br><br>
		
		    				    
<table border="1" height="200" width="752" bordercolor="black" align="center" >
		    					
<form action="<%=request.getContextPath() %>/type/${action}"  method="POST" >
	<input name="attributeid" type="hidden" value="${attribute.attributeid}"/>
	<tr ><td>Model Name:</td><td>
      <select name="name" style="margin-bottom:3px;">
	     <c:forEach items="${data}" var="read1">
	
	       <option value="${read1.name}" label="${read1.name}">${read1.name}</option>
	     </c:forEach>
	 </select></td></tr>
    
   
<tr ><td >Field Names:</td><td>	<input name="fieldname" type="text" style="margin-bottom: 3px;" value="${attribute.fieldname}"/></td></tr>
<tr ><td>Data Type:	</td><td><input name="datatype" style="margin-bottom: 3px;" type="text" value="${attribute.datatype}"/></td></tr>
<tr ><td >Field Length:</td><td>	<input name="length" style="margin-bottom: 3px;"  type="text" value="${attribute.length}"/></td></tr>
<tr ><td>Field Default:	</td><td><input name="default1" style="margin-bottom: 3px;"  type="text" value="${attribute.default1}"/></td></tr>
<tr ><td>Field Pk:	</td><td><input name="pk" type="text" style="margin-bottom: 3px;" value="${attribute.pk}"/></td></tr>
<tr ><td >Field NotNull:</td><td>	<input name="notnull" style="margin-bottom: 3px;" type="text" value="${attribute.notnull}"/></td></tr>
<tr ><td>Field Key Auto:</td><td>	<input name="autoincre" style="margin-bottom: 3px;" type="text" value="${attribute.autoincre}"/></td></tr>
<tr ><td colspan="2" align="center"> <button type="submit" class="small button success button" style="margin-bottom: 3px;">Submit</button><button type="cancel" style="margin-bottom: 3px;" class="small button alert button">Cancel</button></td></tr>
</table>
		    				
		</div>
		</div>
	</div>
	</form>
 </body>
</html>
