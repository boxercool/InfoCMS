<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ include file="/WEB-INF/common/taglib-js.jsp"%>
<!--<link rel="stylesheet" href="http://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css">-->
<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>-->
<title>Insert title here</title>
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


</style>
</head>
<body>

 	<div id=outer>
		<div id=inner>
			<div id=ht><h6><spring:message code="footers_HomeFooterInfo"></spring:message></h6></div>
				<div id="inner1"><br>
					<table class="table_design" border="1" height="100" width="500" bordercolor="black" align="left">
						<form:form method="post" onsubmit="bodyload()" modelAttribute="footer" action="/InfoCMS/footer/viewfooter">
						<%-- <form:form action="<%=request.getContextPath()%>/footer/createfooter" method="post" onsubmit="bodyload()" modelAttribute="footer"> --%>				
							<tr><input name="id" type="hidden" value="${footer.backimgfooter}" readonly="true"/><td>
							<spring:message code="footers_Backgroundimage"> 
							</spring:message></td><td>
							<input name="backimgfooter" type="text" style="margin-bottom: 3px;" id="backimgfooter" value="${footer.backimgfooter}" size="50" onchange="footbackimg(this)" readonly="readonly" /></td><td></td></tr>
							<tr><td><spring:message code="footers_CopyRights"></spring:message></td><td><input name="copyrighttxt" type="text" style="margin-bottom: 3px;" id="copyrighttxt" value="${footer.copyrighttxt}" onkeyup="mycopyright()" readonly/></td><td></td></tr>
							<tr><td><spring:message code="footers_SocialMedia"></spring:message></td><td><spring:message code="footers_Facebook"></spring:message></td><td><form:checkbox path="favoriteSM" value="www.facebook.com" id="fb" onchange="facebook()" onclick="return false;"></form:checkbox></td></tr>
							<tr><td></td><td><spring:message code="footers_Twitter"></spring:message></td><td><form:checkbox path="favoriteSM" value="www.twitter.com" id="twitter" onchange="twitterfuc()" onclick="return false;"></form:checkbox></td></tr>
							<tr><td></td><td><spring:message code="footers_LinkedIn"></spring:message></td><td><form:checkbox path="favoriteSM" value="www.linkedin.in" id="linkedin" onchange="linkfuc()"  onclick="return false;"></form:checkbox></td></tr>
							<tr><td></td><td><spring:message code="footers_GooglePlus"></spring:message></td><td><form:checkbox  path="favoriteSM" value="www.google.com" id="google" onchange="googfuc()"  onclick="return false;"></form:checkbox></td></tr>
							<tr><td></td><td><spring:message code="footers_Youtube"></spring:message></td><td><form:checkbox path="favoriteSM"  value="www.youtube.com" id="youtube" onchange="youtufuc()"  onclick="return false;"></form:checkbox></td></tr>
							 <tr><td><spring:message code="footers_Websiteid"></spring:message></td>
							 
							 	<c:forEach items="${site}" var="site">
								<c:if test="${footer.websiteid eq site.id }">
									<td><input type="text" value="${site.sitetitle}" readonly="true"/></td>
									
									
								</c:if>
								
							</c:forEach><td></td>
							 </tr>						
							<tr ><td colspan="3" align="center"><a href="${ctx}/footer/list"><button type="button" style="margin-bottom: 3px;" class="small button alert button" value="Cancel"><spring:message code="footers_Cancel"></spring:message></button></a></td></tr>
						
						</form:form>
			 <div style="width:50%; height:90%; background-color:white;
			
			 background-size:contain;

			 float:right;">
			 
			 <div class="title" id="title">
		 
		  <h4><center>
		  <span class="color"> ${footer.backimgfooter} </span>
		  <br>
		  <p></p>
		  
		  <img src="${ctx}/static/backimgfooter/${footer.backimgfooter}" height="400" width="400" />
		 		
		 
		  </center>
		  </h4>
		  
		 </div>   
				<div class="head" id="myDiv" hidden="true">
				
	<div class="row" style="width:100%; height:200%;">
	        <!--   <img id="logo"/></img> -->
	          
	    
	     </div>
	     </div>

<div class="row" id="myfoot">
<div class="span4" id="copyright" hidden="true">
<h5><span>*Copyright Message</span></h5> 
</div>
   
<div class="span4" id="socialmediaicons"> 
<div class="fbsm" id="fbsm" hidden="true">
<a href="https://www.facebook.com/"><img border="0" src="../static/images/fb.png" width="25" height="25"></a>
</div>

<div class="gsm" id="gsm" hidden="true">
<a href="https://plus.google.com/"><img border="0" src="../static/images/google+.png" width="25" height="25"></a>
</div>

<div class="twittersm" id="twittersm" hidden="true">
<a href="https://www.twitter.com/"><img border="0" src="../static/images/twitter.png" width="25" height="25"></a>
</div>

<div class="linkedinsm" id="linkedinsm" hidden="true">
<a href="https://www.twitter.com/"><img border="0" src="../static/images/linked.png" width="25" height="25"></a>
</div>

<div class="youtubesm" id="youtubesm" hidden="true">
<a href="https://www.twitter.com/"><img border="0" src="../static/images/youtube.png" width="25" height="25"></a>
</div>
</div></div> 
</table>
</div>
</div>
</div>

<script type="text/javascript">
function footbackimg(input) {

	
    if (input.files && input.files[0]) {
        var reader = new FileReader();
      
        
   
        reader.onload = function (e) {
  
        	document.getElementById("myfoot").style.backgroundImage = "url('" + e.target.result + "')";
    
           
        }

        reader.readAsDataURL(input.files[0]);
    }
    $( "#myfoot" ).show( "fast" );
}

function mycopyright(){
	
	 $( "#myfoot" ).show( "fast" );
	 $("#copyright").show();
	
	 var bla = "*"+$('#copyrighttxt').val();
	
	 $('#copyright span').text(bla);
	
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