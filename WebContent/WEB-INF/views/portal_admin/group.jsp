<!DOCTYPE html>
<!-- Template by html.am -->
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>3 Column Layout</title>
	<style type="text/css">

		/* Layout */
		body {
			min-width: 630px;
		}

		#container {
			padding-left: 200px;
			padding-right: 190px;
		}
		
		#container .column {
			position: relative;
			float: left;
		}
		
		#center {
			padding: 10px 20px;
			width: 100%;
		}
		
		#left {
			width: 180px;
			padding: 0 10px;
			right: 240px;
			margin-left: -100%;
		}
		
		#right {
			width: 130px;
			padding: 0 10px;
			margin-right: -100%;
		}
		
		#footer {
			clear: both;
		}
		
		/* IE hack */
		* html #left {
			left: 150px;
		}

		/* Make the columns the same height as each other */
		#container {
			overflow: hidden;
		}

		#container .column {
			padding-bottom: 1001em;
			margin-bottom: -1000em;
		}

		/* Fix for the footer */
		* html body {
			overflow: hidden;
		}
		
		* html #footer-wrapper {
			float: left;
			position: relative;
			width: 100%;
			padding-bottom: 10010px;
			margin-bottom: -10000px;
			background: #fff;
		}

		/* Aesthetics */
		body {
			margin: 0;
			padding: 0;
			font-family:Sans-serif;
			line-height: 1.5em;
		}
		
		p {
			color: #555;
		}

		nav ul {
			list-style-type: none;
			margin: 0;
			padding: 0;
		}
		
		nav ul a {
			color: darkgreen;
			text-decoration: none;
		}

		#header, #footer {
			font-size: large;
			padding: 0.3em;
			background: #BCCE98;
		}

		#left {
			background: #DAE9BC;
		}
		
		#right {
			background: #F7FDEB;
		}

		#center {
			background: #fff;
		}

		#container .column {
			padding-top: 1em;
		}
                                 thead {color:green;}
                                 tbody {color:blue;}
                                 tfoot {color:red;}

                          table, th, td {
                                         border: 1px solid black;
                                               }
                        label,p
                                {
	               padding:0 20px;
                                 }		
	</style>

	
</head>

<body>
	<div id="container">
		<main id="center" class="column">
			<article>
			                 
               <table align="center">
  				 <tbody>
    					<tr>
      						<td><label for="name">Name:</label></td>
     						<td><input type="text" name="usrname" ID="name"></td>
						<td><label for="shortname">ShortName:</label></td>
     						<td><input type="text" name="usrname1" ID="name"></td>
  					  </tr>
  				
				 <tfoot>
   					 <tr>
      						<td colspan = "2"  align="center"><Button ID="button" type="submit" ><p>Submit</p></Button></td>				 
						<td colspan = "2" align="center"><Button  type="reset"><p>Reset</p></Button></td>
     						
   					 </tr>
  				</tfoot>
 				
   					 <tr>
     						 <td><label for="key">KeyWords:</label></td>
     						 <td colspan = "3"><input type="text" name="key" ID="key"  size="80"></td>
						
  					 </tr>
					 <tr>
     						 <td><label for="des">Describe:</label></td>
     						 <td colspan = "3"><input type="text" name="key" ID="key"   size="80"></td>
						
  					 </tr>
			                                       <tr>
      						<td><label for="name">Domain:</label></td>
     						 <td><input type="text" name="usrname" ID="name" ></td>
						 <td><label for="name">Path:</label></td>
     						 <td><input type="text" name="usrname" ID="name"></td>
   					 </tr>
					 <tr>
      						<td><label for="name">Domain alise:</label></td>
     						 <td><input type="text" name="usrname" ID="name" ></td>
						 <td><label for="name">Domain redirection</label></td>
     						 <td><input type="text" name="usrname" ID="name"></td>
   					 </tr>
					 <tr>
      						 <td><label for="name">Using relativepaths:</label></td>
     						 <td><input type="text" name="usrname" ID="name" ></td>
						 <td><label for="name">protocals:</label></td>
     						 <td><select>
 							 <option value="http" selected>http</option>
  							<option value="ftp">ftp</option>
  							<option value="url">url</option>
  							<option value="smtp" >smpt</option>
							</select></td>
   					 </tr>
					 <tr>
      						 <td><label for="name">domain page suffix:</label></td>
     						 <td><input type="text" name="usrname" ID="name" ></td>
						 <td><label for="name">static page suffix</label></td>
     						 <td><select>
 							 <option value="http" selected>http</option>
  							<option value="ftp">ftp</option>
  							<option value="url">url</option>
  							<option value="smtp" >smpt</option>
							</select></td>
   					 </tr>
					  <tr>
      						 <td><label for="name">static page directory:</label></td>
     						 <td><input type="text" name="usrname" ID="name" ></td>
						 <td><label for="name">Open the still home:</label></td>
     						 <td><input type="radio" name="true" value="true" >True
  						         <input type="radio" name="false" value="false">False
						</td>
   					 </tr>
					  <tr>
      						 <td><label for="name">local background:</label></td>
     						 <td><input type="text" name="usrname" ID="name" ></td>
						 <td><label for="name">local receiption</label></td>
     						 <td><input type="text" name="usrname" ID="name"></td>
   					 </tr>
                                                                                                  <tr>
      						 <td><label for="name">Upload to FTP:</label></td>
     						 <td><select>
 							 <option value="http" selected>http</option>
  							<option value="ftp">ftp</option>
  							<option value="url">url</option>
  							<option value="smtp">smpt</option>
							</select>
						</td>
						 <td><label for="name">open the recycle</label></td>
     						 <td><input type="radio" name="true" value="true" >True
  						         <input type="radio" name="false" value="false">False</td>
   					 </tr>
					  <tr>
      						 <td><label for="name">Final level:</label></td>
     						 <td><input type="text" name="usrname" ID="name" ></td>
						 <td><label for="name">Audit:</label></td>
     						 <td><select>
 							 <option value="http" selected>http</option>
  							<option value="ftp">ftp</option>
  							<option value="url">url</option>
  							<option value="smtp" >smpt</option>
							</select>
						</td>
   					 </tr>
					
  					 
				 </tbody>
			               </table>

			</article>								
		</main>			
	</nav>
		
	</div>
        <div id="footer-wrapper">
		<footer id="footer"></footer>
		<a href="Home.html"><Button ID="button" type="submit" ><p>Back to List</p></Button></a>
	</div>

	
</body>

</html>