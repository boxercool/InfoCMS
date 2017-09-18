<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body {
        overflow: hidden;
      }
</style>
</head>
<body>
	<div id="container">
		<main id="center" class="column">
			<div class="frame" id="container">
             <iframe name="content"src='<%=request.getContextPath()%>/portaladmin/Site1' width="520" height="600" style="overflow:hidden" frameborder="0"></iframe> 
             <iframe name="content1" src='<%=request.getContextPath()%>/portaladmin/Content' width="500" height="600" frameborder="0"></iframe> 
              <iframe name="content2" src='<%=request.getContextPath()%>/blogforum/forum' width="500" height="600" frameborder="0"></iframe> 
             </div>   
                                                   					
		</main>
		</div>
</body>
</html>