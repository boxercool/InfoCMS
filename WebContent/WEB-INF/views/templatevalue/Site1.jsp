<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/common/taglib-js.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" href="${ctx}/static/css/lightbox.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script> -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>jQuery UI Dialog - Default functionality</title>
 <!--  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> -->
 
    <!-- <title>Foundation | Welcome</title>
    <link rel="stylesheet" href="http://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css">

</head> -->

<style>
div.img {
    border: 1px solid #ccc;
}

div.img:hover {
    border: 1px solid #777;
}

div.img img {
    width: 100%;
    height: auto;
}

div.desc {
    padding: 15px;
    text-align: center;
}

* {
    box-sizing: border-box;
}

.responsive {
    padding: 0 6px;
    float: left;
    width: 24.99999%;
}

@media only screen and (max-width: 600px){
    .responsive {
        width: 49.99999%;
        margin: 6px 0;
    }
}

@media only screen and (max-width: 400px){
    .responsive {
        width: 100%;
    }
}

.clearfix:after {
    content: "";
    display: table;
    clear: both;
}

</style>
<style>
.button
{


width:220px;
 font-size: 20px;
    border-radius: 10px;

}

</style>
<body>

  <!--  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <div class="top-bar">
   
      <div class="top-bar-left">
        <ul class="menu">
          <li class="menu-text">Marketing Site</li>
          <li><a href="#">Home</a></li>
          <li><a href="#">Rate</a></li>
        </ul>
      </div>
      <div class="top-bar-right">
        <ul class="menu">
          <li><a href="#">Price</a></li>
          <li><a href="#">Product</a></li>
          <li><a href="#">online</a></li>
          <li><a href="#">Offer</a></li>
        </ul>
      </div>
    </div> -->
                  
   <!--  <div class="orbit" role="region"  aria-label="Favorite Space Pictures" data-orbit>
      <ul class="orbit-container">
        <li class="orbit-slide is-active">
           <img src="http://placehold.it/2000x750">
        </li>
        <li class="orbit-slide">
          <img src="http://placehold.it/2000x750">
        </li>
        <li class="orbit-slide">
          <img src="http://placehold.it/2000x750">
        </li>
        <li class="orbit-slide">
          <img src="http://placehold.it/2000x750">
        </li>
      </ul>
    </div>
     -->
      <div class="top-bar">
     ${image.thumbnailUrl}
     <div style="bgcolor:red" class="row column text-center">
     <!--  <h2>Infotop Products</h2> -->
      <hr>
    </div>
 
 <c:forEach var="image" items="${images}">
<div class="responsive popup-gallery">
  
   <a class="example-image-link" href="${ctx}/${image.thumbnailUrl}" data-lightbox="example-set">   
      <img  class="thumbnail example-image" src="${ctx}/${image.thumbnailUrl}">  
    </a>
    
    <div class="desc">Description of the image here</div>
  
  </div>
  

 </c:forEach>
 
 
