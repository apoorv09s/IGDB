
<!DOCTYPE HTML>
<html lang="en-US">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
<title>Login</title>
<link rel="stylesheet" type="text/css" media="all" href="style.css" />
<link rel="stylesheet" type="text/css" href="style/css/media-queries.css" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,400italic,300italic,300,700,700italic|Open+Sans+Condensed:300,700' rel="stylesheet" type='text/css'>
<!--[if IE 8]>
<link rel="stylesheet" type="text/css" href="style/css/ie8.css" media="all" />
<![endif]-->
<!--[if IE 9]>
<link rel="stylesheet" type="text/css" href="style/css/ie9.css" media="all" />
<![endif]-->
<script type="text/javascript" src="style/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="style/js/ddsmoothmenu.js"></script>
<script type="text/javascript" src="style/js/retina.js"></script>
<script type="text/javascript" src="style/js/selectnav.js"></script>
<script type="text/javascript" src="style/js/jquery.masonry.min.js"></script>
<script type="text/javascript" src="style/js/jquery.fitvids.js"></script>
<script type="text/javascript" src="style/js/jquery.backstretch.min.js"></script>
<script type="text/javascript" src="style/js/jquery.dcflickr.1.0.js"></script>
<script type="text/javascript" src="style/js/twitter.min.js"></script>
<script type="text/javascript">
	$.backstretch("style/images/bg/1.jpg");
</script>
</head>
<body>
<div class="scanlines"></div>

<!-- Begin Header -->
<div class="header-wrapper opacity">
	<div class="header">
		<!-- Begin Logo -->
		<div class="logo">
		    <a href="index.jsp">
				<h1>IGDB</h1>
			</a>
	    </div>
		<!-- End Logo -->
		<!-- Begin Menu -->
		<div id="menu-wrapper">
			<div id="menu" class="menu">
				<ul id="tiny">
					<li><a href="index.html">Blog</a>
						<ul>
							<li><a href="post.html">Blog Post</a></li>
						</ul>
					</li>
					<li><a href="page-with-sidebar.html">Pages</a>
						<ul>
							<li><a href="page-with-sidebar.html">Page With Sidebar</a></li>
							<li><a href="full-width.html">Full Width</a></li>
						</ul>
					</li>
					<li><a href="typography.html">Styles</a>
						<ul>
							<li><a href="typography.html">Typography</a></li>
							<li><a href="columns.html">Columns</a></li>
						</ul>
					</li>
					<li class="active"><a href="contact.html">Contact</a></li>
					<li><a href="page-with-sidebar.html">Login</a>
						<ul>
							<li><a href="register.html">Register</a></li>
							<li><a href="full-width.html">Login</a></li>
							</ul>
					</li>
				</ul>
			</div>
		</div>
		<div class="clear"></div>
		<!-- End Menu -->
	</div>
</div>
<!-- End Header -->

<!-- Begin Wrapper -->
<div class="wrapper"><!-- Begin Intro -->

<ul class="social">
<li><a class="rss" href="#"></a></li><li><a class="facebook" href="#"></a></li><li><a class="twitter" href="#"></a></li><li><a class="pinterest" href="#"></a></li><li><a class="dribbble" href="#"></a></li><li><a class="flickr" href="#"></a></li><li><a class="linkedin" href="#"></a></li></ul><!-- End Intro --> 

<!-- Begin Container -->
<div class="content box">
<%--
String status=request.getParameter("log");
if(status.equalsIgnoreCase("success"))
	out.println("<h1 class=\"title\">Registration was successful!</h2>");
else if(status.equalsIgnoreCase("invalid"))
	out.println("<h1 class=\"title\">Given user does not exist. <a href=\"Register.jsp?reg=unreg\">Register First ...</h2>");
else
	out.println("<h1 class=\"title\">Register</h1>");
