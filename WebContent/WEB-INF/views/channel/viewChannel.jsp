<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Chennal</title>
 <!--  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
</head>
<body bgcolor="red">

<br><br>
<br><br><br><br><br>
<div class="container">




<table class="table">
	<tr>
		<td class="success">Channel Name</td>
		<td class="info">:${channel.channelName}</td>
	</tr>
	<tr>
		<td class="success">Channel Create Date</td>
		<td class="info">:${channel.createdate}</td>
	</tr>
	
<tr>
<th>
</th><th>
<a href="<%=request.getContextPath() %>/Channel/list">home</a></th></tr>
</table>
</div>
</body>
</html>