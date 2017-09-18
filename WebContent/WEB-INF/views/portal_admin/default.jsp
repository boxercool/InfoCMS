<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="/common/taglibs.jsp"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="${ctx}/static/css/slider.css">

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css"> 
<style>
html,body {
	background-color: #CCC;
    margin:55px 0px 0px 80px;
    overflow:hidden;
    padding:0;  
}
div#topdiv {
	position:fixed;
	top:0px;
	left:0px;
	width:100%;	
	height:15%;
	color:#CCC;
	background:#333;
	padding:0px;
}
div#bottomdiv {
	position:fixed;
	bottom:0px;
	left:0px;
	width:100%;
	height:17%;
	color:#CCC;
	background:#333;
	padding:0px;
}
.img{
border:2px solid black;
margin-left:30px;
margin-top:30px;
}
.sidebar1 {
    left:0px;
}
.sidebar2 {
    right:0px;
}

.sidebar1
{
    background:#DAE9BC;
    height:100%;
    width:159px;
    top:0;
    padding-top:60px;
    position:fixed;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -o-box-sizing: border-box;
    -ms-box-sizing: border-box;
    box-sizing: border-box;
}
.sidebar2 
{
    background: #DAE9BC;
    height:100%;
    width:402px;
    top:0;
    padding-top:60px;
    position:fixed;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -o-box-sizing: border-box;
    -ms-box-sizing: border-box;
    box-sizing: border-box;
}


#titletext{
position: absolute;
left: 50px;
padding-top:20px;
}

.right{
    float:right;
}

.left{
    float:left;
 
}
</style>
<style type="text/css" media="screen">
#horizontalmenu ul {
padding:1; margin:1; list-style:none;
}
#horizontalmenu li {
float:left; position:relative; padding-right:100; display:block;
border:4px solid #CC55FF; 
border-style:inset;
}
#horizontalmenu li ul {
    display:none;
position:absolute;
}
#horizontalmenu li:hover ul{
    display:block;
    background:red;
height:auto; width:8em; 
}
#horizontalmenu li ul li{
    clear:both;
border-style:none;}

#img1 {
    position: relative;
   left: 115px;
	height:60px;
	width:1190px;
}


#img2 {
    position: absolute;
    left: 115px;
 
}
#titletext{
position: absolute;
    left: 50px;
}
.right{
    float:right;

}

.left{
    float:left;
 
}
</style>	

</head>
<body>
<div class="sidebar1">
</div>
<div class="sidebar2">
</div>  
<c:if test="${not empty headerobj}">
<div id="topdiv" style="background-image:url('${ctx}/static/BackgroundImage/${headerobj.backgroundimage}');">
<img class="img" src="${ctx}/static/Websitelogo/${headerobj.websitelogo}" style="width:60px;height:60px;">

<span class="left">

<h1 id="titletext" style="padding-left:556px;">
<center>
${headerobj.websitetitle}
</center>
</h1>
</span>

<div id="horizontalmenu" style="margin-left: 158px;margin-bottom: -18px;margin-top: -24px;">
      <c:forEach var="menusarray" items="${menushow2}">
        <ul> 
        <c:if test="${rootId eq menusarray.parentid}">
        	<li>
        		<a href="${ctx}/${menusarray.url}" target="_blank">${menusarray.name}</a>
                	<ul> 
                  		<c:forEach  items="${menusarray.getdymenu}" var="submenu" >
               				<li><a href="${ctx}/">${submenu.name}</a></li> 
               			</c:forEach>
					</ul>
            </li>
         </c:if>   
        </ul> 
</c:forEach>
</div>
</div>
</c:if>

<!-- <div class="content">	 -->
    <!-- <div id="scrollable2"> -->
     <iframe name="content" src="${ctx}/${type}/Portfolio/${siteid}/${pageid}" width="75%" height="555px" scrolling="auto"  frameborder="0" top="0px"></iframe> 
   <!--  </div> -->
<!-- </div> -->

  <%-- <iframe name="content" src="${ctx}/${type}/Portfolio/${siteid}/${pageid}" width="75%" height="555px" scrolling="auto"  frameborder="0" top="0px">
  </iframe>  --%>
< <!-- <div class="content"> 
 <h2>Advertisement NAME </h2> 
 <div id="scrollable2" align="right"> 
 -->


<iframe id="myFrame" src="${ctx}/${type}/Portfolio/${siteid}/${pageid}" width="85%" height="1000px"  scrolling="auto"  frameborder="0" >
 
 
     <iframe name="content" src="${ctx}/${type}/Portfolio/${siteid}/${pageid}" width="75%" height="555px" scrolling="auto"  frameborder="0" top="0px"></iframe> 


     <c:if test="${not empty headerobj}">
     
     <img class="img" src="${ctx}/static/Websitelogo/${headerobj.websitelogo}" style="width:100px;height:100px;">
    
    
     </c:if>


     </iframe> 
<!--   </center> -->
  
<!--  </div> 
 </div>   -->

<c:if test="${not empty footerbj}">

<div id="bottomdiv" style="background-image:url('${ctx}/static/backimgfooter/${footerbj.backimgfooter}');">

<span class="right"> 

<h1 id="titletext" style=" padding-left:556px;"><center>


 ${footerbj.copyrighttxt} 


</center></h1>
</span>
  </iframe>

<span style="float:center" id="titletext" style="color:white">
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp©Copyright - Career Infotop 2017&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp                                                                                                                      
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<c:if test="${not empty footerbj.favoriteSM[0]}">

<c:forEach  items="${footerbj.favoriteSM}" var="fasm" varStatus="index" begin="0" end="0">
 <%-- ${footerbj.favoriteSM[index.index]} --%>

<img border="0" src="${ctx}/static/images/fb.png" width="25" height="25">
<img  border="0" src="${ctx}/static/images/youtube.png" width="25" height="25">
<img  border="0" src="${ctx}/static/images/google+.png" width="25" height="25">
<img  border="0" src="${ctx}/static/images/linked.png" width="25" height="25">
<img  border="0" src="${ctx}/static/images/twitter.png" width="25" height="25">

</c:forEach>
</c:if>

</span>

</div>


</c:if>

<script type="text/javascript" language="javascript"> 
 var html_string= "content";
document.getElementById('myFrame').src;
</script>
</body>
</html>