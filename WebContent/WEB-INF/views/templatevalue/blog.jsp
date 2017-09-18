<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="/common/taglibs.jsp" %>
<%-- <%@ include file="/WEB-INF/common/taglib-js.jsp"%> --%>
<!-- @import url('//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-theme.min.css'); -->
<html>
<link href="${ctx}/static/css/style1.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="${ctx}/static/js/code-jquery-1.10.2.js"></script>
<script type="text/javascript" src="${ctx}/static/js/google-jquery.min.js"></script>
<!--<script src="http:////code.jquery.com/jquery-1.10.2.js"></script> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script> -->
<script type="text/javascript" src="${ctx}/static/js/arial.js"></script>
<script type="text/javascript" src="${ctx}/static/js/cuf_run.js"></script>
<script type="text/javascript" src="${ctx}/static/js/vendor/jquery.js"></script>
<script type="text/javascript" src="${ctx}/static/js/cufon-yui.js"></script>
<script type="text/javascript" src="${ctx}/static/js/jquery.min.js"></script>
<style>
.comment-body {
    border: 3px solid #D7D7D7;
    border-radius: 5px 5px 5px 5px;
    color: #474747;
    margin-bottom: 10px;
    margin-left: 70px;
    padding: 5px 20px;
    position: relative;
    width: 89%;
}

.header1 {
    border: 2px solid #D7D7D7;
    border-radius: 45px 45px 45px 45px;
    color: #474747;
    margin-bottom: 6px;
    margin-left: -10px;
    padding: 21px 5px;
    position: relative;
    width: 90%;
    height: 1px;
}
#scroll {
    position:fixed;
    right:10px;
    bottom:10px;
    cursor:pointer;
    width:40px;
    height:40px;
    background-color:#3498db;
    text-indent:-9999px;
    display:none;
    -webkit-border-radius:60px;
    -moz-border-radius:60px;
    border-radius:60px
}
#scroll span {
    position:absolute;
    bottom:40%;
    left:50%;
    margin-left:-8px;
    margin-top:-12px;
    height:0;
    width:0;
    border:9px solid transparent;
    border-bottom-color:#ffffff
}
#scroll:hover {
    background-color:#e74c3c;
    opacity:1;filter:"alpha(opacity=100)";
    -ms-filter:"alpha(opacity=100)";
} 

#scroll1 {
    position:fixed;
    right:10px;
    top:10px;
    cursor:pointer;
    width:40px;
    height:40px;
    background-color:#3498db;
    text-indent:-9999px;
    display:none;
    -webkit-border-radius:60px;
    -moz-border-radius:60px;
    border-radius:60px
}
#scroll1 span {
    position:absolute;
    left: 50%;
    margin-left:-8px;
    margin-top:15px;
    width: 0;
    border-left:9px solid transparent;
    border-right:9px solid transparent;
    border-top:15px solid #ffffff
}
#scroll1:hover {
    background-color:#e74c3c;
    opacity:1;filter:"alpha(opacity=100)";
    -ms-filter:"alpha(opacity=100)";
}     
.loader {
	position: fixed;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 100%;
	z-index: 9999;
	background: url('${ctx}/static/images/loader2.gif')50% 50% no-repeat #ffffff;
}
.acidjs-rating-stars, .acidjs-rating-stars label::before {
	display: inline-block;
}

.acidjs-rating-stars label:hover, .acidjs-rating-stars label:hover ~
	label {
	color: #189800;
}

.acidjs-rating-stars * {
	margin: 0;
	padding: 0;
}

.acidjs-rating-stars input {
	display: none;
}

.acidjs-rating-stars {
	unicode-bidi: bidi-override;
	direction: rtl;
}

.acidjs-rating-stars label {
	color: #ccc;
}

.acidjs-rating-stars label::before {
	content: "\2605";
	width: 18px;
	line-height: 18px;
	text-align: center;
	font-size: 18px;
	cursor: pointer;
}

.acidjs-rating-stars input:checked ~ label {
	color: #f5b301;
}

.acidjs-rating-disabled {
	opacity: .50;
	-webkit-pointer-events: none;
	-moz-pointer-events: none;
	pointer-events: none;
}

