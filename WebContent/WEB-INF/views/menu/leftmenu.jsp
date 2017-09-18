<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<head>
  <meta charset="utf-8">
  <title>jsTree test</title>
  <!-- 2 load the theme CSS file -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/themes/default/style.min.css" />

 
  <script src="https://cdnjs.cloudflare.com/ajax/libs/json2/20160511/json2.min.js"></script>
  

</head>

<body>
  <!-- 3 setup a container element -->
  <div id="jstree">
    <!-- in this example the tree is populated from inline HTML -->
    <ul>
      <li>Root node 1
        <ul>
          <li id="child_node_1">Child node 1</li>
          <li>Child node 2</li>
        </ul>
      </li>
      <li>Root node 2</li>
    </ul>
  </div>
  
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.1/jquery.min.js"></script>
    
     <script src="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/jstree.min.js"></script>

    <script>
	
  $(function () {	 
	  
	  $('#jstree').jstree();
	  
	// 7 bind to events triggered on the tree
	   /* $('#jstree').on("changed.jstree", function (e, data) {
	      console.log(data.selected);
	    });*/
	    <%--  //'type' : 'POST',		    	
	      'url' :'<%=request.getContextPath()%>/menu/datamenu',
 	      'data' : function (node) {
  	    	
  	    	//var res =  $.parseJSON(node);
				//alert('haiii'+result);
  	        return { 'id' : node.id };   --%>
	    // 8 interact with the tree - either way is OK
	    $('button').on('click', function () {
	      $('#jstree').jstree(true).select_node('child_node_1');
	      $('#jstree').jstree('select_node', 'child_node_1');
	      $.jstree.reference('#jstree').select_node('child_node_1');
	    });
	    
	  $('#jstree_demo').jstree({
		  "core" : {
		    "animation" : 0,
		    "check_callback" : true,
		    "themes" : { "stripes" : true },
		    'data' : {
			     
    	        
    	        'url' : function (node) {
    	        return node.id === '#' ?
    	          'ajax_demo_roots.json' : 'ajax_demo_children.json';
		    	},
		    	'data' : function (node) {
		            return { 'id' : node.id };
		    	}
		    }
		  },
		  "types" : {
		    "#" : {
		      "max_children" : 1,
		      "max_depth" : 4,
		      "valid_children" : ["root"]
		    },
		    "root" : {
		      "icon" : "/static/3.3.2/assets/images/tree_icon.png",
		      "valid_children" : ["default"]
		    },
		    "default" : {
		      "valid_children" : ["default","file"]
		    },
		    "file" : {
		      "icon" : "glyphicon glyphicon-file",
		      "valid_children" : []
		    }
		  },
		  "plugins" : [
		    "contextmenu", "dnd", "search",
		    "state", "types", "wholerow"
		  ]
		  
		});
			        	
  }); 	
  
  </script>
</body>

</html> 


