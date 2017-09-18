<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@include file="/common/taglibs.jsp" %>
<!DOCTYPE html>
<html >
<head>
<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
    text-align: left;    
}
td {
    height: 674px;
}
</style>

<!-- Compressed CSS -->

<link rel="stylesheet" href="https://cdn.jsdelivr.net/foundation/6.2.4/foundation.min.css">

<!-- Compressed JavaScript -->
<!-- <script src="https://cdn.jsdelivr.net/foundation/6.2.4/foundation.min.js"></script> -->

<script type="text/javascript">
            function displayForm(c){
			//alert(c.value);
                if(c.value == "1"){
                    document.getElementById("form1").style.visibility='visible';
                    document.getElementById("form2").style.visibility='hidden';
						document.getElementById("imageId").value='';	
					
                }
                else {
                    document.getElementById("form1").style.visibility='hidden';
                    document.getElementById("form2").style.visibility='visible';	
					document.getElementById("textId").value='';	
								
                }
            }        
        </script>    
		<script type="text/javascript">

    function PreviewImage() {
        var oFReader = new FileReader();
        oFReader.readAsDataURL(document.getElementById("imageId").files[0]);

        oFReader.onload = function (oFREvent) {
            document.getElementById("uploadPreview").src = oFREvent.target.result;
        };
    };

</script>
</head>
<body>
<form:form name="contentForm" action="${ctx}/portaladmin/blogforum/Content1" method="post" modelAttribute="${blogf}">
<input type="hidden" name="id" value="${blogf.id }"/>
<input type="hidden" name="websiteid" value="${websiteid }"/>
<input type="hidden" name="pageid" value="${pageid }"/>
<input type="hidden" name="templateid" value="${templateid }"/>
<table style="width:100%">
  <tr>
    <th width="50%">Blog Form</th>
    <th width="50%">Blog Preview</th>
  </tr>
  <tr>
  
    <td>
		
	 <div class="row">
    <div class="small-12">
      <div class="row">
        <div class="small-3 columns">
          <label for="right-label" class="right"> Blog Header</label>
        </div>
        <div class="small-9 columns">
          <input type="text" id="right-label"  name="${blogf.blogheader}" placeholder="Inline Text Input" onkeyup="document.getElementById('previnput').innerHTML = this.value">
        </div>
      </div>
	  
	  <div class="small-3 columns">
	    <label for="right-label" class="right">Post Type</label>
	  </div>
	 <fieldset class="large-6 columns">
   
    <input type="radio" name="formselector" value="1"  onclick="displayForm(this)" id="inputtext"><label for="inputtext">Text</label>
	<input type="radio" name="formselector" value="2"  onclick="displayForm(this)" id="inputimage"><label for="inputimage" >Text</label>
   
  </fieldset>
         <div class="small-3 columns">
          
        </div>
        <div class="small-9 columns">
		
		 <p style="visibility:hidden" id="form1"> Write Post:<textarea id="textId" placeholder="Add comments:" onkeyup="document.getElementById('prevCom').innerHTML = this.value"  name=" ${blogf.blogcontent}" ></textarea>
     </p>
		<%--  <p style="visibility:hidden" id="form2"> Upload Post:<input type="file" id="imageId"   onchange="PreviewImage();"   name="${blogf.blogimage}" ></p>
			 
		 --%> 
		 
        </div>
        <div class="row">
        <div class="small-3 columns">
          
        </div>
        <div class="small-9 columns">
<button class="button" name="Submit"  type="submit"> Submit</button>
        </div>
      </div>
 
    </div>
  </div>
	
	
	</td>	
	
	<td>
	
	<p id="previnput"></p>
	
	<b> Your Description:</b> <p id="prevCom"></p> 
	 
	  
  Your Image: <img id="uploadPreview" style="width: 100px; height: 100px;" />
	</td>
  </tr>
  
</table>

</form:form>

</body>
</html>