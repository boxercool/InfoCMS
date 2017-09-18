<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/taglibs.jsp"%> 
<%@ include file="/WEB-INF/common/taglib-js.jsp"%>
<head>

<script type="text/javascript">

function validate(evt) {
    var theEvent = evt || window.event;
    var key = theEvent.keyCode || theEvent.which;
    key = String.fromCharCode( key );
    var regex = /[0-9]/;
    if( regex.test(key) ) {
        theEvent.returnValue = false;
        if(theEvent.preventDefault) theEvent.preventDefault();
         alert ("please enter alphabets!");
         
    }
}    
</script>
</head>
<body>
 	<div id=outer>
		<div id=inner>
			 <div id=ht><h6><spring:message code="website_information"></spring:message></h6></div>
				<div id="inner1"></br></br>
					<table class="table_design" align="center"> 
						<form action="<%=request.getContextPath()%>/site/create" method="post">
						<tr class="table_design">
			               <input name="id" type="hidden" value="${site.id}"/><td><spring:message code="user_name"></spring:message><font color=red>*</font>:</td><td>
						   <input name="name" type="text" style="margin-bottom: 3px;"value="${site.name}" required pattern="^[a-zA-Z ]+$"
							 title="Only alphabets">
							</td></tr>
							<tr class="table_design"><td><spring:message code="site_mail"></spring:message></td><td><input name="email" type="email" style="margin-bottom: 3px;" value="${site.email}" required></td></tr>	
							<tr class="table_design"><td><spring:message code="Login_id"></spring:message>:</td><td><input name="login" type="text" style="margin-bottom: 3px;" value="${site.login}" pattern='[A-Za-z\\s]*' title="Only alphabets"/></td></tr>
							<tr class="table_design"><td><spring:message code="password"></spring:message>:</td><td><input name="password" type="password" style="margin-bottom: 3px;" value="${site.password}"  value="" required></td></tr>
							<tr class="table_design"><td><spring:message code="site_Title"></spring:message>:</td><td><input name="sitetitle" type="text" style="margin-bottom: 3px;" value="${site.sitetitle}" pattern='[A-Za-z\\s]*'  title="Only alphabets"/></td></tr>
							<tr class="table_design"><td><spring:message code="site_Domain"></spring:message><font color=red>*</font>:</td><td><input name="sitedomain" type="text" style="margin-bottom: 3px;"  value="${site.sitedomain}" pattern='[A-Za-z\\s]*'  title="Only alphabets"/></td></tr>

							<%-- <tr><td>Protocol11:</td><td><input name="sitedomain" type="text" style="margin-bottom: 3px;"  value="${site.sitedomain}"/></td></tr> --%>

							<tr class="table_design"><td><spring:message code="protocol"></spring:message>:</td><td><select id="url" name="protocol">

      <option value="${site.protocol}" selected="selected">${site.protocol}</option> 
                                          <option value="http://">http://</option>
                                    <option value="ftp://">ftp://</option>
                    
</select></td></tr> 		
                            <tr class="table_design"><td align="right"><button type="submit" class="small button success button" style="margin-bottom: 3px;"><spring:message code="submit"></spring:message></button></td><td align="left"><button type="reset" style="margin-bottom: 3px;" class="small button alert"  onclick="history.go(-1);"><spring:message code="cancel"></spring:message></button></td></tr>	
						

						</form>
						
					</table>
					
					
				</div>
				
		</div>


	</div>
</body>
</html>