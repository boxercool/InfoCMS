<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="/common/taglibs.jsp"%>

<%@page import="com.infotop.childsite.entity.Childsite"%>
<!DOCTYPE html>
<html lang="en">
<style>
 
 
 div {
 float:center;

/*  background-color: #DAE9BC;  */
 /*  background-color:#DAE9BC; */}
 
 
 #outer{
		
			width:100%;
			height:100%;
		
		}
		
		#inner
		{
			width: 100%;
			height:100%;
			padding-top:5px;
			background:#CDCDCF;
		}
		#inner1
		{
			width: 95%;
			height: 92%;
			margin-left:18.5px;
			background:#F2F3E5;
			bottom: 8px;
		}
		
table td 
	{

   border: 1px solid white;
 	padding:2px; 
  	margin-bottom: 2px;
 	 padding-left: 40px;
 	 padding-right: 40px;
   	 padding-bottom:0px;
	background-color:green;
	 border-top: none; 
	
}
p
{
 bgcolor:#DAE9BC;
}

div
{
 /* -moz-border-radius: 20px;
    -khtml-border-radius: 20px;
    -webkit-border-radius: 20px;
    border-radius: 20px;
    overflow:hidden;
    background:#F6E7B9;
    -webkit-box-shadow:0 0 4em rgb(4,6,5);
    -moz-box-shadow:0 0 3em rgb(6,7,8);
    box-shadow:0 0 1em rgb(5,9,2); */
  /*   border:20px solid skyblue; */
 	font-family:Verdana, Geneva, sans-serif; 
 	/* -moz-box-shadow:0 0 3em rgb(6,7,8); */
 	-webkit-box-shadow:0 0 4em rgb(4,6,5);
  /*  	background:#F6E7B9; */
  background:#F2F3E5;
  	 box-shadow:0 0 .2cm rgb(5,9,2); 
	border-radius: 20px;
/* box-shadow:3px 3px 3px green; */ 
/*   border: 1px solid #DAE98C; */ 
/* background-image: url('${ctx}/static/images/tree2.jpg'); */
}

.fsSubmitButton
{
padding: 3px 10px 11px !important;
font-size: 11px !important;
background-color:#3adb76;
font-weight: bold;
text-shadow: 1px 1px #3adb76;
color: #ffffff;
border-radius: 100px;
-moz-border-radius: 100px;
-webkit-border-radius: 100px;
border: 1px solid #F36C8C;
/* cursor: pointer; */
box-shadow: 0 1px 0 rgba(255, 255, 255, 0.5) inset;
-moz-box-shadow: 0 1px 0 rgba(255, 255, 255, 0.5) inset;
-webkit-box-shadow: 0 1px 0 rgba(255, 255, 255, 0.5) inset;
}
.fsSubmitButton1
{
padding: 3px 10px 11px !important;
font-size: 11px !important;
background-color: #ec5840;
font-weight: bold;
text-shadow: 1px 1px #ec5840;
color: #ffffff;
border-radius: 100px;
-moz-border-radius: 100px;
-webkit-border-radius: 100px;
border: 1px solid #F36C8C;
/* cursor: pointer; */
box-shadow: 0 1px 0 rgba(255, 255, 255, 0.5) inset;
-moz-box-shadow: 0 1px 0 rgba(255, 255, 255, 0.5) inset;
-webkit-box-shadow: 0 1px 0 rgba(255, 255, 255, 0.5) inset;
}
 </style>
<head>
    <meta name="keywords" content="jQuery Tree, Tree Widget, TreeView" />
    <meta name="description" content="The jqxTree displays a hierarchical collection of items. You
        can populate it from 'UL' or by using its 'source' property." />
    <title id='Description'>jQuery Tree with Context Menu.</title>
    <link rel="stylesheet" href="${ctx}/static/js/jqwidgets/jqwidgets/styles/jqx.base.css" type="text/css" />
    <script type="text/javascript" src="${ctx}/static/js/jqwidgets/scripts/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/jqwidgets/scripts/demos.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/jqwidgets/jqwidgets/jqxcore.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/jqwidgets/jqwidgets/jqxdata.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/jqwidgets/jqwidgets/jqxbuttons.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/jqwidgets/jqwidgets/jqxscrollbar.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/jqwidgets/jqwidgets/jqxpanel.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/jqwidgets/jqwidgets/jqxtree.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/jqwidgets/jqwidgets/jqxcheckbox.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/jqwidgets/jqwidgets/jqxmenu.js"></script>
 
