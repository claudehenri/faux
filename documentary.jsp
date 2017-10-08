<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" href="assets/images/tumblr-static-filename-640-v2.gif" type="image/x-icon">
  <meta name="description" content="Real Reels">
  <title>Documentary</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&amp;subset=latin">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
  <link rel="stylesheet" href="assets/bootstrap-material-design-font/css/material.css">
  <link rel="stylesheet" href="assets/tether/tether.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/dropdown/css/style.css">
  <link rel="stylesheet" href="assets/animate.css/animate.min.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
<%
java.lang.String publicColor = "";
java.lang.String LoggedState = "";
java.lang.String identifiedAs = "";
mod.ValueObject.Identity publicID = null;

publicColor = (java.lang.String) session.getAttribute("PUBLIC_COLORS");
publicID = (mod.ValueObject.Identity)session.getAttribute("PUBLIC_IDENTITY");

if(publicColor==null) publicColor ="#000000";
if(publicID != null ) identifiedAs = "<font color=\"white\">,</font> " + publicID.getCodename();
System.out.println("\tThe PUBLIC_IDENTITY is " + identifiedAs);
LoggedState = (String) request.getParameter("LoggedOut");
%>
  
  
</head>
<body>
<section id="ext_menu-2">

    <nav class="navbar navbar-dropdown navbar-fixed-top">
        <div class="container">

            <div class="mbr-table">
                <div class="mbr-table-cell">

                    <div class="navbar-brand">
                        <a href="index.jsp" class="navbar-logo"><img src="assets/images/tumblr-static-filename-640-v2.gif"></a>
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
					<li class="nav-item nav-btn"><a class="nav-link btn btn-primary" href="eventually.jsp">EVENTS</a></li></ul>
                    <button hidden="" class="navbar-toggler navbar-close" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar">
                        <div class="close-icon"></div>
                    </button>

                </div>
            </div>

        </div>
    </nav>

</section>

<section class="engine">
</section><section class="mbr-slider mbr-section mbr-section__container carousel slide mbr-section-nopadding mbr-after-navbar" data-ride="carousel" data-keyboard="false" data-wrap="true" data-pause="false" data-interval="5000" id="slider3-3">
    <div>
        <div>
            <div>
                <ol class="carousel-indicators">
                    <li data-app-prevent-settings="" data-target="#slider3-3" data-slide-to="0" class="active"></li><li data-app-prevent-settings="" data-target="#slider3-3" class="" data-slide-to="1"></li><li data-app-prevent-settings="" data-target="#slider3-3" data-slide-to="2"></li><li data-app-prevent-settings="" data-target="#slider3-3" data-slide-to="3"></li><li data-app-prevent-settings="" data-target="#slider3-3" data-slide-to="4"></li><li data-app-prevent-settings="" data-target="#slider3-3" data-slide-to="5"></li><li data-app-prevent-settings="" data-target="#slider3-3" data-slide-to="6"></li><li data-app-prevent-settings="" data-target="#slider3-3" data-slide-to="7"></li><li data-app-prevent-settings="" data-target="#slider3-3" data-slide-to="8"></li><li data-app-prevent-settings="" data-target="#slider3-3" data-slide-to="9"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <div class="mbr-section mbr-section-hero carousel-item dark center mbr-section-full active" data-bg-video-slide="false" 
					style="background-image: url(assets/images/buildingcluster1photoshopbwuplode-2000x1333.jpg);">
                        <div class="mbr-table-cell">
                            <div class="mbr-overlay"></div>
                            <div class="container-slide container">
                                
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-2 text-xs-center">
                                        <h2 class="mbr-section-title display-1">Welcome to Reels of Reality<font color="<%=publicColor%>"><%=identifiedAs%></font>.</h2>
                                        <p class="mbr-section-lead lead">Contemporary Documentary&nbsp;</p>

                                        <div class="mbr-section-btn"> <a class="btn btn-lg btn-white btn-white-outline" href="eventually.jsp">Event Info</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><div class="mbr-section mbr-section-hero carousel-item dark center mbr-section-full" data-bg-video-slide="false" 
					style="background-image: url(assets/images/tumblr-nb8c5qbmy51th0xgqo1-2000x1336.jpg);">
                        <div class="mbr-table-cell">
                            <div class="mbr-overlay"></div>
                            <div class="container-slide container">
                                
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-1">
                                        <h2 class="mbr-section-title display-1">"Faux Diversity"</h2>
                                        <p class="mbr-section-lead lead">Another Point of View</p>

                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
					<div class="mbr-section mbr-section-hero carousel-item dark center mbr-section-full" data-bg-video-slide="false" 
					style="background-image: url(assets/images/4b0bdcd11-2000x1334.jpg);">
                        <div class="mbr-table-cell">
                            <div class="mbr-overlay"></div>
                            <div class="container-slide container">
                                
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3 text-xs-right">
                                        <h2 class="mbr-section-title display-1">"Dog Parks & Coffee Shops"</h2>
                                        <p class="mbr-section-lead lead">Documentary</p>

                                        <div class="mbr-section-btn"> <a class="btn btn-lg btn-white btn-white-outline" href="retail.jsp">Ticket Info</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
					<div class="mbr-section mbr-section-hero carousel-item dark center mbr-section-full" data-bg-video-slide="false" 
					style="background-image: url(assets/images/tumblr_n8owixhFQW1th0xgqo1_1280.jpg);">
                        <div class="mbr-table-cell">
                            <div class="mbr-overlay"></div>
                            <div class="container-slide container">
                                
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3 text-xs-right">
                                        <h2 class="mbr-section-title display-1">"An Unexpected Journey"</h2>
                                        <p class="mbr-section-lead lead">(Latest) Documentary</p>

                                        <div class="mbr-section-btn"> <a class="btn btn-lg btn-white btn-white-outline" href="/">Ticket Info</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><div class="mbr-section mbr-section-hero carousel-item dark center mbr-section-full" data-bg-video-slide="false" 
					style="background-image: url(assets/images/tumblr-n8owh4nzqa1th0xgqo1-2000x1334.jpg);">
                        <div class="mbr-table-cell">
                            <div class="mbr-overlay"></div>
                            <div class="container-slide container">
                                
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3 text-xs-right">
                                        <h2 class="mbr-section-title display-1">"Reality"</h2>
                                        <p class="mbr-section-lead lead">truth</p>

                                        <div class="mbr-section-btn"> <a class="btn btn-lg btn-white btn-white-outline" href="index.jsp">HOME</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <a data-app-prevent-settings="" class="left carousel-control" role="button" data-slide="prev" href="#slider3-3">
                    <span class="icon-prev" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a data-app-prevent-settings="" class="right carousel-control" role="button" data-slide="next" href="#slider3-3">
                    <span class="icon-next" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </div>
</section>


  <script src="assets/web/assets/jquery/jquery.min.js"></script>
  <script src="assets/tether/tether.min.js"></script>
  <script src="assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="assets/smooth-scroll/SmoothScroll.js"></script>
  <script src="assets/dropdown/js/script.min.js"></script>
  <script src="assets/touchSwipe/jquery.touchSwipe.min.js"></script>
  <script src="assets/viewportChecker/jquery.viewportchecker.js"></script>
  <script src="assets/bootstrap-carousel-swipe/bootstrap-carousel-swipe.js"></script>
  <script src="assets/jquery-mb-ytplayer/jquery.mb.YTPlayer.min.js"></script>
  <script src="assets/theme/js/script.js"></script>
  <script src="assets/mobirise-slider-video/script.js"></script>
  
  
  <input name="animation" type="hidden">
  </body>
</html>