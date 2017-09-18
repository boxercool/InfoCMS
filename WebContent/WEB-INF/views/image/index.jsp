<%@page import="com.infotop.fileupload.entity.Image"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.infotop.fileupload.service.ImageService"%>
<%@taglib prefix="s"   uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html>
<!-- saved from url=(0111)file:///C:/Users/Administrator/Desktop/sample123/jQuery%20File%20Upload%20Demo%20-%20jQuery%20UI%20version.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Force latest IE rendering engine or ChromeFrame if installed -->
<!--[if IE]>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<![endif]-->

<title>jQuery File Upload Demo - jQuery UI version</title>
<meta name="description" content="File Upload widget with multiple file selection, drag&amp;drop support, progress bars, validation and preview images, audio and video for jQuery. Supports cross-domain, chunked and resumable file uploads and client-side image resizing. Works with any server-side platform (PHP, Python, Ruby on Rails, Java, Node.js, Go etc.) that supports standard HTML form file uploads.">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- jQuery UI styles -->
<link rel="stylesheet" href="${ctx}/jQuery File Upload Demo - jQuery UI version_files/jquery-ui.css" id="theme">
<!-- Demo styles -->
<link rel="stylesheet" href="${ctx}/jQuery File Upload Demo - jQuery UI version_files/demo.css">
<!--[if lte IE 8]>
<link rel="stylesheet" href="css/demo-ie8.css">
<![endif]-->
<style>
/* Adjust the jQuery UI widget font-size: */
.ui-widget {
    font-size: 0.95em;
}
.mytable{
border-style:solid;
border-width:3px;
border-color:#BCCE98;
padding:10px;
}
</style>
<!-- blueimp Gallery styles -->
<link rel="stylesheet" href="${ctx}/jQuery File Upload Demo - jQuery UI version_files/blueimp-gallery.min.css">
<!-- CSS to style the file input field as button and adjust the Bootstrap progress bars -->
<link rel="stylesheet" href="${ctx}/jQuery File Upload Demo - jQuery UI version_files/jquery.fileupload.css">
<link rel="stylesheet" href="${ctx}/jQuery File Upload Demo - jQuery UI version_files/jquery.fileupload-ui.css">
<!-- CSS adjustments for browsers with JavaScript disabled -->
 <script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
 <%-- <script>
    $( document ).ready(function() {
    	/*  var count =document.getElementById("myta").getElementsByTagName("tr").length;
         $('#demo').html(count);
         alert(count); */
    	 var count = $('#myta').children('tr').length;
    	 alert(count);
    });
 </script> --%>
  <!--   var table=$('.files')[0];
    if (table.rows["myid"])
        alert("Has the row!");
 -->
</head>
<body>

${size }
<!-- The file upload form used as target for the file upload widget -->
<form id="fileupload" action='<s:url value="images/upload"/>' method="POST" enctype="multipart/form-data" class="">
    <!-- Redirect browsers with JavaScript disabled to the origin page -->
    
    <noscript>&amp;lt;input type="hidden" name="redirect" value="https://blueimp.github.io/jQuery-File-Upload/"&amp;gt;</noscript>
    <!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload -->
    
    <div class="fileupload-buttonbar">
        <div class="fileupload-buttons">
            <!-- The fileinput-button span is used to style the file input field as button -->
            <span class="fileinput-button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary" role="button"><span class="ui-button-icon-primary ui-icon ui-icon-plusthick"></span><span class="ui-button-text"><span class="ui-button-icon-primary ui-icon ui-icon-plusthick"></span><span class="ui-button-text">
                <span>Add files...</span>
                
            </span></span><input type="file" name="files[]" multiple="" ></span>
            <button type="submit" class="start ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary" role="button"><span class="ui-button-icon-primary ui-icon ui-icon-circle-arrow-e"></span><span class="ui-button-text"><span class="ui-button-icon-primary ui-icon ui-icon-circle-arrow-e"></span><span class="ui-button-text">Start upload</span></span></button>
            <button type="reset" class="cancel ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary" role="button"><span class="ui-button-icon-primary ui-icon ui-icon-cancel"></span><span class="ui-button-text"><span class="ui-button-icon-primary ui-icon ui-icon-cancel"></span><span class="ui-button-text">Cancel upload</span></span></button>
            <button type="button" class="delete ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary" role="button"><span class="ui-button-icon-primary ui-icon ui-icon-trash"></span><span class="ui-button-text"><span class="ui-button-icon-primary ui-icon ui-icon-trash"></span><span class="ui-button-text">Delete</span></span></button>
            <input type="checkbox" class="toggle">
            <!-- The global file processing state -->
            <span class="fileupload-process"></span>
        </div>
        <!-- The global progress state -->
        <div class="fileupload-progress fade" style="display: none;">
            <!-- The global progress bar -->
            <div class="progress ui-progressbar ui-widget ui-widget-content ui-corner-all" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0"><div class="ui-progressbar-value ui-widget-header ui-corner-left" style="display: none; width: 0%;"></div><div class="ui-progressbar-value ui-widget-header ui-corner-left" style="display: none; width: 0%;"></div></div>
            <!-- The extended global progress state -->
            <div class="progress-extended">&nbsp;</div>
        </div>
    </div>
   
    <!-- The table listing the files available for upload/download -->
    <%-- <c:choose>
  <c:when test="${size gt 0}">
  <input type="input"></input>
    <table role="presentation" class="files mytable"><tbody id="myta"></tbody></table>
  </c:when>
  <c:otherwise>
    <table role="presentation" class="files"><tbody id="myta"></tbody></table>
  </c:otherwise>