--%>
<div class="form-container">
	<form class="forms" action="logWork.jsp" method="post">
		<fieldset>
			<ol>
				<li class="form-row text-input-row"><label>E-Mail :</label><input type="text" name="email" value="" class="text-input required" title="" /></li>
				<li class="form-row text-input-row"><label>Password :</label><input type="password" name="password" value="" class="text-input required email" title="" /></li>
				<div id="registration-form" class="registration-form">
				<li class="form-row text-input-row"><a href="forgot.jsp">Forgot password ?</a></li>			
		<br>
		<br> 
			<input type="submit" value="Submit" name="submit" class="btn-submit" />

		</div>
		</ol>
		</fieldset>
	</form>
</div>


</div>
<!-- End Container -->

<!-- Begin Sidebar -->
<div class="sidebar box">
  <div class="sidebox widget">
			<h3 class="widget-title">Where Are We?</h3>
			<p>Jaypee University of Information Technology, Waknaghat, Distt. Solan, H.P. - 173234</p>
			<p>
				<span class="lite1">Fax:</span> +052 223 265 47<br />
				<span class="lite1">Tel:</span> +052 223 265 47<br />
				<span class="lite1">E-mail:</span> a09sahay@gmail.com
			</p>
			
	</div>
	
	<div class="sidebox widget">
		<h3 class="widget-title">Custom Text</h3>
		<p>Suspendisse eu odio quis elit ultrice commodo tempor eget arcu. Sedur aliquet posuere lectus aliquam iaculi. Curabitur a risus metus. In ut lorem nisl, et adipiscing sapien. Donec sed risus tristiq scelerisque. </p>
	</div>
	
</div>
<!--End Sidebar -->
<div class="clear"></div>

</div>
<!-- End Wrapper -->

<!-- Begin Footer -->
<div class="footer-wrapper">
<div id="footer" class="four">
		<div id="first" class="widget-area">
			<div class="widget widget_search">
			
				<h3 class="widget-title">Search</h3>
				<form class="searchform" method="get" action="#">
				
					<input type="text" name="s" value="type and hit enter" onFocus="this.value=''" onBlur="this.value='type and hit enter'"/>
				</form>
			</div>
			
		</div><!-- #first .widget-area -->
		<div id="second" class="widget-area">
		<div id="example-widget-3" class="widget example">
			<h3 class="widget-title">Popular Posts</h3>
					<p></p>
			  		<div class="frame">
			  			<a class="texthover" href=" " title="FIFA 15" style="background-color:#FFFFFF;color:#000000;text-decoration:none"><img src="style/images/art/s1.jpg" width="225dp" height="100dp" /></a>
			  		</div>
					<div class="meta">
					    <h6><a href="#">FIFA 15</a></h6>
					    <em>28th Sep 2012</em>
				    </div>
				
			
		</div>
		</div><!-- #second .widget-area -->
	
		<div id="third" class="widget-area">
			<div id="twitter-2" class="widget widget_twitter">
			<br>
			<br>
					<div class="frame">
			  			<a class="texthover" href=" " title="Dragon Age Inquisition" style="background-color:#FFFFFF;color:#000000;text-decoration:none"><img src="style/images/art/s2.jpg" width="225dp" height="100dp" /></a>
			  		</div>
					<div class="meta">
					    <h6><a href="#">Dragon Age Inquisition</a></h6>
					    <em>5th Sep 2012</em>
				    </div>
			</div>
		</div><!-- #third .widget-area -->
	
		
		
		<div id="fourth" class="widget-area">
		<div class="widget">
		<br>
		<br>
			<div class="frame">
			
			  			<a class="texthover" href=" " title="Mortal Kombat X" style="background-color:#FFFFFF;color:#000000;text-decoration:none"><img src="style/images/art/s3.jpg" width="225dp" height="100dp"/></a>
			  		</div>
					<div class="meta">
					    <h6><a href="#">Mortal Kombat X</a></h6>
					    <em>5th Sep 2012</em>
				    </div>
			
		</div>
		</div><!-- #fourth .widget-area -->
	</div>
</div>
<div class="site-generator-wrapper">
	<div class="site-generator">Copyright Obscura 2012. Design by <a href="http://elemisfreebies.com">elemis</a>. All rights reserved.</div>
</div>
<!-- End Footer --> 
<script type="text/javascript" src="style/js/scripts.js"></script>
</body>
</html>