textarea {
	background-image: url(${ctx}/static/images/but.png);
	border: 3px double green;
	/* border: 2px solid #765942; */
	border-radius: 10px;
	height: 60px;
	width: 600px;
	height: 120px;
	/* border: 3px solid #cccccc; */
	padding: 5px;
	font-family: Tahoma, sans-serif;
	background-image: url(bg.gif);
	background-position: bottom right;
	background-repeat: no-repeat;
	background-color:white;
	font-size: 1em;
	font-weight: bold;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	/*  border: 1px solid black; */
}

.gtext {
	color: green;
	text-shadow: 2px 2px 5px yellow;
	font-size: 140%;
}

h2 {
    color: green;
    font-family: "Great Vibes", cursive;
    font-size: 20px;
    line-height: 30px;
    font-weight: normal;
    margin-bottom: -30px;
    margin-top: -20px;
    text-align: left;
    text-shadow: 0 1px 1px #fff;
	/* color: green;
	font-family: "Great Vibes", cursive;
	font-size: 20px;
	line-height: 60px;
	font-weight: normal;
	margin-bottom: 0px;
	margin-top: 20px;
	text-align: left;
	text-shadow: 0 1px 1px #fff; */
}

/*  body {
    margin: 10px;
}

.social-like, .social-dislike {
    border: none;
    outline: none;
    font-size: 16px;
    /*width: 48%;*/
    background-color: #03A9F4;
    color: #fff;
    cursor: pointer;
    display:inline-block;
    
} */
 
.social-like:hover, .social-dislike:hover {
  text-decoration:none;
  color:white;
}

.social-like:active, .social-dislike:active {
  background-color: #3299CD;
}

.social-like:active .count, .social-dislike:active .dislike {
  background-color: #3299CD;
}


.social-like {
    border-top-left-radius: 5px;
}

.social-dislike {
  margin-left: 20px;
    border-top-right-radius: 5px;
}

.count, .like, .dislike {
    padding:10px;
}

.count, .dislike {
  display:inline;
    background-color: #03A9F4;
    border-radius: 50%;
    font-size:12px;
}

.dislike {
    margin-left: -10px;
}

.count {
    margin-right: -10px;
} 


 /* .like{
    display: inline-block;
    margin-bottom: 0;
    font-weight: normal;
    text-align: center;
    vertical-align: middle;
    cursor: pointer;
    background: lightgreen;
    border: 1px solid transparent;
    white-space: nowrap;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.428571429;
    border-radius: 4px;
}

.dislike
{
    display: inline-block;
    margin-bottom: 0;
    font-weight: normal;
    text-align: center;
    vertical-align: middle;
    cursor: pointer;
    background: lightpink;
    border: 1px solid transparent;
    white-space: nowrap;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.428571429;
    border-radius: 4px;
} */
.qty1, .qty2 {
    border: none;
    width:20px;
    background: transparent;
} 
#clike {
 width: 10em; height: 6em;
 background-color: white;
 border: none;
}

 #dlike {
 width: 10em; height: 6em;
 background-color: white;
 border: none;
} 

</style>

<script type="text/javascript">
$(document).ready(function(){ 
    $(window).scroll(function(){ 
        if ($(this).scrollTop() < 100) { 
        	 $('#scroll1').fadeOut(); 
        } else { 
           
             $('#scroll1').fadeIn(); 
        } 
    }); 
    $('#scroll1').click(function(){ 
        $("html, body").animate({ scrollTop:$(document).height()},0); 
        return false; 
    }); 
});
	
$(document).ready(function(){ 
    $(window).scroll(function(){ 
        if ($(this).scrollTop() > 100) { 
            $('#scroll').fadeIn(); 
        } else { 
            $('#scroll').fadeOut(); 
        } 
    }); 
    $('#scroll').click(function(){ 
        $("html, body").animate({ scrollTop: 0 }, 600); 
        return false; 
    }); 
});
/* $(function() {

	   $("body").mousewheel(function(event, delta) {


	      this.scrollLeft -= (delta * 30);
	    
	      event.preventDefault();

	   });

	}); */