</c:choose> --%>
    <table role="presentation" class="files"><tbody id="myta"></tbody></table>
<!--   <div class="files mytable"></div> -->
   <p id="demo"></p>
</form>
${size}
<br>

<!-- The blueimp Gallery widget -->
<div id="blueimp-gallery" class="blueimp-gallery blueimp-gallery-controls" data-filter=":even">
    <div class="slides"></div>
    <h3 class="title"></h3>
    <a class="prev">‹</a>
    <a class="next">›</a>
    <a class="close">×</a>
    <a class="play-pause"></a>
    <ol class="indicator"></ol>
</div>
<!-- The template to display files available for upload -->


<script async="" src="file://www.google-analytics.com/analytics.js"></script><script id="template-upload" type="text/x-tmpl">
    
{% for (var i=0, file; file=o.files[i]; i++) { %}
	
    <tr class="template-upload fade">
        <td>
            <span class="preview"></span>
        </td>
        <td>
            <p class="name">{%=file.name%}</p>
            <strong class="error"></strong>
        </td>
        <td>
            <p class="size">Processing...</p>
            <div class="progress"></div>
        </td>
        <td>
            {% if (!i && !o.options.autoUpload) { %}
                <button class="start" disabled>Start</button>
                parent.Refresh();
            {% } %}
            {% if (!i) { %}
                <button class="cancel">Cancel</button>
            {% } %}
        </td>
    </tr>
{% } %}
</script>

<!-- The template to display files available for download -->

<script id="template-download" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
	
    <tr class="template-download fade">
        <td>
            <span class="preview">
                {% if (file.thumbnailUrl) { %}
                    <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" data-gallery><img src="{%=file.thumbnailUrl%}"></a>
                {% } %}
            </span>
        </td>
        <td>
            <p class="name">
                <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" {%=file.thumbnailUrl?'data-gallery':''%}>{%=file.name%}</a>
            </p>
            {% if (file.error) { %}
                <div><span class="error">Error</span> {%=file.error%}</div>
            {% } %}
        </td>
        <td>
            <span class="size">{%=o.formatFileSize(file.size)%}</span>
        </td>
        <td>
            <button class="delete" data-type="{%=file.deleteType%}" data-url="{%=file.deleteUrl%}"{% if (file.deleteWithCredentials) { %} data-xhr-fields='{"withCredentials":true}'{% } %}>Delete</button>
           
            <input type="checkbox" name="delete" value="1" class="toggle">
        </td>
    </tr>

{% } %}

</script>

