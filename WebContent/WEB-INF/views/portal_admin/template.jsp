<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@include file="/common/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
    div#box1{border:#999 2px solid;width:150px;height:180px;margin:15px;
    align:center;
   /* overflow-x:hidden; */
        }
    div#box1>img{position:absolute;z-index:1000;width:100px;max-height:100px;
    float:center;
    margin:25px;
    /*  object-fit:cover; */
    }
   /*  div#box1>a
       {
           display:none;
           position:absolute
          /*  margin:90px 0px 0px 120p */x;
          /*  z-index:1000; */
          /*  background:#F0F0F0; */
          /*  border:#81A332 1px solid; */
          /*  border-radius:3px; */
          /*  padding:5px;
           font-size:12px;
           text-decoration:none;
    } */ */
    /* /*  div#box1:hover a
      {
          /*  display:block; */
      }
 */ */
/* container {
 
  margin:auto;
  padding-left: 30px;
  padding-right: 30px;
  width: 1000px;
  }
   */
  
#container {
   width: 48px;
   height: 48px;
}

#container img {
   width: 100%;
}



body
{
  border: 2px solid black;
  /* /*  overflow-x: hidden; */ 
 /*   width:926px; */
    width:918px;
   height:100%; 
   margin-left:100px;
    
}
/* overflow-x:hidden; */


</style>
<head>
<script type="text/javascript">
(function() 
		{

var img = document.getElementById('container').firstChild;
img.onload = function() {
    if(img.height > img.width) {
        img.height = '100%';
        img.width = 'auto';
    }
};

}());
</script>
</head>
<body>

<table align="center">

<c:forEach var="template" items="${templates}" varStatus="index" begin="0" end="2">

         <td>  
       <div id="box1">
  
  <div  id="container" style='padding: 3px; width: 130px; word-break: break-all; word-wrap: break-word;'>
  ${template.name}
  <%--  <a href="${ctx}/portaladmin/template/${template.id}">Name:${template.name}</a> --%>
  </div>
        <img src="${ctx}/static/images/te.png" alt="pic">

        </div> 
     </td>
     

 </c:forEach>
 </tr>
 

<c:forEach var="template" items="${templates}" varStatus="index" begin="3" end="5">


         <td>  
       <div id="box1">

        <div style='padding: 3px; width: 130px; word-break: break-all; word-wrap: break-word;'>
  ${template.name}
</div>  
       <img src="${ctx}/static/images/te.png" alt="pic">

        </div>  
     </td>
    
  
 </c:forEach>
</tr>


<c:forEach var="template" items="${templates}" varStatus="index" begin="6" end="8">


         <td>  
       <div id="box1">

       <div style='padding: 3px; width: 130px; word-break: break-all; word-wrap: break-word;'>
 ${template.name}
</div>  
       <img src="${ctx}/static/images/te.png" alt="pic">

        </div> 
     </td>
    
 </c:forEach>
</tr>


<c:forEach var="template" items="${templates}" varStatus="index" begin="9" end="11">


         <td>  
       <div id="box1">

       <div style='padding: 3px; width: 130px; word-break: break-all; word-wrap: break-word;'>
 ${template.name}
</div>  
       <img src="${ctx}/static/images/te.png" alt="pic">

        </div> 
     </td>
    
  
 </c:forEach>
</tr>

<c:forEach var="template" items="${templates}" varStatus="index" begin="12" end="14">


         <td>  
       <div id="box1">

      
        <div style='padding: 3px; width: 130px; word-break: break-all; word-wrap: break-word;'>
 ${template.name}
</div>  
       <img src="${ctx}/static/images/te.png" alt="pic">

        </div> 
     </td>
     
  
 </c:forEach>
</tr>

<c:forEach var="template" items="${templates}" varStatus="index" begin="15" end="17">


         <td>  
       <div id="box1">

      <div style='padding: 3px; width: 130px; word-break: break-all; word-wrap: break-word;'>
  <a href="${ctx}/portaladmin/template/${template.id}">Name:${template.name}</a>
</div>  
       <img src="${ctx}/static/images/te.png" alt="pic">

        </div> 
     </td>
       
 </c:forEach>
</tr>



<c:forEach var="template" items="${templates}" varStatus="index" begin="18" end="21">

<
         <td>  
       <div id="box1">

              <div style='padding: 3px; width: 130px; word-break: break-all; word-wrap: break-word;'>
  ${template.name}
</div>  
       <img src="${ctx}/static/images/te.png" alt="pic">

        </div> 
     </td>
     <%--  <td>  
       <div id="box3">
      
         <header class="container">${template.name}</header> 
    
       <img src="${ctx}/static/images/te.png" alt="pic">
     
        </div> 
     </td> --%>
  
 </c:forEach>
</tr>
 </table>
 </body>
</html>
