<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.text.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.net.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en-US">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
<title>IGDB</title>
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
	$.backstretch("style/images/bg/2.jpg");
</script>
</head>
<body class="single">
<div class="scanlines"></div>

<!-- Begin Header -->
<div class="header-wrapper opacity">
	<div class="header">
		<!-- Begin Logo -->
		<div class="logo">
		    <a href="index1.jsp">
		<h1>IGDB</h1>
		</a>
		</div>
		<!-- End Logo -->
		<!-- Begin Menu -->
		<div id="menu-wrapper">
			<div id="menu" class="menu">
				<ul id="tiny">
					<li class="active"><a href="index1.html">Blog</a>
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
					<li><a href="contact.html">Contact</a></li>
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

	<!-- Begin Video Format -->
<% 
String x = request.getParameter("pageID");	
%>
	
	<img src="style/images/<%=x %>/logo.png" alt="" style="margin:0px 400px" />
	<br>
		<div class="post format-video box"> 
		
			<div class="video frame"><iframe src="style/images/<%=x %>/vid1.mp4" type="video/mp4" width="1010" height="500" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe></div>
			
			
		

			
		</div>
		<!-- End Video Format --> 	

<%
	FileInputStream fin = null;		      
	try {		
        fin=new FileInputStream("D://Java Core+Advance//workspace//IGDB//WebContent//style//images//"+x+"//data1.txt");
	    String s="";
	    int i;
	    while((i=fin.read())!=-1)
	    {
	   	 s=s+(char)i;
	    }
	    out.println(s);
	    fin.close();
		}
	   catch(Exception e)
	   {}
%>

<!-- Begin Sidebar -->
<div class="sidebar box">
  <div class="sidebox widget">
			<h3 class="widget-title">Popular Posts</h3>
			<ul class="post-list">
			  	<li> 
			  		<div class="frame">
			  			<a href="#"><img src="style/images/art/s1.jpg" /></a>
			  		</div>
					<div class="meta">
					    <h6><a href="#">Charming Winter</a></h6>
					    <em>28th Sep 2012</em>
				    </div>
				</li>
				<li> 
			  		<div class="frame">
			  			<a href="#"><img src="style/images/art/s2.jpg" /></a>
			  		</div>
					<div class="meta">
					    <h6><a href="#">Trickling Stream</a></h6>
					    <em>5th Sep 2012</em>
				    </div>
				</li>
				<li> 
			  		<div class="frame">
			  			<a href="#"><img src="style/images/art/s3.jpg" /></a>
			  		</div>
					<div class="meta">
					    <h6><a href="#">Morning Glory</a></h6>
					    <em>26th Sep 2012</em>
				    </div>
				</li>
			</ul>
			
	</div>
	
	<div class="sidebox widget">
		<h3 class="widget-title">Search</h3>
		<form class="searchform" method="get" action="#">
			<input type="text" name="s" value="type and hit enter" onFocus="this.value=''" onBlur="this.value='type and hit enter'"/>
		</form>
	</div>
	
	<div class="sidebox widget">
		<h3 class="widget-title">Custom Text</h3>
		<div>Suspendisse eu odio quis elit ultrice commodo tempor eget arcu. Sedur aliquet posuere lectus aliquam iaculi. Curabitur a risus metus. In ut lorem nisl, et adipiscing sapien. Donec sed risus tristiq scelerisque. </div>
	</div>
	
	<div class="sidebox widget">
		<h3 class="widget-title">Categories</h3>
			<ul>
				<li><a href="#">Detektivbyr?n</a></li>
				<li><a href="#">Flowers</a></li>
				<li><a href="#">Funny</a></li>
				<li><a href="#">Journal</a></li>
				<li><a href="#">Landscape</a></li>
				<li><a href="#">Nature</a></li>
				<li><a href="#">Photography</a></li>
				<li><a href="#">Video</a>
			</li>
		</ul>
</div></div>
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