/* $(function () {
    $(".like").click(function () {
        var input = $(this).find('.qty1');
        input.val(parseInt(input.val())+ 1);

    });
$(".dislike").click(function () {
    var input = $(this).find('.qty2');
    input.val(input.val() - 1);
});
});
 */
/* function googfuc(){
	
	if (document.getElementById('google').checked){
		
		  $("#gsm").show();
	}else
		{
		 $("#gsm").hide();
		
		} */

	$(document).ready(function() {
		  $(window).load(function() {
	            $(".loader").fadeOut("slow");
	        });
		  
		$("#ShowMe1b").hide();

		$("#ShowMe1a").click(function() {
			$("#ShowMe1b").show();
		});
		/* $("#submitId").click(function() {
		$("#ShowMe1b").hide();
		});  */

		$("#group-1-0").click(function() {

			$('#rating').val("5");
		});
		$("#group-1-1").click(function() {

			$('#rating').val("4");
		});

		$("#group-1-2").click(function() {

			$('#rating').val("3");
		});

		$("#group-1-3").click(function() {

			$('#rating').val("2");
		});

		$("#group-1-4").click(function() {

			$('#rating').val("1");
		});
	});
	
	

	$(document).ready(function() {

						$('#submitForm1').submit(function(e) {

							
											var frm = $('#submitForm1');

										e.preventDefault();

											var data = {}

											var Form = this;

											//Gather Data also remove undefined keys(buttons)
											 $.each(this, function(i, v){
					            var input = $(v);
					           	
					        data[input.attr("name")] = input.val();
					        delete data["undefined"];
					    });
					   
			        $.ajax({
			             contentType : 'application/json; charset=utf-8', 
			            type: frm.attr('method'),
			            url: frm.attr('action'),
			             dataType : 'json',
			         data : JSON.stringify(data), 
			         
			            success : function(data){
			            	
			            	location.reload();
			            	
							},
							error : function() {$(this).html("Error!");
														}
													});
			               $('#submitForm1')[0].reset();
			        
										});
			});	
				
				
				
				
		
				function dofunction(oForm, actions , formindex){
				
					
					if (actions=="c"){
						var clik=1;
						
					}else{
						var dlik=1;
					}
				
					 for (i = 0; i < oForm.length; i++) 
					 {
						 
						 if(oForm.elements[i].name =="blogid"){
						  var bloid=oForm.elements[i].value;
						}
						 else if (oForm.elements[i].name =="commandid"){
						 var comid=oForm.elements[i].value;
						 }
						 else if (oForm.elements[i].name =="templateid")	{
						 var temid=oForm.elements[i].value;
						}
						 else if (oForm.elements[i].name =="pageid"){
						 var pagid=oForm.elements[i].value;
						}
						 else if (oForm.elements[i].name =="websiteid"){
						 var webid=oForm.elements[i].value;
						}
						 }
				 
						 
					   var msg = {
							      "blogid" : bloid,
							      "commandid" : comid,
							      "templateid" : temid,						   
						          "pageid" : pagid,	
						          "websiteid" : webid,
						          "clike" : clik,
						          "dlike" : dlik
				}
		   	
		      $.ajax({
		    	 
		    	  type: "POST",
		          contentType : 'application/json; charset=utf-8',
		          dataType : 'json',
		          url: "${ctx}/MainLike/create",
		          data: JSON.stringify(msg), // Note it is important
		          
		            success:function(data){
		           
		             var servervalujson1= data.like2;
		            
		             $('#likeupdate_'+formindex).empty();
		             $('#unlikeupdate_'+formindex).empty();
		          
		       	for (var i=0; i < servervalujson1.length; i++) {
		       	
		    
		                   var commandobj1 = servervalujson1[i];
		              
		             	$('#likeupdate_'+formindex).append('<span class="likes">'+commandobj1.clike+'</span></div> ');
		           
		             	$('#unlikeupdate_'+formindex).append('<span class="dislikes">'+commandobj1.dlike+'</span></div> ');
		               
		       	}	$('#likeupdate').refresh();
		            },
		           error:function(rep)
		            {
		            alert('error');
		           }
		       });
				
			}
			
				$(document).ready(function(){
				    $("#cancel_hide").click(function()
				    		{
				    	
				    	$("#ShowMe1b").hide();
				      /*   $("form").hide(); */
				    });
				    $("#show").click(function(){
				        $("form").show();
				    });
				});

		
	</script>

