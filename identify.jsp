<!DOCTYPE html>
<html>
<head>
<!-- identify.jsp -->
<script type="text/javascript">
function validate_required(field,alerttxt)
{
with (field)
  {
  if (value==null||value=="")
    {
    alert(alerttxt);
    return false;
    }
  else
    {
    return true;
    }
  }
}


function validate_form(thisform)
{
  
  with (thisform)
  {
	  if (validate_required(_Codename,"Please choose a User name to submit.")==false)
  	  {
	   _Codename.focus();
	   return false;
      }
	  
	  if (validate_required(_Passcode,"Please choose a Password to submit.")==false)
  	  {
	   _Passcode.focus();
	   return false;
      }	  
  }
  
}
</script>
  <!-- Site made with Mobirise Website Builder v3.11.1, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v3.11.1, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" href="assets/images/tumblr-static-filename-640-v2.gif" type="image/x-icon">
  <meta name="description" content="Web Builder Description">
  <title>Join Us</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&amp;subset=latin">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
  <!--
  -->
  <link rel="stylesheet" href="assets/bootstrap-material-design-font/css/material.css">
  <link rel="stylesheet" href="assets/tether/tether.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/dropdown/css/style.css">
  <link rel="stylesheet" href="assets/animate.css/animate.min.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
</head>
<body>
<%
System.out.println("\n\t<The dpcs App is waiting for user identity: "+new java.sql.Timestamp(System.currentTimeMillis())+">\n");
%>

<section id="ext_menu-4">

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

<section class="engine"><a rel="external" href="https://mobirise.com">Site Builder</a></section>
<section class="mbr-section mbr-section-hero mbr-section-full mbr-parallax-background mbr-section-with-arrow mbr-after-navbar" id="header1-8" style="background-image: url(assets/images/tumblr-np8s95wxxw1s4fz4bo1.gif);">

    

    <div class="mbr-table-cell">

        <div class="container">
            <div class="row">
                <div class="mbr-section col-md-10 col-md-offset-1 text-xs-center">

                    <h1 class="mbr-section-title display-1">Who?</h1>
                    <p class="mbr-section-lead lead">
<TABLE align=center>
<TR>
<TD>
<div>
     
<TABLE align=center>
<TBODY>
<FORM action="dpcs/IdentityEvaluationControl" id="thisform" name="thisform" onsubmit="return validate_form(this)"  method=post>

<TR>
<TD> 
<INPUT class=input placeholder="codename" name=_Codename 
onmouseover="Tip('Your (7 character) user id')" onmouseout="UnTip()">
</TD>
</TR>

<TR> 
<TD>
<INPUT type="password" class=input name=_Passcode placeholder="password"
onmouseover="Tip('your (13 character) password')" onmouseout="UnTip()">
</TD>
</TR>
	
	
</TR>
<INPUT type=hidden value=date name=system> 
<INPUT type=hidden value=yes name=cookiesetonlogin> 	  
</TBODY>
</TABLE>
</div>					
</p>

<div class="mbr-section-btn">

<a class="btn btn-lg btn-white btn-white-outline" href="identify.jsp">Clear</a> 
<INPUT TYPE="SUBMIT" VALUE="Continue" class="btn btn-lg btn-info">
</INPUT>

</div>
</BR>

<P>
<a href="registration.jsp">REGISTER</a>
</P>
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
  <script src="assets/dropdown/js/script.min.js"></script>
  <script src="assets/touchSwipe/jquery.touchSwipe.min.js"></script>
  <script src="assets/viewportChecker/jquery.viewportchecker.js"></script>
  <script src="assets/jarallax/jarallax.js"></script>
  <script src="assets/theme/js/script.js"></script>
  
  
  <input name="animation" type="hidden">
  </body>
</html>