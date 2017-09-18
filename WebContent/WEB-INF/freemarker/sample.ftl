<html>
<head>
<style>
body {
   overflow:hidden;
}
.loader {
	position: fixed;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 100%;
	z-index: 9999;
	background: url('/InfoCMS/static/images/loader2.gif')50% 50% no-repeat #ffffff;
}
</style>
<script type="text/javascript" src="/InfoCMS/static/js/jquery.min.js"></script>
<script>
        $(window).load(function() {
            $(".loader").fadeOut("slow");
        });
</script>
</head>
<body>

<div class="loader">
</div>
<iframe id="iframe1" class="iframe1" src="/InfoCMS/web/default/${site.id}/${page.id}" width="120%" height="100%" scrolling="no" frameborder="0">
</body>
</html>

