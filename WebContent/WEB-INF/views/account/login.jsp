<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/common/taglibs.jsp" %>
<%@ include file="/WEB-INF/common/taglib-js.jsp"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%-- <head>
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/foundation/foundation.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/foundation/app.css"> 
<style>
DIV.table 
{
    display:table;
} 

</style>
</head> --%>
<body>
<center>
	Language : <a href="?siteLanguage=en"><img src="${ctx}/static/images/Flag/us.png"></a>|
	<a href="?siteLanguage=cn"><img   src="${ctx}/static/images/Flag/China.png"></a>|
		<a href="?siteLanguage=in"><img   src="${ctx}/static/images/Flag/India.png"></a>
</center>
<br><br>
				
	<div class="hero-section">
    	<div class="row">
        	<div class="medium-6 medium-centered large-4 large-centered">
            	<div class="row column log-in-form">

            	
            	<div  style="width: 300px; margin: 100px auto 0 auto;">
            	<!-- <table border="2" align="center" cellpadding="0" cellspacing="0" width="300">
<tr>
    <td>  -->
                	<img src="${ctx}/static/images/fb.jpg" style="float:right;width:90px;height:50px;" /> 
                	
                		<h4 class="text-center"> <spring:message code="login_Title"/> </h4>
                	<form name="loginForm" action="<%=request.getContextPath()%>/login"  method="post">

                <label><spring:message code="login_UserName"></spring:message>
                       <input type="text" name="username" id="username" >
                </label>
                ${msg}
                <label><spring:message code="login_Password"></spring:message> 
                       <input type="text" name="password" id="password" >
                </label>
                 <p style="padding-top: 17px;"><button type="submit" class="button expanded"><spring:message code="login_LogIn"></spring:message></button></p>
                 </form>
                 <p><a class="text-center" href="<%=request.getContextPath()%>/register"><spring:message code="login_Register"></spring:message></a></p> 
             	</div>
           </div>
     	</div>
	</div>
</div>
<!-- </td>
</tr>
</table> --> 
	<%-- <script src="<%=request.getContextPath()%>/static/js/foundation/vendor/jquery.js"></script>
    <script src="<%=request.getContextPath()%>/static/js/foundation/vendor/what-input.js"></script>
    <script src="<%=request.getContextPath()%>/static/js/foundation/vendor/foundation.js"></script>
    <script src="<%=request.getContextPath()%>/static/js/foundation/app.js"></script> --%>
</body>
</html>