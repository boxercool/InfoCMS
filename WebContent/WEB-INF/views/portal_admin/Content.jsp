<%@page import="com.infotop.site.entity.site"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html;charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@include file="/common/taglibs.jsp" %>
<%@ include file="/WEB-INF/common/taglib-js.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/foundation/foundation.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/foundation/app.css"> --%>
<style type="text/css">

  
table, th, td 
{
    border: 1px solid black;
}

     form
      {
  width:80%; 
  height: 200px; 
  background-color: black;
}

table {
   margin: 0 auto;
   z-index: 1;
   width:50%; 
   height: 50px; 
   background-color: red;
}
textarea 
{
float:right;
 background-color:white;
 overflow: auto;
  width: 430px;
  height: 100px;

}
h3 {
	margin: 1em 0 0.5em 0;
	color: #343434;
	font-weight: normal;
	font-family: 'Ultra', sans-serif;   
	font-size: 26px;
	line-height: 22px;
	text-transform: uppercase;
	text-shadow: 0 2px white, 0 2px #777;
}


.fsSubmitButton
{
padding: 10px 20px 11px !important;
font-size: 21px !important;
background-color:#3adb76;
font-weight: bold;
text-shadow: 1px 1px #3adb76;
color: #ffffff;
border-radius: 100px;
-moz-border-radius: 100px;
-webkit-border-radius: 100px;
border: 1px solid #F36C8C;
cursor: pointer;
box-shadow: 0 1px 0 rgba(255, 255, 255, 0.5) inset;
-moz-box-shadow: 0 1px 0 rgba(255, 255, 255, 0.5) inset;
-webkit-box-shadow: 0 1px 0 rgba(255, 255, 255, 0.5) inset;
}
.fsSubmitButton1
{
padding: 10px 20px 11px !important;
font-size: 21px !important;
background-color: #ec5840;
font-weight: bold;
text-shadow: 1px 1px #ec5840;
color: #ffffff;
border-radius: 100px;
-moz-border-radius: 100px;
-webkit-border-radius: 100px;
border: 1px solid #F36C8C;
cursor: pointer;
box-shadow: 0 1px 0 rgba(255, 255, 255, 0.5) inset;
-moz-box-shadow: 0 1px 0 rgba(255, 255, 255, 0.5) inset;
-webkit-box-shadow: 0 1px 0 rgba(255, 255, 255, 0.5) inset;
}
<script>
$('textarea').autoResize();
</script>
</style>

</head>
<body>

<div id=outer>
		<div id=inner>
			 <div id=ht><h6>port polio information</h6></div>
				<div id="inner1"><br><br><br><br>
				<br>
				<br>

	<table border="1" style="bgcolor:#DAE9BC" bordercolor="white" align="center">

	<form:form name="contentForm" action="${ctx}/portaladmin/Content/Content1" method="post" modelAttribute="${portfolio}">
	<input type="hidden" name="id" value="${portfolio.id }"/>
	<input type="hidden" name="templateid" value="${templateid }"/>
	<input type="hidden" name="pageid" value="${pageid }"/>
	<input type="hidden" name="websiteid" value="${websiteid }"/>
	
<th bgcolor="#DAE9BC">
<h3 style="text-shadow:2px 2px 5px limegreen"><font color="green">Port Polio Content<h3></font>
<p></p></th>

  <tr bgcolor="#DAE9BC"><td  bgcolor="#DAE9BC"><B>Header Name<textarea name="headername" id="styled" onfocus="this.value='';setbg('#e5fff3');" onblur="setbg('white')">${portfolio.headername}</textarea></td>
  </tr>
  <tr bgcolor="#DAE9BC">
    <td><B>Header Content<textarea name="headerContent" id="styled" onfocus="this.value='';setbg('#e5fff3');" onblur="setbg('white')">${portfolio.headerContent}</textarea></td>
  </tr bgcolor="#DAE9BC">
  <tr><td bgcolor="#DAE9BC"><B>Description<textarea name="description" id="styled" onfocus="this.value='';setbg('#e5fff3');" onblur="setbg('white')">${portfolio.description}</textarea></td>
  </tr>
  <tr bgcolor="#DAE9BC" align="center"><td>
  <button type="submit" class="fsSubmitButton" >Submit</button> 
  <button type="reset" class="fsSubmitButton1" >Cancel<button> </td></tr>


<!--  <p><button type="submit" class="button expanded">SUBMIT</button></p> -->
 </form:form></table>
	</div>
	</div>
	</div>
</body>


</html>