</head>
<body>
  <!--   <div id='content'> -->
        <script type="text/javascript">
            $(document).ready(function () {
            	var source ="";
            	$.ajax({
                    async: false,
                    url: '${ctx}/menu/treemenu1/${siteId}',
                    success: function (data) {
                    	source =
                        {
                            datatype: "json",                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                            datafields: 
                            	[
                                { name: 'id' },
                                { name: 'parentid' },
                                { name: 'text' }
                            ],
                            id: 'id',
                            localdata: data
                        };   
                    }
                });
                      
                // create data adapter.
                var dataAdapter = new $.jqx.dataAdapter(source);
                // perform Data Binding.
                dataAdapter.dataBind();
                // get the tree items. The first parameter is the item's id. The second parameter is the parent item's id. The 'items' parameter represents 
                // the sub items collection name. Each jqxTree item has a 'label' property, but in the JSON data, we have a 'text' field. The last parameter 
                // specifies the mapping between the 'text' and 'label' fields.  
                var records = dataAdapter.getRecordsHierarchy('id', 'parentid', 'items', [{ name: 'text', map: 'label'}]);
                $('#jqxWidget #jqxTree').jqxTree({ source: records, width: '300px'});
                
                
                
                $('#jqxTree').jqxTree({ height: '400px', width: '300px' });
                $('#jqxTree').css('visibility', 'visible');
                var contextMenu = $("#jqxMenu").jqxMenu({ width: '120px',  height: '56px', autoOpenPopup: false, mode: 'popup' });
                var clickedItem = null;
                
                var attachContextMenu = function () {
                    // open the context menu when the user presses the mouse right button.
                    $("#jqxTree li").on('mousedown', function (event) {
                        var target = $(event.target).parents('li:first')[0];
                        var rightClick = isRightClick(event);
                        if (rightClick && target != null) {
                            $("#jqxTree").jqxTree('selectItem', target);
                            var scrollTop = $(window).scrollTop();
                            var scrollLeft = $(window).scrollLeft();
                            contextMenu.jqxMenu('open', parseInt(event.clientX) + 5 + scrollLeft, parseInt(event.clientY) + 5 + scrollTop);
                            return false;
                        }
                    });
                }
                attachContextMenu();
                $("#jqxMenu").on('itemclick', function (event) {
                    var item = $.trim($(event.args).text());
                    switch (item) {
                        case "Add Item":
                            var selectedItem = $('#jqxTree').jqxTree('selectedItem');
                            
                            if (selectedItem != null) {
                            	
                                $('#jqxTree').jqxTree('addTo', { html: '<form name="treesave" method="POST" action="${ctx}/menu/datamenu">Menu Name:<input type="text" name="name"/><input type="hidden" name="level" value="A"/><input type="hidden" name="parentid" value='+selectedItem.id+' /><input type="hidden" name="siteid" value="${siteId}" /><br><br>Website Name:<select name="pagenameid" ><c:forEach items="${modules}" var="module"><option value="${module.id}">${module.pagename}</option></c:forEach></select><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button class="fsSubmitButton" type="submit">Add</button> &nbsp;&nbsp;&nbsp;<button type="reset" class="fsSubmitButton1">Cancel</button></form>' }, selectedItem.element);
                                $('#jqxTree').jqxTree('expandAll');
                                attachContextMenu();
                            }
                            break;
                        case "Remove Item":
                            var selectedItem = $('#jqxTree').jqxTree('selectedItem');
                            if (selectedItem != null) {
                                $('#jqxTree').jqxTree('removeItem', selectedItem.element);
                                $.ajax({
                                	url: '${ctx}/menu/delete/'+selectedItem.id,
                                });
                                attachContextMenu();
                            }
                            break;
                    }
                });
                // disable the default browser's context menu.
                $(document).on('contextmenu', function (e) {
                    if ($(e.target).parents('.jqx-tree').length > 0) {
                        return false;
                    }
                    return true;
                });
                function isRightClick(event) {
                    var rightclick;
                    if (!event) var event = window.event;
                    if (event.which) rightclick = (event.which == 3);
                    else if (event.button) rightclick = (event.button == 2);
                    return rightclick;
                } 
                //to expand all
                $('#jqxTree').jqxTree('expandAll');
               
            });
        </script>
        
        
       <!--  <div id=outer>
		<div id=inner>
			 <div><center><h6>Tree Menu Information</h6></div></center>
				<div id="inner1"> -->
    <div id=outer>
		<div id=inner>
		<center>
			 <div id=ht style="background-color:#DAE9BC">Tree Menu Information</div></center>
				<div id="inner1"> 
				
					<table class="table_design" border="2"  bordercolor="" align="center">
        
  <center>
 <div id='jqxWidget' style="padding-left:60px">
<!--  padding-left:60px"> -->
        
        <div id="jqxTree">
        	</div>
        </div>
 
  <div id="pagenames" style="padding-left:60px">
           
  
 <p>${PageError}</p>
 
        </div>
        
        <div id='jqxMenu' style="background-color:#DAE9BC">
            <ul >
                <li>Add Item</li>
                <li>Remove Item</li>
            </ul>
        </div>
  </center>
  
  </table>
	</div>
	</div>
	</div> 
    
</body>
</html>