<script src="${ctx}/jQuery File Upload Demo - jQuery UI version_files/jquery.min.js.download"></script>
<script src="${ctx}/jQuery File Upload Demo - jQuery UI version_files/jquery-ui.min.js.download"></script>
<!-- The Templates plugin is included to render the upload/download listings -->
<script src="${ctx}/jQuery File Upload Demo - jQuery UI version_files/tmpl.min.js.download"></script>
<!-- The Load Image plugin is included for the preview images and image resizing functionality -->
<script src="${ctx}/jQuery File Upload Demo - jQuery UI version_files/load-image.all.min.js.download"></script>
<!-- The Canvas to Blob plugin is included for image resizing functionality -->
<script src="${ctx}/jQuery File Upload Demo - jQuery UI version_files/canvas-to-blob.min.js.download"></script>
<!-- blueimp Gallery script -->
<script src="${ctx}/jQuery File Upload Demo - jQuery UI version_files/jquery.blueimp-gallery.min.js.download"></script>
<!-- The Iframe Transport is required for browsers without support for XHR file uploads -->
<script src="${ctx}/jQuery File Upload Demo - jQuery UI version_files/jquery.iframe-transport.js.download"></script>
<!-- The basic File Upload plugin -->
<script src="${ctx}/jQuery File Upload Demo - jQuery UI version_files/jquery.fileupload.js.download"></script>
<!-- The File Upload processing plugin -->
<script src="${ctx}/jQuery File Upload Demo - jQuery UI version_files/jquery.fileupload-process.js.download"></script>
<!-- The File Upload image preview & resize plugin -->
<script src="${ctx}/jQuery File Upload Demo - jQuery UI version_files/jquery.fileupload-image.js.download"></script>
<!-- The File Upload audio preview plugin -->
<script src="${ctx}/jQuery File Upload Demo - jQuery UI version_files/jquery.fileupload-audio.js.download"></script>
<!-- The File Upload video preview plugin -->
<script src="${ctx}/jQuery File Upload Demo - jQuery UI version_files/jquery.fileupload-video.js.download"></script>
<!-- The File Upload validation plugin -->
<script src="${ctx}/jQuery File Upload Demo - jQuery UI version_files/jquery.fileupload-validate.js.download"></script>
<!-- The File Upload user interface plugin -->
<script src="${ctx}/jQuery File Upload Demo - jQuery UI version_files/jquery.fileupload-ui.js.download"></script>
<!-- The File Upload jQuery UI plugin -->
<script src="${ctx}/jQuery File Upload Demo - jQuery UI version_files/jquery.fileupload-jquery-ui.js.download"></script> 
<!-- The main application script -->
<%-- <script src="${ctx}/jQuery File Upload Demo - jQuery UI version_files/main.js.download"></script> --%>

<!-- The XDomainRequest Transport is included for cross-domain file deletion for IE 8 and IE 9 -->
<!--[if (gte IE 8)&(lt IE 10)]>
<script src="js/cors/jquery.xdr-transport.js"></script>
<![endif]-->

<script>window.cookieconsent_options={"message":"This website uses cookies to ensure you get the best experience on our website","dismiss":"Got it!","learnMore":"More info","link":null,"theme":"light-bottom"};</script>
<script async="" src="${ctx}/jQuery File Upload Demo - jQuery UI version_files/cookieconsent.latest.min.js.download"></script>
<script type="text/javascript">
function Refresh() 
{
                window.location.reload();
          }  
$(function () {
    'use strict';
	
	
    // Initialize the jQuery File Upload widget:
    $('#fileupload').fileupload({
        // Uncomment the following to send cross-domain cookies:
        //xhrFields: {withCredentials: true},
        url:'/InfoCMS/images/upload/${templateid}/${pageid}/${websiteid}'
    });

    // Enable iframe cross-domain access via redirect option:
    $('#fileupload').fileupload(
        'option',
        'redirect',
        window.location.href.replace(
            /\/[^\/]*$/,
            '/cors/result.html?%s'
        )
    );

    if (window.location.hostname === 'blueimp.github.io') {
        // Demo settings:
        $('#fileupload').fileupload('option', {
            url: '//jquery-file-upload.appspot.com/',
            // Enable image resizing, except for Android and Opera,
            // which actually support image resizing, but fail to
            // send Blob objects via XHR requests:
            disableImageResize: /Android(?!.*Chrome)|Opera/
                .test(window.navigator.userAgent),
            maxFileSize: 999000,
            acceptFileTypes: /(\.|\/)(gif|jpe?g|png)$/i
        });
        // Upload server status check for browsers with CORS support:
        if ($.support.cors) {
            $.ajax({
                url: '//jquery-file-upload.appspot.com/',
                type: 'HEAD'
            }).fail(function () {
                $('<div class="alert alert-danger"/>')
                    .text('Upload server currently unavailable - ' +
                            new Date())
                    .appendTo('#fileupload');
            });
        }
    } else {
        // Load existing files:
        $('#fileupload').addClass('fileupload-processing');
        
        $.ajax({
            // Uncomment the following to send cross-domain cookies:
            //xhrFields: {withCredentials: true},
            url: $('#fileupload').fileupload('option', 'url'),
            dataType: 'json',
            context: $('#fileupload')[0]
        }).always(function () {
            $(this).removeClass('fileupload-processing');
            
        }).done(function (result) {
            $(this).fileupload('option', 'done')
                .call(this, $.Event('done'), {result: result});
            var size =result.files.length;
            if(size>0)
            	{
            	$('table').addClass('mytable');
            	
            	}
            else
            	{
            	$('table').removeClass('mytable');
            	
            	}
              
        });
    }

});
</script>

</body></html>