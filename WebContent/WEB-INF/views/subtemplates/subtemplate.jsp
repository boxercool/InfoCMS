<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <style>
/**************************************
RESPONSIVE LAYOUT CSS
**************************************/

.wrapper {
  max-width: 100%;
  margin: 0 auto;
}

@media screen and (min-width: 200px) {

  .wrapper {
    max-width: 90%;
  }
  
  header {
    width: 100%;
  }
  
  nav, section {
    float: left;
  }

  nav {
    width: 20.83333%;
    margin-right: 1.041667%;
  }

  section {
    width: 78.125%;
  }
  
}


@media screen and (min-width: 200px) {

  .wrapper {
    max-width: 66.66667%;
  }
  
}
/**************************************
CSS TO MAKE THE EXAMPLE LOOK PRETTY
**************************************/

*, *:before, *:after {
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}

body {
/* background: #2980b9;*/
  /*color: #FFF;*/
  font-family: Helvetica;
  text-align: center;
  margin: 0;
}

header,
nav,
section {
  /*border: 1px solid rgba(255,255,255,0.8);*/
  border:1px solid black;
  margin-bottom: 10px;
  border-radius: 3px;
  align: center;
  width:10;
  height:80;
}

header {
  padding: 20px 0;
  border:1px solid black;
}

nav, section {
  padding: 200px 0;
  border:1px solid black;
}
.h_iframe        {position:relative;}
.h_iframe .ratio {display:block;width:100%;height:auto;}
.h_iframe iframe {position:absolute;top:0;left:0;width:40%; height:100%;}
 </style>

 <script>
  window.console = window.console || function(t) {};
</script>

 <script>
  if (document.location.search.match(/type=embed/gi)) 
  {
    window.parent.postMessage("resize", "*");
  }
</script>
</head>
<body translate="no" >
  <div class="wrapper">
  <h1>INFOTOP Layout</h1>
  <header>HEADER
  <iframe class="h_iframe" src=" " frameborder="0">
  </iframe>
  </header>
  
  <nav>
  <iframe class="h_iframe" src=" " frameborder="0">
  </iframe>
  </nav>
  
  <section>
  <iframe class="h_iframe" src="images/img-8.jpg" frameborder="0"/></iframe>
  </section>
</div>
</body>
</html>