<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ include file="/WEB-INF/common/taglib-js.jsp"%>
<html>
<style>
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
.table4 {
    border-collapse: collapse;
	width:100%;
	height:100%;
}

.table4, td, th {
    border: 1px solid black;
}
.table_design
{
  width:100%;
}
</style> 

</head>
<body>
	<div id=outer>
		<div id=inner>
			<div id=ht><h6><spring:message code="header_HomeHeaderInfo"></spring:message></h6></div>
				<div id="inner1">
				  <table class="table4"  align="center">
				    <tr>
				      <td width="40%">
					    <table class="table_design" border="1" bordercolor="black" align="left">
						   <form:form action="${ctx}/header/createheader" method="post" enctype="multipart/form-data" modelAttribute="header" >		
							<tr>
							
							 <input name="id" type="hidden" value="${headerObj.id}"/><td>
							 <spring:message code="header_WebsiteTitle"></spring:message>
							 </td><td>
							 
							 
							 <input name="websitetitle" type="text" style="margin-bottom: 3px;" id="websitetitle" value="${headerObj.websitetitle}" onkeyup="myPreview()" pattern="[a-zA-Z]+" title="enter only alphabets" required /></td></tr>	
							 <tr><td><spring:message code="header_WebsiteLogo"></spring:message></td>
							 
							 <td>
							 <c:if test="${headerObj.websitelogo ne null}">
							 <label for="websitelogo" style="font-size:14px;color:blue;">Logo image:${headerObj.websitelogo}</label>
							 <input name="fileSample1" value="${headerObj.websitelogo}" type="hidden"/>
							 </c:if>
							 
							 <input name="file1" type="file" 
							 style="margin-bottom: 3px;" id="websitelogo" size="50" onchange="readURL(this)" accept="${headerObj.websitelogo}"/>
							 </td></tr>
							
							<tr><td><spring:message code="header_BackgroundImage"></spring:message></td>
							
							<td>
							<c:if test="${headerObj.backgroundimage ne null}">
							<label for="backgroundimage" style="font-size:14px;color:blue;">Background image:${headerObj.backgroundimage}</label>
							<input name="fileSample2" value="${headerObj.backgroundimage}" type="hidden"/>
							</c:if>
							<input name="file2" type="file" id="backgroundimage" style="margin-bottom: 3px;" size="50" onchange="headbackimg(this)" value="${headerObj.backgroundimage}"/>
							</td></tr>
							<tr>
							<td><spring:message code="header_WebsiteID"></spring:message></td><td>	
							<select id="websiteid" name="websiteid">
							<c:forEach items="${site}" var="site" >
							
								<c:if test="${headerObj.websiteid eq site.id }">
									<option value="${headerObj.websiteid}" selected="selected">${site.sitetitle}</option>
								</c:if>
								<c:if test="${headerObj.websiteid ne site.id }">
								
									<option value="${site.id }">${site.sitetitle}</option>
									
							    </c:if>
 						</c:forEach>	
					</td>
				</tr>
							 			
							<tr><td align="right"><button type="submit" class="small button success button" style="margin-bottom: 3px;"><spring:message code="submit"></spring:message></button></td><td align="left"><button type="reset" style="margin-bottom: 3px;" class="small button alert"  onclick="history.go(-1);"><spring:message code="cancel"></spring:message></button></td></tr>							
						</form:form>
						
					    </table>
					  </td>
					  <td>
<header>
    <div class="head" id="myDiv" style="background-image: url(${ctx}/static/BackgroundImage/${headerObj.backgroundimage});height:290px;">
  <!--   hidden="true" -->
		 <div class="row"  >
	        <img id="logo" alt="logo" width="100" height="80" src="${ctx}/static/Websitelogo/${headerObj.websitelogo}"/></img>
	         <%--  <img src="${ctx}/static/Websitelogo/${headerObj.websitelogo}" width="100" height="80" /></img> --%>
	     </div>
		 <div class="title"  id="title">		 
		  <h1><span class="color">Website Title</span></h1>
		 </div>
		 <div class="Menu">
			<nav>
			<ul>
				<li><a href="#"><spring:message code="header_Home"></spring:message></a></li>
				<li><a href="#"><spring:message code="header_Portfolio"></spring:message></a></li>
				<li><a href="#"><spring:message code="header_Contact"></spring:message></a></li>
				<li><a href="#"><spring:message code="header_Blog"></spring:message></a></li>
				<li><a href="#"><spring:message code="header_Logout"></spring:message></a></li>
			</ul>
		    </nav>
         </div>
	</div>
     
</header>
	<div>
<%-- 	<tr><td><spring:message code="header_Websitelogos"></spring:message></td><td><img src="${ctx}/static/Websitelogo/${headerObj.websitelogo}" height="90" width="100"/></td></tr>
	<tr><td><spring:message code="header_BackgroundImages"></spring:message></td><td><img  src="${ctx}/static/BackgroundImage/${headerObj.backgroundimage}" height="90" width="100"  /></td></tr> --%>
	</div>
					  </td>
					</tr>
				  </table>	  
			</div>
		</div>	
	</div>						
<script>

 function myFunction(){
	 $(document).ready(function() {
		 $('#websitelogo').click(function() {
			 var fileIndex = $('#fileTable tr').children().length - 1;
			 $('#fileTable').append(
					 '<tr><td>' +
					 ' <input type="file" name="file1['+ fileIndex +']" />' +
					 '</td></tr>');
		 });
		 
	 }); 
	

}
 


function myPreview(){
	
	  $( "#myDiv" ).show( "fast" );
	
	 var bla = $('#websitetitle').val();
	
	 $('#title span').text(bla);
	
	}


function readURL(input) 
{
     if (input.files && input.files[0]) {
        var reader = new FileReader();
        
        reader.onload = function (e) {
    
            $('#logo').attr('src', e.target.result);
        }
 
      reader.readAsDataURL(input.files[0]);
    }
    $( "#myDiv" ).show( "fast" );
}



function headbackimg(input) {


    if (input.files && input.files[0]) {
        var reader = new FileReader();
      
        reader.onload = function (e) {
  
        	document.getElementById("myDiv").style.backgroundImage = "url('" + e.target.result + "')";    
        }

        reader.readAsDataURL(input.files[0]);
    }
    $( "#myDiv" ).show( "fast" );
}

</script>	
</body>
</html>