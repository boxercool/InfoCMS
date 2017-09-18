<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ include file="/WEB-INF/common/taglib-js.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%-- <link rel="stylesheet" href="${ctx}/static/css/portaladmin/home.css"> --%>
<%-- <link rel="stylesheet" href="${ctx}/static/css/portaladmin/home1.css"> --%>
<%-- <link rel="stylesheet" href="${ctx}/static/css/portaladmin/menu-vertical.css"> --%>
<%-- <link rel="stylesheet" href="${ctx}/static/css/portaladmin/font-awesome.min.css"> --%>

<body>
<header id="header">	
	<a href="?siteLanguage=en"><img   src="${ctx}/static/images/Flag/us.png"></a>
	<a href="?siteLanguage=cn"><img   src="${ctx}/static/images/Flag/China.png"></a>
	<a class="right" href="${ctx}/logout" style="padding-top: 16px;"><spring:message code="logout"></spring:message></a> 
		
 <a href class="button1">
 <SPAN><center>INFOCMS</SPAN>
 </align>
 </a>
	</header>
	<div id="container">
		<main id="center" class="column">
			<article id="article" align="center">	   
			<IFRAME name="content"  width="105%" height="450px" dropzone="true" frameborder="0" class="myIframe">
             </IFRAME>                                                               
			</article>								
		</main>

		<nav id="left" class="column">
			<!-- -------------------------------------new code-changed  --------------------------->	
			<div class="accordion2">
			    <ul id="accordion1"> 
				<li><h2><a href ="${ctx}/site/list" target="content"><spring:message code="user_website"></spring:message></a></h2></li>
				<ul>
				</ul>
				<li><H2><a href="${ctx}/Childsite/list" target="content"><spring:message code="pages"></spring:message></a></H2></li>
				<ul>
				
				</ul>
				<li><H2><a target="content"><i class="fa-li fa fa-spinner fa-spin fa-1x fa-fw"></i>
				<spring:message code="layout"></spring:message></a></H2></li>
				<ul>
				 <H2>
				<li><a href="${ctx}/template/list" target="content">	<spring:message code="addLayout"></spring:message></a></li>
				<li><a href="${ctx}/portaladmin/template" target="content">	<spring:message code="templates"></spring:message></a></li>
				<li><a href="${ctx}/portaladmin/templateURL" target="content">	<spring:message code="templatesurl"></spring:message></a></li>
				</H2>
				</ul>
				
				<li><H2><a target="content"><spring:message code="content"></spring:message></a></H2></li>
				<ul>
				<li><a href="" target="content"> </a></li>
				<li><a href="" target="content"> </a></li>
				</ul>
				<li>
				
				<H2>
				<a target="content"><i class="fa-li fa fa-spinner fa-spin fa-1x fa-fw"></i>PageConfiguration</a>
				</H2>
				</li>
				
				<ul>
				<H2>
				<li><a href="${ctx}/pageConfiguration/list" target="content">

				<!-- </a></li> -->

				<%-- <spring:message code="page_Configuration"></spring:message> --%>page_Configuration</a></li>

				<%-- <li><a href="${ctx}/header/frameheader" target="content">Home Header</a></li> --%>
				<li><a href="${ctx}/header/list" target="content"><spring:message code="user_homeheader"></spring:message></a></li>
				<%-- <li><a href="${ctx}/footer/framefooter" target="content">Home Footer</a></li> --%>
				<li><a href="${ctx}/footer/list" target="content"><spring:message code="user_HomeFooter"></spring:message></a></li>
                </H2>
				<li><a href="${ctx}/modelController/list" target="content">Model</a></li>


				<li><a href="${ctx}/menu/listsites" target="content"><spring:message code="user_MenuConfiguration"></spring:message></a></li>

				</ul>
				</ul>    
            </div>	     		
		</nav>   		
            <!---------------------------------------------------------------------------------------------------->
		<div id="right" class="column">
			<!-- <h3>Right heading</h3> -->
			<p>   </p>
		</div>
</div>
	<div id="footer-wrapper">
		<footer id="footer"><p>Footer...</p></footer>                                     
	</div>
						<a href ="${ctx}/header/list" target="content">Home Header</a>
					</dd>
					<dd>
						
						 <a href ="${ctx}/footer/list" target="content">Home Footer</a>
					</dd>
					<dd>
						<a href ="${ctx}/menu/treemenu" target="content">Tree Menu</a>
					</dd>
<SCRIPT>
$("#accordion1 > li").click(function(){

	if(false == $(this).next().is(':visible')) 
	{
		$('#accordion1 > ul').slideUp(300);
	}
	$(this).next().slideToggle(300);
});
$('#accordion1 > ul:eq(0)').show();
</SCRIPT>      
</body>
</html>
