<%@page import="com.infotop.site.entity.site"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ include file="/WEB-INF/common/taglib-js.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- <link rel="stylesheet" href="http://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css"> -->
<%-- <link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/style.min.css" /> --%>
<%-- <%	List<site> siteList =(List<site>)request.getAttribute("site"); %> --%>
<head>
 
</head>

<!--  <style>
  thead {
  vertical-align: top;
  text-align: left;
}

div{
 color: white;
 height: 25px;
 width: 120px;
 font-size: 6px;
 background-color:#9ACD32;
 text-align: center;
  }
 
 .button.small {
    font-size: .75rem;
}

.button.success {
    background: #3adb76;
    color: #fff;
}

[type=button], [type=submit] {
    border-radius: 0;
    -webkit-appearance: none;
    -moz-appearance: none;
}
 .button {
    display: inline-block;
    text-align: center;
    cursor: pointer;
    -webkit-appearance: none;
    transition: all .25s ease-out;
    border: 1px solid transparent;
    border-radius: 0;
    padding: .85em 1em;
    margin: 0 1rem 1rem 0;
    font-size: .9rem;
    background: #2199e8;
    color: #fff;
}

.button.alert {
    background: #ec5840;
    color: #fff;
}
 </style>
</head> -->
<body>
	<%-- <form action="<%=request.getContextPath() %>/Childsite/create"  method="POST" >
	<%-- <table border='0' align="center">
		
		<tr>
			<input name="id" type="hidden" value="${Childsite.id}"/>
			<td>				
				pagename &nbsp;&nbsp;&nbsp;&nbsp;: 
				<input name="pagename" type="text" value="${Childsite.pagename}"/> 	
			</td>
		</tr>
		<tr>
			 <td class="biao_bt3">Usersite name </td> 
					<td>						
						<select id="websiteid" name="websiteid">
								<%
								for(site site:siteList){
									%>
									<option value="<%= site.getId()%>"><%= site.getSitetitle()%></option>
									<%
								}
								
								%>
						</select>
					</td>
		</tr> 
		
		<tr>
			<td>
				 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="ADD" />
				 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="RESET" />
			</td>					
		</tr>
	</table> --%>
	
<%-- 	<!-------------------------------------muthu----------------------------->
	   <table  bgcolor="#C0C0C0" height="246" width="780" class="pure-table" align="center">
 	   	 	<tr>
	     		<td>
		    		<table border="0" bgcolor="#F2F3E5" height="220" width="760" class="pure-table" align="center">
		    			<tr> <td>
		    				<thead>
										<tr>
											<td><div><h1>Web Page creation</h1></div></td>
										</tr>
		    						</thead>
		    						</td></tr>
		    						<tr ><td >
		    				    
		    					<table border="1" height="175" width="745" bordercolor="black" align="center" >
		    							<tr bgcolor="pink">
		    							    <input name="id" type="hidden" value="${Childsite.id}"/>
											<td align="right">pagename:	</td>			
				 							<td><input name="pagename" type="text" value="${Childsite.pagename}"/> </td>	
										</tr>
		    							<tr bgcolor="pink">
		    								<td align="right">Website name:	</td>
		    								<td><select id="websiteid" name="websiteid">
								                   <%
								                   for(site site:siteList){
									                  %>
									               <option value="<%= site.getId()%>"><%= site.getSitetitle()%></option>
									                  <%
								                   }
								
								                 %>
						                      </select></td>
		    							</tr>
		    							
		    							<tr bgcolor="pink">
		    								<td colspan="2" align="center">
		    									<button type="submit" class="small button success button" style="margin-bottom: 3px;">Submit</button>
		    									<button type="reset" style="margin-bottom: 3px;" class="small button alert button">Reset</button>
		    								</td>
		    							</tr>
											
		    					</table>
		    				</td>
		    			</tr>
		    		</table>
	       		 </td>
	    	 </tr>
		</table>
	<!------------------------------------------------------------------->
	</form> --%>
	<div id=outer>
		<div id=inner>
			<div id=ht><h6><spring:message code="page_Info"></spring:message></h6></div>
				<div id="inner1"></br></br><br>
					<table class="table_design" border="1"  bordercolor="" align="center">
						<form action="${ctx}/Childsite/create"  method="POST" >
							<tr class="table_design"><input name="id" type="hidden" value="${Childsite.id}"/>
								<td><spring:message code="page_name"></spring:message><font color=red>*</font>:<td><input type="text" name="pagename" style="margin-bottom: 3px;" value="${Childsite.pagename}" required pattern="^[a-zA-Z ]+$"  title="Only alphabets" /></td>
							</tr>
							<tr class="table_design">
						 <td><spring:message code="usersite"></spring:message> <td>						
						<select id="websiteid" name="websiteid">
								<!-- <option value="iamtop">Iamtop</option>
								<option value="ats">ats</option> -->
							<c:forEach items="${sites}" var="site">
								<c:if test="${Childsite.websiteid eq site.id }">
									<option value="${Childsite.websiteid}" selected="selected">${site.sitetitle}</option>
								</c:if>
								<c:if test="${Childsite.websiteid ne site.id }">
									<option value="${site.id }">${site.sitetitle}</option>
								</c:if>
							</c:forEach>		
						</select>
					</td>
							 </tr>
							<tr class="table_design">
								<td><spring:message code="type"></spring:message></td><td><input type="text" name="type" style="margin-bottom: 3px;" value="${Childsite.type}" required /></td>
							</tr>
							<tr class="table_design">
								<td><spring:message code="url"></spring:message><font color=red>*</font>:</td><td><input type="text" name="url" style="margin-bottom: 3px;" value="${Childsite.url}" required/></td>
							</tr> 
							<tr class="table_design"><td align="right"><button type="submit" class="small button success button" style="margin-bottom: 3px;"><spring:message code="add"></spring:message></button></td><td align="left"><button type="reset" style="margin-bottom: 3px;" class="small button alert"  onclick="history.go(-1);"><spring:message code="cancel"></spring:message></button></td></tr>	
						<%-- 	<tr><td colspan="2" align="center"> <button type="submit" class="small button success button" style="margin-bottom: 3px;"><spring:message code="add"></spring:message></button><button type="reset" style="margin-bottom: 3px;" class="small button alert button" onclick="history.go(-1);"><spring:message code="cancel"></spring:message></button></td></tr> --%>
						</form>
					</table>
				</div>
		</div>
	</div>
	
</body>
</html>
