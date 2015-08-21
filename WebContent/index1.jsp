<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="p1.DB" %>
<!DOCTYPE HTML>
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
	$.backstretch("style/images/bg/1.jpg");
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
				<h1>IGDB </h1>
			</a>
	    </div>
		<!-- End Logo -->
		<!-- Begin Menu -->
		<div id="menu-wrapper">
			<div id="menu" class="menu">
				<ul id="tiny">
					<li class="active"><a href="index1.html">Home</a>
						
					</li>
					<li><a href="news.jsp">Updates</a>
						<ul>
						<li><a href="news.jsp">News</a></li>
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
        <form action="logWork.jsp" method="post">
            <h2>Sign in to IGDB</h2>
            <p>By creating an account or signing in,</p><p> you agree to IGDB's Conditions of Use and Privacy Policy.</p>
            <div>
                <label for="login">E-Mail</label>
                <input type="text" id="login" name="email" />
            </div>
            <div>
                <label for="password">Password</label>
                <input type="password" id="password" name="password"/>
            </div>
            <input type="submit" value="Log In"/>
			<p></p>
			<p><a href="">Forgot your password?</a></p>

            <a class="close" href="#close"></a>
        </form>
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
<div class="intro">Here you get all the latest updates, reviews and all the other information related to any pc game </div>
<ul class="social">
<li><a class="rss" href="#"></a></li><li><a class="facebook" href="#"></a></li><li><a class="twitter" href="#"></a></li><li><a class="pinterest" href="#"></a></li><li><a class="dribbble" href="#"></a></li><li><a class="flickr" href="#"></a></li><li><a class="linkedin" href="#"></a></li></ul><!-- End Intro --> 
<h2>Most Recent</h2>
<!-- Begin Blog Grid -->
<div class="blog-wrap">
	<!-- Begin Blog -->
	<div class="blog-grid">
	<%
	
	// Get page number feature from Armaan
	// 
	
	try
	 {
		Connection con=p1.DB.getConnect();
		String sql="select DATA from PAGE where PAGE_NO=?";
		PreparedStatement pst=con.prepareStatement(sql);
		pst.setInt(1,1/*request.getParameter("select_page")*/);		
		ResultSet rs=pst.executeQuery();
		rs.next();
		
		StringTokenizer st=new StringTokenizer(rs.getString("DATA"),",");
		if(st.hasMoreTokens())
		while(st.hasMoreTokens())
		{
			String g=st.nextToken();
		%>
		<!-- Begin Image Format -->
		<div class="post format-image box"> 
			<div class="frame">
				<a href="post1.jsp?pageID=<%=g %>">
					<img src="style/images/<%=g %>/img1.jpg" alt="" />
				</a>
			</div>
			<h2 class="title"><a href="post1.jsp?pageID=<%=g %>"><%=g %></a></h2>
			<%
		     FileInputStream fin = null;		      
				
		      try {
		    	  fin=new FileInputStream("D:\\Java Core+Advance\\workspace\\IGDB\\WebContent\\style\\images\\"+g+"\\intro.txt");
		          String s="";
		          int i;
		          while((i=fin.read())!=-1)
		          {
		         	 s=s+(char)i;
		          }
		          out.println("<blockquote>"+s+"<blockquote>");
		          fin.close();
		      	}
		         catch(Exception e)
		         {}
			
			%>
			<blockquote>For the first time ever, players will show emotion based on the context of the match. With over 600 new emotional reactions, players now respond to pivotal moments on the pitch > bad tackles, missed chances, epic goals - as they would in real life.</blockquote>
			<div class="details">
				<span class="icon-image"><a href="#">September 26, 2012</a></span>
				<span class="likes"><a href="#" class="likeThis">44</a></span>
				<span class="comments"><a href="#">3</a></span>
			</div>
		</div>
		<!-- End Image Format -->
		<%}
				else
				{
					response.sendRedirect("Error.jsp");
				}
			 }
			catch(Exception e)
			 {
				e.printStackTrace();
				response.sendRedirect("Error.jsp");
			 }
		%> 	
		
 	</div>
	<!-- End Blog -->
</div>
<!-- End Blog Grid -->
<h2>Top Rated Of All Time</h2>
<div class="transbox">
<a class="texthover" href=" " title="Dark Souls 2" style="background-color:#FFFFFF;color:#000000;text-decoration:none"><img class="thumbnail" src="style/images/art/t1.jpg" width="242" height="240"></a>
<a class="texthover" href=" " title="Modern Warfare 2" style="background-color:#FFFFFF;color:#000000;text-decoration:none"><img class="thumbnail" src="style/images/art/t2.jpg" width="242" height="240"></a>
<a class="texthover" href=" " title="GTA Vice City" style="background-color:#FFFFFF;color:#000000;text-decoration:none"><img class="thumbnail" src="style/images/art/t3.jpg" width="242" height="240"></a>	
<a class="texthover" href=" " title="Mario" style="background-color:#FFFFFF;color:#000000;text-decoration:none"><img class="thumbnail" src="style/images/art/t4.jpg" width="242" height="240"></a>

</div>
<br>
<h2>Critics choice</h2>
<div class="transbox1">
<h4>Best of Show: Evolve</h4><img class="thumbnailnew" src="style/images/art/c1.jpg" width="500" height="550">
<img class="thumbnail" src="style/images/art/c2.jpg" width="180" height="150">
<h4>Best Original Game: No Man's Sky </h4>

<p>No Man's Sky is a game about exploration and survival in an infinite procedurally generated galaxy.</p>
<br>
<br>
<img class="thumbnail" src="style/images/art/c3.jpg" width="180" height="150">
<h4>Best PC Game: Tom Clancy's Rainbow Six: Siege </h4>
<p>Tom Clancy's Rainbow Six Siege is an upcoming first-person shooter video game under development by Ubisoft Montreal.</p>
<br>
<img class="thumbnail" src="style/images/art/c4.jpeg" width="180" height="150">
<h4>Best Racing Game: The Crew </h4>
<p>The Crew is a revolutionary action-driving game developed. It takes you and your friends on a reckless ride inside a massive, open-world recreation of the United States</p>
</div>
<br>
<!-- Begin Page-navi -->
    	<div class="transbox2">
				<ul>
					<h4><a href="index1.jsp">1 </a>|
						
					
					<a href="index1.jsp">2 </a>|
						
					
					<a href="index1.jsp">3 </a>|
											
					
					<a href="index1.jsp">4</a></h4>
				</ul>
			</div>
		
      <!-- 
			<div class="nav-next"><a href="#" ><span class="meta-nav-next">Newer posts &rarr;</span></a></div>
			 --> 
    </div>
    <!-- End Page-navi --> 

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
			  			<a class="texthover" href=" " title="FIFA 15" style="background-color:#FFFFFF;color:#000000;text-decoration:none"><img src="style/images/art/s1.jpg"  /></a>
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
			  			<a class="texthover" href=" " title="Dragon Age Inquisition" style="background-color:#FFFFFF;color:#000000;text-decoration:none"><img src="style/images/art/s2.jpg" /></a>
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
			
			  			<a class="texthover" href=" " title="Mortal Kombat X" style="background-color:#FFFFFF;color:#000000;text-decoration:none"><img src="style/images/art/s3.jpg"/></a>
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