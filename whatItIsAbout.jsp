<!DOCTYPE html>
<html>
<head>
  <!-- Site made with Mobirise Website Builder v3.11.1, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v3.11.1, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" href="assets/images/tumblr-static-filename-640-v2.gif" type="image/x-icon">
  <meta name="description" content="Web Page Builder Description">
  <title>An Overview</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&amp;subset=latin">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
  <link rel="stylesheet" href="assets/bootstrap-material-design-font/css/material.css">
  <link rel="stylesheet" href="assets/tether/tether.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/animate.css/animate.min.css">
  <link rel="stylesheet" href="assets/dropdown/css/style.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
<%
java.lang.String identity = "";
java.lang.String greetings = null;

java.lang.String publicColor = "";
publicColor = (java.lang.String) session.getAttribute("PUBLIC_COLORS");
	
mod.ValueObject.Identity publicID = (mod.ValueObject.Identity)
session.getAttribute("PUBLIC_IDENTITY");

long tranxDateTime  = new java.util.GregorianCalendar().getTime().getTime();
java.sql.Timestamp theDate = new java.sql.Timestamp(tranxDateTime);   
if(publicColor==null) publicColor = "#000000";

if(publicID!=null) 
{	
	identity = "<font color=\"" +publicColor+ "\">" + publicID.getCodename() + ".</font>";
	greetings = publicID.getCodename();
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
                    <button hidden="" class="navbar-toggler navbar-close" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar">
                        <div class="close-icon"></div>
                    </button>

                </div>
            </div>

        </div>
    </nav>

</section>

<section class="engine"><a rel="external" href="https://mobirise.com">Website Builder</a></section>
<section class="mbr-section mbr-section-hero mbr-section-full mbr-parallax-background mbr-section-with-arrow mbr-after-navbar" id="header1-h" 
style="background-image: url(assets/images/12079579-1677995922414275-8485860469086984951-n-2000x2000.jpg);">

    

    <div class="mbr-table-cell">

        <div class="container">
            <div class="row">
                <div class="mbr-section col-md-10 col-md-offset-1 text-xs-center">

                    <h1 class="mbr-section-title display-1">We are an inclusive,<br> 
					award-winning, production &<BR> prestentation organization.</h1>
                    <p class="mbr-section-lead lead"><font size="12" color="white">
					Be a part of the excitement<%if(greetings!=null){%>,&nbsp;
					<font size="12" color="yellow"><%=greetings%></font>!					
					<%} else {%>.</p> <%}%>
					</font> 
					
					
                    <div class="mbr-section-btn">
					<%
					String buttx = "";
					if(publicID==null) buttx = "<a class=\"btn btn-lg btn-primary\" href=\"registration.jsp\">REGISTER</a>"; 
					%>
					
					<%=buttx%>
					<a class="btn btn-lg btn-white btn-white-outline" href="eventually.jsp">EVENTS</a>
					</BR>
					</BR>
					<P>
					<%
					String strangerThings = "<a href=\"identify.jsp\">LOGIN</a>";
					if(publicID != null) strangerThings = "<a href=\"index.jsp\">HOME</a></BR>" ;
					%>
					
					<%=strangerThings%>
					</P>
					</div>
					
                </div>
            </div>
        </div>
    </div>

    <div class="mbr-arrow mbr-arrow-floating" aria-hidden="true"><a href="#next"><i class="mbr-arrow-icon"></i></a></div>

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