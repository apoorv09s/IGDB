<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.text.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.net.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="p1.DB" %>
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
		    <a href="index.jsp">
		<h1>IGDB</h1>
		</a>
		</div>
		<!-- End Logo -->
		<!-- Begin Menu -->
	<div id="menu-wrapper">
			<div id="menu" class="menu">
				<ul id="tiny">
					<li><a href="index1.jsp">Home</a>
						
					</li>
					<li><a href="news.jsp">Updates</a>
						<ul>
						<li ><a href="news.jsp">News</a></li>
							<li><a href="index1.jsp">what to play next?</a></li>
							
						</ul>
						
					<li><a href="about.jsp">About Us</a>
						
					</li>
					<li><a href="contact.jsp">Contact</a></li>
					<li><a href="faq.jsp">Help |</a>
					<ul>
							<li><a href="faq.jsp">FAQ</a></li>
							</ul>
							</li>
				
				
			
                <li><a href="#login_form" id="login_pop">Login</a>
				<ul>
							<li><a href="register.jsp?reg=unreg">Register</a></li>
							<li><a href="#login_form" id="login_pop">Login</a></li>
						</ul>
                
            
		

        <!-- popup form #1 -->
        <a href="#x" class="overlay" id="login_form"></a>
        <div class="popup">
            <h2>Sign in to IGDB</h2>
            <p>By creating an account or signing in,</p><p> you agree to IGDB's Conditions of Use and Privacy Policy.</p>
            <div>
                <label for="login">Username</label>
                <input type="text" id="login" value="" />
            </div>
            <div>
                <label for="password">Password</label>
                <input type="password" id="password" value="" />
            </div>
            <input type="button" value="Log In" />
			<p></p>
			<p><a href="">Forgot your password?</a></p>

            <a class="close" href="#close"></a>
        </div>

        
		</li>					
					
					
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
double rate=0.0;
String s="";
Connection con=DB.getConnect();
PreparedStatement ps=con.prepareStatement("select * from RATING where NAME=?");
ps.setString(1, x);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
	rate=rs.getDouble("RATE");
	s=rs.getString("LINK");
	}
	
%>
	
	<img src="style/images/<%=x %>/logo.png" alt="" style="margin:0px 400px" />
	<br>
		<div class="post format-video box"> 
		
			<div class="video frame"><iframe src="http://www.youtube.com/embed/<%=s %>" width="1010" height="500" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe></div>			
			
		

			
		</div>
		<!-- End Video Format --> 	
		<!-- Begin Container -->
<div class="content">

		<!-- Begin Post -->
		<div class="post format-image box"> 

			
			<h2 class="title"><%=x %></h2> <img src="style/images/art/rating.png" alt="" width="100px" height="100px" align="right" >
			<p>Standard Rating: 4.5/5.0</p>
			
			<p>User Rating: <%=rate %>/5.0</p>
			<style>
form .stars {
  background: url("stars.png") repeat-x 0 0;
  width: 150px;
  margin: 0 auto;
}
 
form .stars input[type="radio"] {
  position: absolute;
  opacity: 0;
  filter: alpha(opacity=0);
}
form .stars input[type="radio"].star-5:checked ~ span {
  width: 100%;
}
form .stars input[type="radio"].star-4:checked ~ span {
  width: 80%;
}
form .stars input[type="radio"].star-3:checked ~ span {
  width: 60%;
}
form .stars input[type="radio"].star-2:checked ~ span {
  width: 40%;
}
form .stars input[type="radio"].star-1:checked ~ span {
  width: 20%;
}
form .stars label {
  display: block;
  width: 30px;
  height: 30px;
  margin: 0!important;
  padding: 0!important;
  text-indent: -999em;
  float: left;
  position: relative;
  z-index: 10;
  background: transparent!important;
  cursor: pointer;
}
form .stars label:hover ~ span {
  background-position: 0 -30px;
}
form .stars label.star-5:hover ~ span {
  width: 100% !important;
}
form .stars label.star-4:hover ~ span {
  width: 80% !important;
}
form .stars label.star-3:hover ~ span {
  width: 60% !important;
}
form .stars label.star-2:hover ~ span {
  width: 40% !important;
}
form .stars label.star-1:hover ~ span {
  width: 20% !important;
}
form .stars span {
  display: block;
  width: 0;
  position: relative;
  top: 0;
  left: 0;
  height: 30px;
  background: url("stars.png") repeat-x 0 -60px;
  -webkit-transition: -webkit-width 0.5s;
  -moz-transition: -moz-width 0.5s;
  -ms-transition: -ms-width 0.5s;
  -o-transition: -o-width 0.5s;
  transition: width 0.5s;
 }
  </style>
			<p>Your Rating:</p>
					<form id="ratingsForm" name="rateForm" method="post" action="rating.jsp?page=<%=x %>&rate=<%=rate%>">
						<div class="stars">
							<input type="radio" name="star" class="star-1" id="star-1" value="1" onclick="document.getElementById('ratingsForm').submit();"/>
							<label class="star-1" for="star-1">1</label>
							<input type="radio" name="star" class="star-2" id="star-2" value="2" onclick="document.getElementById('ratingsForm').submit();"/>
							<label class="star-2" for="star-2">2</label>
							<input type="radio" name="star" class="star-3" id="star-3" value="3" onclick="document.getElementById('ratingsForm').submit();"/>
							<label class="star-3" for="star-3">3</label>
							<input type="radio" name="star" class="star-4" id="star-4" value="4" onclick="document.getElementById('ratingsForm').submit();"/>
							<label class="star-4" for="star-4">4</label>
							<input type="radio" name="star" class="star-5" id="star-5" value="5" onclick="document.getElementById('ratingsForm').submit();"/>
							<label class="star-5" for="star-5">5</label>
							<span></span>
						</div>
					</form>					
				<br>			
				
<%
FileInputStream fin = null;                		
try {   
    String t="";
    int i;
    fin=new FileInputStream("D://Java Core+Advance//workspace//IGDB//WebContent//style//images//"+x+"//data1.txt");
    /*while((char)(i=fin.read())!='\n')
    {
   	 s=s+(char)i;   	 
    }
    s=s.substring(3);  
    
    double rate=Double.parseDouble("4.5");
    s="";*/	    	    
    while((i=fin.read())!=-1)
    {
   	 t=t+(char)i;
    }    
    out.println(t.substring(3));
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