</head>
<body>


<div class="header"></div>


<a href="javascript:void(0);" id="scroll1" title="Scroll to bottom" style="display: none;">bottom<span></span></a>
<a href="javascript:void(0);" id="scroll" title="Scroll to Top" style="display: none;">Top<span></span></a>
<div class="loader">
</div>

	<div class="main">
		<div class="hbg"></div>
		<div class="content">
			<div class="content_resize">
				<div class="mainbar">
					<div class="article">

						<br>
                     
                       <div class="header1">
						<h2>
							<span>${blogf.blogheader}</span>
						</h2>
                       </div>
                       <%--   <img src="${ctx}/static/images/blog.jpg" width="90%" height="60%" alt="" /> --%>
						<c:choose>
							<c:when test="${blogf.blogcontent != null}">
								<h3>${blogf.blogcontent}</h3>
							</c:when>
							<c:otherwise>
                           
							</c:otherwise>
						</c:choose>
						
						<c:choose>
							<c:when test="${blogf.blogimage != null}">
								<img src="${ctx}/${blogf.blogimage}"
									style="width: 800px; height: 300px;" />
							</c:when>
							<c:otherwise>

							</c:otherwise>
						</c:choose>


					</div>
                   <br>
					<br>
					<div class="comment-body"> 
					<input type="image" id="ShowMe1a" name="clike"
						value="User comments" width="50" height="50"
						src="${ctx}/static/images/comment.png" />

					<div style="padding-top: 30px;" id="ShowMe1b">
					
					<form action="${ctx}/usercommand/commandValues" method="post"	id="submitForm1" commandName="command">

							<input type="hidden" id="templateid" name="templateid"
								value="${blogf.templateid}" />
							<input type="hidden" id="pageid" name="pageid"
								value="${blogf.pageid}" />
							<input type="hidden" id="websiteid" name="websiteid"
								value="${blogf.websiteid}" />
				
							<table>
								<tr>
									<td>
									
									<textarea rows="5" cols="30" id="commandmsg" name="commandmsg" required></textarea></td>
								</tr>
								<tr></tr>
								<tr>
								
									<td align="right" class="gtext">Rating:
										<div class="acidjs-rating-stars">
											<input type="radio"  id="group-1-0" /> <label for="group-1-0"> </label>
											<input type="radio"  id="group-1-1" /> <label for="group-1-1"> </label> 
											<input type="radio"  id="group-1-2" /> <label for="group-1-2"> </label> 
											<input type="radio"  id="group-1-3" /> <label for="group-1-3"> </label> 
											<input type="radio"  id="group-1-4" /> <label for="group-1-4"> </label>
											<%-- <tr><td></td><td><form:checkbox  path="favoriteSM" value="google" id="google" onchange="googfuc()"  ></form:checkbox></td></tr> --%>

										</div>
									</td>
									<td><input type="hidden" name="rating" id="rating" /></td>
								</tr>
								<tr>
									<td>
										
											<p></p>
											<button type="submit" id="submitId" style="font-size: 12pt; color: black; background-color: #DAE9BC; border: 2px solid #336600; padding: 7px">Submit</button>
										 	&nbsp;&nbsp;&nbsp;&nbsp; 
																				
									    	<button type="button" id="cancel_hide" style="font-size: 12pt; color: black; background-color: #d44a4b; border: 2px solid #336600; padding: 7px">Cancel</button> 
											<!-- <input id="submitId" type="submit" value="Submit Form" /> -->
											<!-- <button id="forsubmit" onclick="doAjaxPost();">Submit</button> -->
									</td>
								</tr>


							
							</table>
				 		</form>

					
            

					</div> 
					</div>
					<br>


					<div align="justify" style="padding-left: 10px; padding-bottom: 20px; color: green; font-weight: bold"	class="response" id="response">
           
				<h2>Responses</h2></div>

				 <c:forEach var="comm1" items="${likdlik}" varStatus="index1"> 
   
            <div class="article">
            <div  id="div_commandJson" class="div1-wrapper">
            <div class="comment"> 
						<a href="#" ><img src="${ctx}/static/images/userpic.gif" width="40" height="40" alt="" class="userpic" /></a>
									
					<p>	<a href="#">admin</a> Says:<br /> ${comm1.date}	</p>
					<p>Rating:${comm1.rating}</p>
		        	<p>${comm1.commandmsg}</p></div>	</div>
								
						
               <form action="${ctx}/MainLike/create" method="post" id="submitForm2_${index1.index+site.size*site.number+1}" commandName="likeDlike">
       
            <input type="hidden" id="blog_id_${index1.index+site.size*site.number+1}" name="blogid" value="${blogf.id}"/>
            <input type="hidden" id="command_id" name="commandid" value="${comm1.commandid}"/>
            <input type="hidden" id="template_id" name="templateid" value="${blogf.templateid}"/>
            <input type="hidden" id="page_id" name="pageid" value="${blogf.pageid}"/>
            <input type="hidden" id="website_id" name="websiteid" value="${blogf.websiteid}"/> 
							
						

							
							<div class="example">
							
							    <!--  <a class="social-like" >
                    <span class="like"><i class="glyphicon glyphicon-thumbs-up"></i></span>
                    <span class="count" >15</span>
                </a>
                &nbsp;
                <a class="social-dislike" >
                    <span class="dislike" >10</span>
                    <span class="like"><i class="glyphicon glyphicon-thumbs-down"></i></span>
                </a> -->
							
							         <%--  <input type="button" src="../static/images/fb.png" name="btnLike" value="Like" class="clike" id="clike" name="clike"  onclick="dofunction(this.form,'c',${index1.index+site.size*site.number+1});"> --%>
									<!-- <span class="likebtn-wrapper" data-identifier="likeButton1" datatheme="ugreen"></span><script>(function(d,e,s){if(d.getElementById("likebtn_wjs"))return;a=d.createElement(e);m=d.getElementsByTagName(e)[0];a.async=1;a.id="likebtn_wjs";a.src=s;m.parentNode.insertBefore(a, m)})(document,"script","//w.likebtn.com/js/w/widget.js");</script> -->
								     <%-- <img src="${ctx}/static/images/like.png" width="25" height="25" class="clike" id="clike" name="clike"  onclick="dofunction(this.form,'c',${index1.index+site.size*site.number+1});"/>  --%>
									<!--  <Button Content="&#xe19e;" FontFamily="Segoe UI Symbol" FontSize="40" /> -->
									 
									 <button  type="button" class="clike" id="clike" name="clike"  onclick="dofunction(this.form,'c',${index1.index+site.size*site.number+1});"><img src="${ctx}/static/images/like1.png" height="25" width="25"></button>
									<div id="likeupdate_${index1.index+site.size*site.number+1}">  <span class="likes">${comm1.clike}</span></div>
                                  <button type="button" class="dlike" id="dlike"  name="dlike"  onclick="dofunction(this.form,'d' ,${index1.index+site.size*site.number+1});"><img src="${ctx}/static/images/dislike1.png" height="25" width="25"></button>
                         <div id="unlikeupdate_${index1.index+site.size*site.number+1}"> <span class="dislikes">${comm1.dlike}</span></div>
                         
                         <!-- <div class="gsm" id="gsm" hidden="true">
<a href="https://plus.google.com/"><img border="0" src="../static/images/google+.png" width="25" height="25"></a>
</div>
				 -->

<!-- <div class="container"> 
    <a class="like"><i class="fa fa-thumbs-o-up"></i>  
        Like <input class="qty1" name="qty1" readonly="readonly" type="text" value="0" />
    </a>
</div><br>
<div>    
    <a class="dislike"><i class="fa fa-thumbs-o-down"></i> 
        Dislike <input class="qty2"  name="qty2" readonly="readonly" type="text" value="0" />
    </a>
</div>
 -->

								

							</div></form>
							
							
						</div>
					</c:forEach>
				
			</div>
		</div>

</div>

		<div class="footer"></div>
	</div>

</html>