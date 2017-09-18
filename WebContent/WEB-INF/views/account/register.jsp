
<%@ page language="java" pageEncoding="UTF-8"%>
    <%@include file="/common/taglibs.jsp" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/foundation/foundation.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/foundation/app.css">
<style>
/* DIV.table 
{
    display:table;
} */
</style>
</head>
<body>

${msg}
<%-- 	<form name="registerForm" method="post" action="<%=request.getContextPath()%>/register/create">
		<input type="text" name="loginName" id="loginName" />
		<input type="password" id="plainPassword" name="plainPassword" />
		<button type="submit">submit</button>
	</form> --%>

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
    <td> -->
             	
                	<img src="${ctx}/static/images/fb.jpg" style="float:right;width:90px;height:50px;"/> 
                	 
                	<h4 class="text-center"><spring:message code="register_Registerform"></spring:message></h4>
                	<form name="registerForm" action="<%=request.getContextPath()%>/register/create" method="post">
                <label>
             <spring:message code="register_loginName"></spring:message> 
                       <input type="text" name="loginName" id="loginName" placeholder="Enter loginName">
                </label>
                <label>
			  <spring:message code="register_plainPassword"></spring:message> 
                       <input type="password" name="plainPassword" id="plainPassword" placeholder="Enter Password">
                </label>
                 <p><button type="submit" class="button expanded"><spring:message code="register_Register"></spring:message></button></p>
                 </form>
                 <p><a class="text-center" href="<%=request.getContextPath()%>/login"><spring:message code="register_login"></spring:message></a></p> 
             	</div>
           </div>
     	</div>
	</div>
	</div>
	<!-- </td>
	</tr>
	</table> -->
	
	<script src="<%=request.getContextPath()%>/static/js/foundation/vendor/jquery.js"></script>
    <script src="<%=request.getContextPath()%>/static/js/foundation/vendor/what-input.js"></script>
    <script src="<%=request.getContextPath()%>/static/js/foundation/vendor/foundation.js"></script>
    <script src="<%=request.getContextPath()%>/static/js/foundation/app.js"></script>
</body>
</html>