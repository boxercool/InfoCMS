<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>

<html>
	<head>
	<style type="text/css">
    div#box1{border:#999 2px solid;width:200px;height:200px;margin:20px;}
    div#box1>img{position:absolute;z-index:2000;width:200px;max-height:200px;}
    div#box1>a
     {
           display:none;
           position:absolute
           margin:90px 0px 0px 120px;
           z-index:3000;
           background:#F0F0F0;
           border:#81A332 1px solid;
           border-radius:3px;
           padding:5px;
           font-size:12px;
           text-decoration:none;
    }
     div#box1:hover a
      {
           display:block;
      }
      table
      {
       background-color:white;
      }
      
    th,td{
     background-color:#DAE9BC;
    padding: 15px;
    text-align: left;
}  

h2 
{
    color: green;
    text-shadow: 2px 2px 4px #81A332;
}

</style>
</head>
	<body>
	
	
	 <table style="border:#81A332 4px solid" align="center">
		 <BR>
                      <center><h2>  Page configuration information </h2></center>
<c:forEach var="template" items="${templates}">
		<br>
		<tr>
		
	<td>  
       <div id="box1" BORDER="3">
       <a href="${ctx}/portaladmin/template/${template.id}/${page.id}/${page.websiteid}">${template.name}</a>
       <img src="${ctx}/static/images/te.png" alt="pic">
        </div> 
     
			</td>
			<c:if test="${page.templateid ne template.id}">
			<td colspan="2">
				
					<a href="${ctx}/pageConfiguration/${page.id}/${template.id}">change</a>
				
	
			</c:if>
			
				<c:if test="${page.templateid eq template.id}">
					enabled
				</c:if>
		
			<td>
				<c:if test="${page.templateid eq template.id}">
					<c:forEach var="templateURL" items="${templateURLs}">
						<c:if test="${template.id eq templateURL.templateId}">
							<a href="${ctx}/${templateURL.templateURL}/${template.id}/${page.id}/${page.websiteid}" target="_blank">edit ${template.name} ${templateURL.templateName}</a>
						</c:if>
					</c:forEach>
				</c:if>
			</td>
		</tr>
	</c:forEach> 
	</table>
		 
	
<%-- <!-- <table style="border:#81A332 3px solid" align="center"> -->

<TABLE   BORDER="3" CELLPADDING="10" CELLSPACING="10" align="center">
          
  
          <TR  width="584">
           <BR>
                      <center><h2>  Page configuration information </h2></center>
           <c:forEach var="template" items="${templates}">
		<br>
		<tr>
	<td>  
      <div id="box1"> 
      
             <a href="${ctx}/portaladmin/template/${template.id}/${page.id}/${page.websiteid}">${template.name}</a>
       <img src="${ctx}/static/images/te.png" alt="pic">
   
     	   </div> 
     	   
			<c:if test="${page.templateid ne template.id}">
			<td colspan="5">
			
		<a href="${ctx}/pageConfiguration/${page.id}/${template.id}">change</a>
				
			
			</c:if>
	<c:if test="${page.templateid eq template.id}">	enabled
				</c:if>
			
				<c:if test="${page.templateid eq template.id}">
					<c:forEach var="templateURL" items="${templateURLs}">
						<c:if test="${template.id eq templateURL.templateId}">
							<a href="${ctx}/${templateURL.templateURL}/${template.id}/${page.id}/${page.websiteid}" target="_blank">edit ${template.name} ${templateURL.templateName}</a>
				</c:if>
					</c:forEach>
				</c:if>
	
		</tr>
	</c:forEach> 
     </TR>     
              </TABLE>

 --%>
	
	</body>
	
</html>
