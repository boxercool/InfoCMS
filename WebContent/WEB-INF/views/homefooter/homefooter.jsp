<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!--<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Footer</title>
</head>
<body>
<h1>Template view of Footer</h1>
<body onload="return check()">
hello
<header>
    <div class="head" id="myDiv" >
		 <div class="row"  >
	          <h1 id="para"><span class="color"><img src="C:/Users/Administrator/Desktop/header/download.png" alt="logo" width="100" height="80" /></h1>
	     </div>
		 <div class="title" >
		 
		  <h1 id="para1"><span class="color">Website Title</span></h1>
		 </div>
		 <div class="Menu" >
			<nav>
			
		    </nav>
         </div>
	</div>
     
	</header>
 
		
		
		<script>
		
	
	
		function check() {
	
		document.getElementById("myDiv").style.backgroundImage = "url(C:/Users/Administrator/Desktop/header/download1.jpg)";
    if (document.form.bg.value == "yes") {
	
	document.getElementById("myDiv").style.backgroundImage = "url(C:/Users/Administrator/Desktop/header/download1.jpg)";
        
    } else {
       document.getElementById("myDiv").style.backgroundColor= "#444";
    }
    return false;
}
		
		
		
</script>
</body></html>