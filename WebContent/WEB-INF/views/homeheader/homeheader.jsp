<%@ include file="/common/taglibs.jsp"%> 
<%@ include file="/WEB-INF/common/taglib-js.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
	<title>Header</title>
<style>

header {
	height: 150px;
	width: 100%;
    

}
#para1 {
    text-align: center;
    margin-right: 140px;
	
    
}
#para {
	float: left;
}



header h1 .color {
	color: #02b8dd;
	padding-left: 10px;
	
	
}




header nav ul li {
   
	display: inline-block;
	margin-top: 15px;
}

header nav ul li a {
	color: Black;
	text-transform: uppercase;
	font-weight: bold;
	margin-right: 20px;
   
}



</style> 
</head>
<body onload="return check()">
hello
<header>
    <div class="head" id="myDiv" >
		 <div class="row"  >
	          <h1 id="para"><span class="color"><img src="C:/Users/Administrator/Desktop/header/download.png" alt="logo" width="100" height="80" /></h1>
	     </div>
		 <div class="title"  >
		 
		  <h1 id="para1"><span class="color">Website Title</span></h1>
		 </div>
		 <div class="Menu" >
			<nav>
			<ul>
				<li><a href="#">Home</a></li>
				<li><a href="#">Portfolio</a></li>
				<li><a href="#">Contact</a></li>
				<li><a href="#">Blog</a></li>
				<li><a href="#">Logout</a></li>
			</ul>
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