<div style="bgcolor:red" class="row column text-center">
      <h2>Some other neat Products</h2>
      <hr>
    </div>
   <!--  <span>sjkdflksdjl</span>
    <div class="row column text-center">
      <h2>Infotop Products</h2>
      <hr>
    </div> -->

    <div class="row small-up-2 large-up-4">
      <div class="column">
        <img class="thumbnail" src="http://placehold.it/300x400">
        <h5>Nulla At Nulla Justo $400</h5>
        <p>$400</p> 
        <a href="#" class="button">Buy</a>
      </div>
      <div class="column">
        <img class="thumbnail" src="http://placehold.it/300x400">
        <h5>Nulla At Nulla Justo, Eget</h5>
        <p>$400</p>
        <a href="#" class="button">Buy</a>
      </div>
      <div class="column">
        <img class="thumbnail" src="http://placehold.it/300x400">
        <h5>Nulla At Nulla Justo, Eget</h5>
        <p>$400</p>
        <a href="#" class="button">Buy</a>
      </div>
      <div class="column">
        <img class="thumbnail" src="http://placehold.it/300x400">
        <h5>Nulla At Nulla Justo, Eget</h5>
        <p>$400</p>
        <a href="#"  class="button">Buy</a>
      </div>
      
    </div>

    <hr>

    <div class="row column">
      <div class="callout primary">
        <h3>Special Offers of  this week </h3>
      </div>
    </div>

    <hr>

    <div class="row column text-center">
      <h2>Some Other Neat Products</h2>
      <hr>
    </div>

    <div class="row small-up-2 medium-up-3 large-up-6">
      <div class="column">
        <img class="thumbnail" src="http://placehold.it/300x400">
        <h5>Nulla At Nulla Justo, Eget</h5>
        <p>$400</p>
        <a href="#" class="button small expanded hollow">Buy</a>
      </div>
      <div class="column">
        <img class="thumbnail" src="http://placehold.it/300x400">
        <h5>Nulla At Nulla Justo, Eget</h5>
        <p>$400</p>
        <a href="#" class="button small expanded hollow">Buy</a>
      </div>
      <div class="column">
        <img class="thumbnail" src="http://placehold.it/300x400">
        <h5>Nulla At Nulla Justo, Eget</h5>
        <p>$400</p>
        <a href="#" class="button small expanded hollow">Buy</a>
      </div>
      <div class="column">
        <img class="thumbnail" src="http://placehold.it/300x400">
        <h5>Nulla At Nulla Justo, Eget</h5>
        <p>$400</p>
        <a href="#" class="button small expanded hollow">Buy</a>
      </div>
      <div class="column">
        <img class="thumbnail" src="http://placehold.it/300x400">
        <h5>Nulla At Nulla Justo, Eget</h5>
        <p>$400</p>
        <a href="#" class="button small expanded hollow">Buy</a>
      </div>
      <div class="column">
        <img class="thumbnail" src="http://placehold.it/300x400">
        <h5>Nulla At Nulla Justo, Eget</h5>
        <p>$400</p>
        <a href="#" class="button small expanded hollow">Buy</a>
      </div>
    </div>

    <hr>
    <div class="row">
      <div class="medium-4 columns">
        <h4>Top Products</h4>
        <div class="media-object">
          <div class="media-object-section">
            <img class="thumbnail" src="http://placehold.it/100x100">
          </div>
          <div class="media-object-section">
            <h5>Nunc Eu Ullamcorper Orci</h5>
            <p>Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque.</p>
          </div>
        </div>
        <div class="media-object">
          <div class="media-object-section">
            <img class="thumbnail" src="http://placehold.it/100x100">
          </div>
          <div class="media-object-section">
            <h5>Nunc Eu Ullamcorper Orci</h5>
            <p>Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque.</p>
          </div>
        </div>
        <div class="media-object">
          <div class="media-object-section">
            <img class="thumbnail" src="http://placehold.it/100x100">
          </div>
          <div class="media-object-section">
            <h5>Nunc Eu Ullamcorper Orci</h5>
            <p>Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque.</p>
          </div>
        </div>
      </div>
      <div class="medium-4 columns">
        <h4>Top Products</h4>
        <div class="media-object">
          <div class="media-object-section">
            <img class="thumbnail" src="http://placehold.it/100x100">
          </div>
          <div class="media-object-section">
            <h5>Nunc Eu Ullamcorper Orci</h5>
            <p>Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque.</p>
          </div>
        </div>
        <div class="media-object">
          <div class="media-object-section">
            <img class="thumbnail" src="http://placehold.it/100x100">
          </div>
          <div class="media-object-section">
            <h5>Nunc Eu Ullamcorper Orci</h5>
            <p>Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque.</p>
          </div>
        </div>
        <div class="media-object">
          <div class="media-object-section">
            <img class="thumbnail" src="http://placehold.it/100x100">
          </div>
          <div class="media-object-section">
            <h5>Nunc Eu Ullamcorper Orci</h5>
            <p>Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque.</p>
          </div>
        </div>
      </div>
      <div class="medium-4 columns">
        <h4>Top Products</h4>
        <div class="media-object">
          <div class="media-object-section">
            <img class="thumbnail" src="http://placehold.it/100x100">
          </div>
          <div class="media-object-section">
            <h5>Nunc Eu Ullamcorper Orci</h5>
            <p>Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque.</p>
          </div>
        </div>
        <div class="media-object">
          <div class="media-object-section">
            <img class="thumbnail" src="http://placehold.it/100x100">
          </div>
          <div class="media-object-section">
            <h5>Nunc Eu Ullamcorper Orci</h5>
            <p>Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque.</p>
          </div>
        </div>
        <div class="media-object">
          <div class="media-object-section">
            <img class="thumbnail" src="http://placehold.it/100x100">
          </div>
          <div class="media-object-section">
            <h5>Nunc Eu Ullamcorper Orci</h5>
            <p>Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque.</p>
          </div>
        </div>
      </div>
    </div>

    <div class="callout large secondary">
      <div class="row">
        <div class="large-4 columns">
          <h5>Vivamus Hendrerit Arcu Sed Erat Molestie</h5>
          <p>Curabitur vulputate, ligula lacinia scelerisque tempor, lacus lacus ornare ante, ac egestas est urna sit amet arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed molestie augue sit.</p>
        </div>
   
    <script>
      $(document).foundation();
    </script>
</body>
</html>