<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> --%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/common/taglib-js.jsp"%>
<%@ include file="/common/taglibs.jsp"%>  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
header nav ul li {
   
	display: inline-block;
	margin-top: 20px;
}

header nav ul li a {
	color: Black;
	text-transform: uppercase;
	font-weight: bold;
	margin-right: 25px;
   
}
<script type="text/javascript">
var selectedFile = document.getElementById('input').files[0];
</script>
/* $('input[name="file"]').change(function(){
    var fileName = $(this).val();
    alert(fileName);
}); */
/* input[type='file'] 
{
width:200px
size:60px;
  color: transparent; */
}
/* <script type="text/javascript">

$(document).ready(function() 
{
    $('#upload').bind("click",function() 
    { 
        var imgVal = $('#uploadImage').val(); 
        if(imgVal=='') 
        { 
            alert("empty input file"); 

        } 
        return false; 

    }); 
});

$("input[name='file']").change(function() { this.form.submit(); }); */

</style>
</head>
<body>

 	<div id=outer>
		<div id=inner>
			<div id=ht><h6><spring:message code="footer_HomeFooterInfo"></spring:message></h6></div>
				<div id="inner1">
				
					<table class="table_design" border="1"  bordercolor="black" align="left">
						<form:form method="post"  onsubmit="bodyload()" modelAttribute="footer" action="/InfoCMS/footer/createfooter" enctype="multipart/form-data">
						<%-- <form:form action="<%=request.getContextPath()%>/footer/createfooter" method="post" onsubmit="bodyload()" modelAttribute="footer"> --%>
							
							<tr>
							
							<%-- ${footer.id} --%>
							<input name="id" type="hidden" value="${footer.id}"/><td>
							<spring:message code="footer_BackgroundImages"></spring:message>
							</td><td>
							
							
							
							<c:if test="${footer.backimgfooter ne null}">
							<input name="fileSample" value="${footer.backimgfooter}" type="hidden"/>
							</c:if>
							
							
							<%-- <input name="file" type="file" style="margin-bottom: 3px;" id="backimgfooter" value="${footer.backimgfooter}" title="choose a image please" onchange="footbackimg(this)" requied/>${footer.backimgfooter}<!-- </td><td></td></tr> --> --%>
							<input name="file" type="file"  style="margin-bottom: 3px;" id="backimgfooter" 
							 title="choose a image please" onchange="footbackimg(this)" />
							${footer.backimgfooter}</td><td></td></tr>
							<tr><td>
							<spring:message code="footer_CopyRights"></spring:message></td><td><input name="copyrighttxt" type="text" style="margin-bottom: 3px;" id="copyrighttxt" value="${footer.copyrighttxt}" onkeyup="myPreview()" pattern="[a-zA-Z]+" title="enter only alphabets" required/></td><td></td></tr>
							<tr><td>
							
							<spring:message code="footer_SocialMedia" ></spring:message></td><td><spring:message code="footer_Facebook"></spring:message></td><td><form:checkbox path="favoriteSM" value="www.facebook.com" id="fb" onchange="facebook()"></form:checkbox></td></tr>
							<tr><td></td><td><spring:message code="footer_Twitter"></spring:message></td><td><form:checkbox path="favoriteSM" value="www.twitter.com" id="twitter" onchange="twitterfuc()" ></form:checkbox></td></tr>
							<tr><td></td><td><spring:message code="footer_LinkedIn"></spring:message></td><td><form:checkbox path="favoriteSM" value="www.linkedin.in" id="linkedin" onchange="linkfuc()" ></form:checkbox></td></tr>
							<tr><td></td><td><spring:message code="footer_GooglePlus"></spring:message></td><td><form:checkbox  path="favoriteSM" value="www.google.com" id="google" onchange="googfuc()"  ></form:checkbox></td></tr>
							<tr><td></td><td><spring:message code="footer_Youtube"></spring:message></td><td><form:checkbox path="favoriteSM"  value="www.youtube.com" id="youtube" onchange="youtufuc()" ></form:checkbox></td></tr>
							<tr><td><spring:message code="footer_WebsiteId"></spring:message></td>
							<td>
								<select id="websiteid" name="websiteid">
								<c:forEach items="${site}" var="site">
								<c:if test="${footer.websiteid eq site.id}">
								<option value="${footer.websiteid}" selected="selected">${site.sitetitle}</option>
								</c:if>
								<c:if test="${footer.websiteid ne site.id}">
								<option value="${site.id}">${site.sitetitle}</option>
								</c:if>
								</c:forEach>
								</td><td></td>
							</tr>
							<%-- <tr><td align="right"><button type="submit" class="small button success button" style="margin-bottom: 3px;"><spring:message value="add"></spring:message></button></td><td align="left"><button type="reset" style="margin-bottom: 3px;" class="small button alert"  onclick="history.go(-1);"><spring:message code="cancel"></spring:message></button></td></tr>						 --%>
							<%-- <tr ><td colspan="3" align="center"> <button type="submit" class="small button success button" style="margin-bottom: 3px;"><spring:message code="footer_ADD"></spring:message></button><button type="cancel" value="cancel" style="margin-bottom: 3px;" class="small button alert button" value="Back" onclick="history.go(-1);" ><spring:message code="footer_Cancel"></spring:message></button></td></tr> --%>
						    <tr  class="table_design"><td align="right"><%-- <a href="${ctx}/footer/list">  --%>
					<%-- 	 <a href="${ctx}/footer/list">  --%> 
						  <button type="submit" value="add" class="small button success button" style="margin-bottom: 3px;"><spring:message code="footer_ADD"></spring:message></button></td><td colspan="2"><!-- </a> --><%-- <a href="${ctx}/footer/list"> --%>
						    
					   
					 <a href="${ctx}/footer/list">       <button type="button" style="margin-bottom: 3px;" class="small button alert button"><spring:message code="footer_Cancel"></spring:message></button></a></td></tr>
						<%-- </form:form> --%>
						<!-- <td> <img id="logo" alt="logo" width="100" height="80"/></img></td> -->
	   <div class="head" id="myDiv" style="width:50%;height:100%; background-color:white; background-size:contain;float:right;"> 
	 <div class="title"  id="title">  
		 	  <h4><center>
		 	  <br>
		  <span class="color">${footer.backimgfooter}
		 		  <br>
		  <img  id="kumu" src="${ctx}/static/backimgfooter/${footer.backimgfooter}" height="400" width="400" /> 
		  </center>
		  </h4>
		 </span>  
 </div>   
 
