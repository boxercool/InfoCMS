 <%@ page contentType="text/html;charset=UTF-8"%>

<Html>
<head>
 <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.0.1/css/normalize.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.0.1/css/foundation.css"> -->
 <style>
 table, th, td {
 	/* border: 0px solid black; */
 } 
 
 
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



	
		
		<form action="<%=request.getContextPath() %>/main/${action}"  method="POST" >
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
		    						
		    							<tr bgcolor="pink"><td align="right">Name:</td><td><input type="text" name="Name" ></td></tr>
											<tr bgcolor="pink"><td align="right">FilePath:</td><td><input type="text" name="FilePath" ></td></tr>
										
											<tr bgcolor="pink">
												<td align="right">RID:</td><td><input type="text" name="RID" ></td></tr>
											<tr bgcolor="pink"><td align="right">ID:</td><td><input type="text" type="hidden" name="ID" ></td></tr>
											<tr bgcolor="pink"><td colspan="2" align="center"><input type="button" value="submit"  /></td></tr>
											
		    					</table>
		    				</td>
		    			</tr>
		    		</table>
	       		 </td>
	    	 </tr>
		</table>
	</form>

							


<%-- <table>
	<tr>
		<th>name</th>
		<td>:${attachment.fileName}</td>
	</tr>
	<tr>
		<th>filePath</th>
		<td>:${attachment.filePath}</td>
	</tr>
	<tr>
		<th>rid</th>
		<td>:${attachment.rid}</td>
	</tr>
</table> --%>

<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.0.1/js/vendor/jquery.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.0.1/js/foundation.min.js"></script>
   <script>
      $(document).ready(function() {
         $(document).foundation();
      })
   </script> -->
</body>
</html>