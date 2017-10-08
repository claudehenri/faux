<!DOCTYPE html>
<html>
<head>
<%@ page import="java.io.*" %> 
<%@ page import="java.sql.*" %> 
<%@ page import="java.util.*" %> 
<%@ page import="mod.Utility.*"%> 

  <!-- Site made with Mobirise Website Builder v3.11.1, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v3.11.1, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" href="assets/images/tumblr-static-filename-640-v2.gif" type="image/x-icon">
  <meta name="description" content="">
  
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&amp;subset=latin">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
  
  <!--
	"assets"
	/animate.css
	/bootstrap-material-design-font
	/bootstrap
	/dropdown
	/mobirise
	/tether
	/theme	
	-->

  <link rel="stylesheet" href="assets/animate.css/animate.min.css">
  <link rel="stylesheet" href="assets/bootstrap-material-design-font/css/material.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/dropdown/css/style.css">
  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
  <link rel="stylesheet" href="assets/tether/tether.min.css">  
  <link rel="stylesheet" href="assets/theme/css/style.css">
  
<%
int Landed = 0;
int LoggedIn = 1;
int LoggedOut = -1;
Properties prop = null;
int sessionUserState = 0;
InputStream inputStream = null;

            try 
            {
                prop = new Properties();   
				
                inputStream = JDBCFacility.class.getClassLoader().getResourceAsStream("/WEB-INF/properties/rojo.properties");

				if( inputStream == null )
				{
					System.out.println("\tThe stacktrack could not instantiate the inputStream.\n");
				}
				if( inputStream != null )
				{
					System.out.println("\n\tThe \"rojo.properties\" stream has " +inputStream.available()+ " bytes available.\n");
				}

            } 
            catch (Exception e) 
            {
                e.printStackTrace();
            } 

java.lang.String publicColor = (String)
session.getAttribute("PUBLIC_COLORS");

mod.ValueObject.Identity publicID = (mod.ValueObject.Identity)
session.getAttribute("PUBLIC_IDENTITY");

String loginLogoutSwicth = 
"<a href=\"identify.jsp\">LOGIN</a>";

String logoutSessState = (String) 
request.getParameter("Logout");

if(publicID != null)
{
	sessionUserState = LoggedIn;
	loginLogoutSwicth = "<a href=index.jsp?Logout=Yes>LOGOUT</a></BR><font color=\"+publicColor+\"" + publicID.getCodename() + "</font>";
}

if(publicID == null)
{
	loginLogoutSwicth = "<a href=\"identify.jsp\">LOGIN</a>";	
}


if(logoutSessState!=null && logoutSessState.equals("Yes") && sessionUserState==LoggedIn )
{
	sessionUserState = LoggedOut;
	request.getSession().invalidate();	
	loginLogoutSwicth = "<a href=\"identify.jsp\">LOGIN</a>";
}


%>
</head>
<body>
<section id="ext_menu-1">
    <nav class="navbar navbar-dropdown navbar-fixed-top">
        <div class="container">
            <div class="mbr-table">
                <div class="mbr-table-cell">
                    <div class="navbar-brand">
                        <a href="index.jsp" class="navbar-logo"><img src="assets/images/tumblr-static-filename-640-v2.gif" alt="Mobirise"></a>
                        <a class="navbar-caption" href="index.jsp">DPCS</a>
                    </div>

                </div>
                <div class="mbr-table-cell">

                    <button class="navbar-toggler pull-xs-right hidden-md-up" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar">
                        <div class="hamburger-icon"></div>
                    </button>

                    <ul class="nav-dropdown collapse pull-xs-right nav navbar-nav navbar-toggleable-sm" id="exCollapsingNavbar">
					<li class="nav-item"><a class="nav-link link" href="whatItIsAbout.jsp">OVERVIEW</a></li>
					<li class="nav-item"><a class="nav-link link" href="documentary.jsp">FEATURES</a></li>
  				    </ul>
                    <button hidden="" class="navbar-toggler navbar-close" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar">
                        <div class="close-icon"></div>
                    </button>

                </div>
            </div>

        </div>
    </nav>

</section>

<section class="engine"></section>
<section class="mbr-section mbr-section-hero mbr-section-full mbr-parallax-background mbr-section-with-arrow mbr-after-navbar" 
id="header1-0" style="background-image: url(assets/images/tumblr_n8owixhFQW1th0xgqo1_1280.jpg);">

    <div class="mbr-table-cell">
        <div class="container">
            <div class="row">
                <div class="mbr-section col-md-10 col-md-offset-1 text-xs-center">

                    <h1 class="mbr-section-title display-1"><p>&nbsp;Site Track</p></h1>
					<BR><BR><BR><BR>
				<font color="white">Statistics <font color="yellow">are like bikinis. What they reveal is suggestive,</br> but what they conceal is vital.
				</BR><B>-Aaron Levenstein</B>
				</font>

</BR>
</div>
</div>
</div>

</section>


  <script src="assets/web/assets/jquery/jquery.min.js"></script>
  <script src="assets/tether/tether.min.js"></script>
  <script src="assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="assets/smooth-scroll/SmoothScroll.js"></script>
  <script src="assets/jarallax/jarallax.js"></script>
  <script src="assets/viewportChecker/jquery.viewportchecker.js"></script>
  <script src="assets/dropdown/js/script.min.js"></script>
  <script src="assets/touchSwipe/jquery.touchSwipe.min.js"></script>
  <script src="assets/theme/js/script.js"></script>
  
  
  <input name="animation" type="hidden">
  </body>
</html>