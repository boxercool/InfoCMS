
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@include file="/common/taglibs.jsp" %>
<!DOCTYPE html>
<html >
<head>
<style>
 
 table {border-collapse:collapse;; table-layout:fixed; width:400px;
 }
   table td {border:1px solid black; background-color:lightgrey; word-wrap:break-word;}
/*  table{
    border: 1px solid black;
    !important;
   
        width: 100px;
    height:100px;
    
}

th, td {
    border: 1px solid black;
      width: 100; 
     background-color:lightgrey; 
/*  background-color: transparent; */
}   */
textarea { text-align: center; }
input {
     /*  width: 100%; */
    /*  padding: 10px; */
    /*  margin: 0px; */
     text-align:left;
    } 


 
    table  td 
    {
   
      width:100px;
word-wrap:break-word;}
            /*...all td attributes like padding etc*/
           /*  padding: 8px; */
           /*   background-color:lightpink; */ */
/* label
/* {
  /*  width:200px;  */
 /*  display: inline-block; */
} */ */
label
{

font-weight: bold;
display:inline-block;
width: 120px;
float:left;

}
div .row
{

border:1px solid black;

/* background-color:#808080; */
/*  background-color:#708090; */
 background-color:		#A9A9A9;
/* background-image: url('${ctx}/static/images/images.jpg'); */
 /*  position:fixed !important; */
}

div.first {
    width: auto;
    overflow-y: scroll;
    overflow-x: hidden;
    height: 150px;     /* this is the height that you expect to contain */      
    padding-bottom: 1px;
    position: absolute;
    left:0;
    top:auto;
}


</style>

<!-- Compressed CSS -->

<link rel="stylesheet" href="https://cdn.jsdelivr.net/foundation/6.2.4/foundation.min.css">

<!-- Compressed JavaScript -->
<!-- <script src="https://cdn.jsdelivr.net/foundation/6.2.4/foundation.min.js"></script> -->
<link href="${ctx}/static/css/style1.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${ctx}/static/js/cufon-yui.js"></script>
<script type="text/javascript" src="${ctx}/static/js/arial.js"></script>
<script type="text/javascript" src="${ctx}/static/js/cuf_run.js"></script>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> -->

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
      

    function PreviewImage() {
        var oFReader = new FileReader();
        oFReader.readAsDataURL(document.getElementById("imageId").files[0]);

        oFReader.onload = function (oFREvent) {
            document.getElementById("uploadPreview").src = oFREvent.target.result;
        };
    };

    function myFunction(x) {
        var whichSelected = x.selectedIndex;
        var posVal = x.options[whichSelected].text;
        var elem = document.getElementById("myDiv");
        elem.style.position=posVal;
    }
    
     window.onscroll = function () { window.scrollTo(0, 0); };   
   </script>


</head>
<body>

<form:form  name="contentForm" action="${ctx}/blogforum/forumimgesave" method="post" enctype="multipart/form-data" modelAttribute="${blogforumobj}">
<input type="hidden" name="id" value="${blogforumobj.id }"/>
<input type="hidden" name="templateid" value="${templateid }"/>
<input type="hidden" name="pageid" value="${pageid }"/>
<input type="hidden" name="websiteid" value="${websiteid }"/>




<table style="width:100% table-layout:fixed">
  <tr>
   
  <!--   <th width="80%">Foo</td>
    <th width="20%">Bar</td>
 
