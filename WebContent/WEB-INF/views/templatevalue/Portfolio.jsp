<%@page import="com.infotop.childsite.entity.Childsite"%>
<%@page import="com.infotop.site.entity.site"%>
<%@page import="java.util.List"%>
<%@include file="/common/taglibs.jsp" %>
<%@include file="/WEB-INF/common/taglib-js.jsp"%>
<%@page language="java" contentType="text/html;charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${ctx}/static/css/jquery-ui.css"> 
<style>
 .blur {
   		-webkit-filter: blur(3px);
   		-moz-filter: blur(3px);
   		filter: blur(3px);
       } 
/* div.img {
    border: 1px solid #ccc;
}

div.img:hover {
    border: 1px solid #777;
}

div.img img {
    width: 100%;
    height: auto;
}

div.desc {
    padding: 15px;
    text-align: center;
}

* {
    box-sizing: border-box;
}
 */
.responsive {
    padding: 0 6px;
    float: left;
    width: 24.99999%;
}

@media only screen and (max-width: 600px){
    .responsive {
        width: 49.99999%;
        margin: 6px 0;
        
    }
}

@media only screen and (max-width: 400px){
    .responsive {
        width: 100%;
    }
}

.clearfix:after {
    content: "";
    display: table;
    clear: both;
}
</style>
</head>
<body>
<h3>SITE NAME</h3>
${image.thumbnailUrl}
<h5>Resize the browser window to see the effect</h5>
<c:forEach var="image" items="${images}">
<div class="responsive">
<%--<a href="${ctx}/${image.thumbnailUrl}" data-lightbox="example-set">   
  <img class="thumbnail" src="${ctx}/${image.thumbnailUrl}"> 
</a> --%>
<img src="${ctx}/${image.thumbnailUrl}">
<div class="desc" >Add a description of the image here</div>
</div>
</c:forEach>

<div class="showImage">  
</div>

<div class="clearfix"></div>

<script>
$(document).ready(function()
{
    $(".responsive img").click(function(){
    	var sample= this.src;
    	var disp='<img src="'+sample+'"height="500px" width="500px"/>';
      	$(".showImage").html(disp);
        $(".showImage").dialog({minHeight:500,minWidth:500,modal:true});
        $('.responsive').addClass('blur');   
 });
    
    $('.showImage').on('dialogclose',function(event) {
    	  $('.responsive').removeClass('blur'); 
    });
});
</script>
</body>
</html>

