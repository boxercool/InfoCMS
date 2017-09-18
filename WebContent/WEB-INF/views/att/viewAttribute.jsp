<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Attribute Type</title>
 <%@ page contentType="text/html;charset=UTF-8"%>

<Html>
<head>
 <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.0.1/css/normalize.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.0.1/css/foundation.css"> -->
<link rel="stylesheet" href="http://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css">
  
 <style>
#outer{
				
			
			width:100%;
			height:100%;
			margin-top: 5px;
margin-left: 5px;
		}
		#inner{
			width: 80%;
			
			height:98%;
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
<!--  <style>
table, th, td ,tr,thead{
    border: 1px solid black;
}

</style>  -->
</head>
<body>



	
		
		
	<div id=outer>
		<div id=inner>
		<div id=ht><h6>Attribute  Info</h6></div>
		<div id=inner1><br><br><br><br>
		
		    				    
		    					<table border="1" height="200" width="752" bordercolor="black" align="center" >
		    						
		    							<tr bgcolor="pink"><td>Model Name:</td><td>${attribute.name}</td></tr>
		    							<tr bgcolor="pink"><td >Filed Name:</td><td>${attribute.fieldname}</td></tr>
		    							<tr bgcolor="pink"><td>Data Type:</td><td>${attribute.datatype}</td></tr>
		    							<tr bgcolor="pink"><td>Length:</td><td>${attribute.length}</td></tr>
		    							<tr bgcolor="pink"><td>Default Name:</td><td>${attribute.default1}</td></tr>
		    							
		    								<tr bgcolor="pink"><td >Pk Name:</td><td>${attribute.pk}</td></tr>
		    							<tr bgcolor="pink"><td >Not Null Type:</td><td>${attribute.notnull}</td></tr>
		    						
		    							
		    							<tr bgcolor="pink"><td >Increment Name:</td><td>${attribute.autoincre}</td></tr>
											<tr bgcolor="pink"><td>Create Date:</td><td>${attribute.createdate}</td></tr>
											<tr ><td colspan="2" align="center"><a href="<%=request.getContextPath() %>/type/list">home</a></td></tr>
										
											
		    					</table>
		    
		    				
		</div>
		</div>
	</div>
	













<%-- <%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Attribute</title>
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body bgcolor="red">

<br><br>
<br><br><br><br><br>
<div class="container">




<table class="table">
	<tr>
		<td class="success">Model Name</td>
		<td class="info">:${attribute.name}</td>
	</tr>
	<tr>
		<td class="success">Filed Name</td>
		<td class="info">:${attribute.fieldname}</td>
	</tr>
	<tr>
		<td class="success">Data Type</td>
		<td class="info">:${attribute.datatype}</td>
	</tr>
	<tr>
		<td class="success">Filed Length</td>
		<td class="info">:${attribute.length}</td>
	</tr>
	<tr>
		<td class="success">Filed Default</td>
		<td class="info">:${attribute.default1}</td>
	</tr>
	<tr>
		<td class="success">Filed PK</td>
		<td class="info">:${attribute.pk}</td>
	</tr>
	<tr>
		<td class="success">Filed NotNULL</td>
		<td class="info">:${attribute.notnull}</td>
	</tr>
	<tr>
		<td class="success">Field Key Auto</td>
		<td class="info">:${attribute.autoincre}</td>
	</tr>
	<tr>
		<td class="success">Attribute Create Date</td>
		<td class="info">:${attribute.createdate}</td>
	</tr>
	
<tr>
<th>
</th><th>
<a href="<%=request.getContextPath() %>/type/list">home</a></th></tr>
</table>
</div>
</body>
</html> --%>