</table> -->
   <th style="background-color:black" width="315"><h5><font color="#fff">Blog Form</font></h5></th>

  <th style="background-color:black" ><h5><font color="#fff">Blog Preview</font></h5></th> 
  
    
  </tr>
  
  
  <tr>
  
    <td>
	
	  <div id="myDiv" class="row" style="position :fixed;-webkit-transform: translate3d(0, 0, 0); padding: 1px 0 1px 10px; height:150px; width:300px;left:0;top:9%">
	<!--   <div id="myDiv" class="row" style="padding: 10px 0 0 5px; height: 140px; width: 250px;position:fixed;left:0;top:0"> -->
    <div class="small-12"> 
      <div class="row">	 
      
        <div class="small-3 columns">
      
          <label for="right-label" class="right">Header</label>
                  </div>
        <div class="small-9 columns">
        
       <align="right">
        <input type="text" id="right-label"  name="blogheader" placeholder="Inline Text Input" onkeyup="document.getElementById('previnput').innerHTML = this.value" style="width:180px;">
        </align>
         </div>
      </div> 
      
	  <div class="small-3 columns">
	
	   <label  for="right-label" class="right">Post</label>
	   </align>
	  </div> 	<!--  <fieldset class="large-6 columns"> -->
       <input type="radio" name="formselector" value="1"  onclick="displayForm(this)" id="inputtext">
       &nbsp;&nbsp; <label for="inputtext">Text</label>
	<input type="radio" name="formselector" value="2"  onclick="displayForm(this)" id="inputimage">
	  &nbsp;&nbsp;  &nbsp;&nbsp;<label for="inputimage" >Image</label>
   <!--   </fieldset> -->
         <div class="small-3 columns">
          
        </div>
     
        <div class="small-9 columns">
	
	 <p style="visibility:hidden" id="form1">Write Post:<textarea id="textId" placeholder="Add comments:" onkeyup="document.getElementById('prevCom').innerHTML = this.value"  name="blogcontent" ></textarea>
     </p>
     
      
 <align="left">
 <p style="visibility:hidden" id="form2">Upload Post: <input type="file" id="imageId"  onchange="PreviewImage();"name="file1">
 </p>
 </align>
			 
		 
		 
        </div>
        <div class="row">
        <div class="small-3 columns">
          
        </div>
        <div class="small-9 columns">  
<button class="button" name="Submit" style="background-color:green" type="submit"> Submit</button>  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <button class="button" name="Cancel" style="background-color:red" type="reset"> Cancel</button></pre>

      </div>
      </div>
 
    </div>
  </div>
	
	</td>	
	
	<td>
	 <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
<b><p id="previnput" style="font-size:large; serif;color: black; "></p></b>
          
 <p id="prevCom" style="font-size: italic;font-family: sans-serif;color: black;margin-left: 40px; display: none;" class="desc"></p> 
                 <h3>     ${blogf.blogcontent}</h3>
           <img id="uploadPreview" style="width:1000px; height: 280px;display: none;" class="desc"/>   
   	 </div>
   	 
   	 
   	 
   	 
   	<div class="article">
          <h2><span>3</span> Responses</h2>
          <div class="clr"></div>
          <div class="comment"> <a href="#"><img src="${ctx}/static/images/userpic.gif" width="40" height="40" alt="" class="userpic" /></a>
            <p><a href="#">admin</a> Says:<br />
              April 20th, 2009 at 2:17 pm</p>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum.</p>
          </div>
          
          <div class="comment"> <a href="#"><img src="${ctx}/static/images/userpic.gif" width="40" height="40" alt="" class="userpic" /></a>
            <p><a href="#">Owner</a> Says:<br />
              April 20th, 2009 at 3:21 pm</p>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum. Cras id urna. Morbi tincidunt, orci ac convallis aliquam, lectus turpis varius lorem, eu posuere nunc justo tempus leo.</p>
          </div>
          
 <div class="comment"> <a href="#"><img src="${ctx}/static/images/userpic.gif" width="40" height="40" alt="" class="userpic" /></a>
            <p><a href="#">admin</a> Says:fdsfkljs
            <br>sdfkashfkasdflkja<p>
            dskjhfjkdshfkjsdhfjksadf
              April 20th, 2009 at 2:17 pm</p>
            
        </div>
            </div>
  
      <div class="clr"></div>
    </div>
  </div>
	<p id="previnput"></p> 

     
      
       
        
        
	
	</td>
  </tr>
 
</table>

</form:form>
<script>
$("input[name='formselector']").click(function () {
    $('#prevCom').css('display', ($(this).val() === '1') ? 'block':'none');
    $('#uploadPreview').css('display', ($(this).val() === '2') ? 'block':'none');
    
});
</script>

</body>
 
</html>