<header>
				
 <div class="row" id="myfoot" > 
  <div class="span4" id="copyright" hidden="true">
<h5><span>*Copyright Message</span></h5> 
 </div>
   
   <div class="span4" id="socialmediaicons">
   
  <div class="fbsm" id="fbsm" hidden="true">
<a href="https://www.facebook.com/">
<img border="0" src="${ctx}/static/images/fb.png" width="25" height="25"></a>
</div>

 <div class="gsm" id="gsm" hidden="true">
<a href="https://plus.google.com/"><img border="0" src="${ctx}/static/images/google+.png" width="25" height="25"></a>
</div>

<div class="twittersm" id="twittersm" hidden="true">
<a href="https://www.twitter.com/"><img border="0" src="${ctx}/static/images/twitter.png" width="25" height="25"></a>
</div>

<div class="linkedinsm" id="linkedinsm" hidden="true">
<a href="https://www.twitter.com/"><img border="0" src="${ctx}/static/images/linked.png" width="25" height="25"></a>
</div>

<div class="youtubesm" id="youtubesm" hidden="true">
<a href="https://www.twitter.com/"><img border="0" src="${ctx}/static/images/youtube.png" width="25" height="25"></a>
</div>

 </div>
 </div> 
</div>				
</header>				
		
</div>
</form:form> 
					
<script type="text/javascript">

function myFunction()
{
	
}

function myPreview(){
	
	 $( "#myDiv").show("fast");
	
	 var bla = $('#copyrighttxt').val();
	
	 $('#title span').text(bla);
	
	}


function readURL(input) {

	
   if (input.files && input.files[0]) {
       var reader = new FileReader();
     
       
  
       reader.onload = function (e) {
   
           $('#logo').attr('src', e.target.result);
       }

       reader.readAsDataURL(input.files[0]);
   }
   $( "#myDiv" ).show( "fast" );
}

function footbackimg(input) {


    if (input.files && input.files[0]) {
        var reader = new FileReader();
      
        $( "#kumu" ).hide( "fast" );
   
        reader.onload = function (e) {
  
        	document.getElementById("myDiv").style.backgroundImage = "url('" + e.target.result + "')";
    
           
        }

        reader.readAsDataURL(input.files[0]);
    }
   
}
	function bodyload(){
		
		var x= $('#fb').val();
	
		if(x == false )
			{
			
			 // $('#fb').val('FALSE');
			 document.getelementbyID('fb').value = "False";
			}
		
	}
	
	function facebook(){

	
		
	if ($('#fb').prop('checked') ==true)  
		{
		
		 $("#fbsm").show();
		  
		
		}else if($('#fb').prop('checked')==false){
			
			$("#fbsm").hide();
			 
		} 
	
		}
	
	function twitterfuc(){
		
		
		if (document.getElementById('twitter').checked)
			{
			
			   $("#twittersm").show();
			
			}
		else
			{
				 $("#twittersm").hide();
			}
		
			}
	
	function linkfuc(){
		
		if (document.getElementById('linkedin').checked){
			
			  $("#linkedinsm").show();
		}else
			{
			 $("#linkedinsm").hide();
			
			}
		
		
	}
	
function googfuc(){
		
		if (document.getElementById('google').checked){
			
			  $("#gsm").show();
		}else
			{
			 $("#gsm").hide();
			
			}
		
		
	}
	
function youtufuc(){
	
	if (document.getElementById('youtube').checked){
		
		  $("#youtubesm").show();
	}else
		{
		 $("#youtubesm").hide();
		
		}
	
	
}
	

</script>

</body>
</html>