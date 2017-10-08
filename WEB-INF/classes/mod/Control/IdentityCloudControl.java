package mod.Control;
import java.io.*;
import java.sql.*;
import java.util.*;
import java.text.*;
import mod.Utility.*;
import javax.servlet.*;
import javax.servlet.http.*;


// A German word for User Control.
public class IdentityCloudControl extends HttpServlet 
{

  private static String _ID = "_ID";
  private static String VERSION = ""; 
  private static String APP_ROOT = "/";
  private static String USER_MENU = "";
  private static String NEW_USER_MENU = "";
  private static String REQUEST_DISPATCH = "";
  private static int countRequestedUser = 1;
  private static final long serialVersionUID = 1L;
  private PooledIdentityAccess interactiveIdAccess;  
  private final String Form_Profile_PWD = "_Passcode";
  private final String Form_Profile_UserName = "_Codename";  
  

private static void jotted(String msg, Object... args) {
  System.out.println("<"+String.format(msg, args)+">");
  return;
}

public IdentityCloudControl(){
jotted( "IdentityCloudControl servlet construction and orientation, " + new java.util.Date().toString() );
}


public void init( ServletConfig config ) throws ServletException {

	  super.init(config);

	  jotted( "IdentityCloudControl " + new java.util.Date().toString() );

	  InputStream inputStream = this.getServletContext().getResourceAsStream("/WEB-INF/properties/rojo.properties");
	
		if(inputStream != null)
		{
			jotted( "Servlet initialization of PooledIdentityAccess with properties stream");

			this.interactiveIdAccess = new PooledIdentityAccess(inputStream);
		}		
        else
        {
            jotted( "IDControl NOT instantiated" );
        }		

	  VERSION = config.getInitParameter("VERSION");
	  jotted("VERSION: " + VERSION );
	  APP_ROOT = config.getInitParameter("APP_ROOT");
	  jotted("APP_ROOT: " + APP_ROOT );
	  USER_MENU = config.getInitParameter("USER_MENU");
	  jotted("USER_MENU: " + USER_MENU );
	  NEW_USER_MENU = config.getInitParameter("NEW_USER_MENU");
	  jotted("NEW_USER_MENU: " + NEW_USER_MENU );
	  REQUEST_DISPATCH = config.getInitParameter("REQUEST_DISPATCH");
      jotted( "IDControl REQUEST_DISPATCH: " + REQUEST_DISPATCH );	  
	  return ;
	}


protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println( "\t<doGet>\n" );
		doPost(request, response);
		return;
}


protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
	  String forward = "";  
	  boolean loginIdentified = false;	
	  mod.ValueObject.Identity postIdentity = null;	   	  
	  String _PassWord = (String)request.getParameter(Form_Profile_PWD);
	  String _UserName = (String)request.getParameter(Form_Profile_UserName);
	  Cookie dpcsCookie = new Cookie("DPCS_Form_User",Form_Profile_UserName);
	  System.out.println("\n\n\t<IdentityCloudControl.doPost with the "+request.getSession().getId()+" seesion>\n");
	  	  	
	   	if( hasValidFormName( _UserName ) == false )
    	{
			forward = NEW_USER_MENU ;
			jotted( "The user name is NOT valid: " + forward );	
    	} 
		else if( hasValidFormName( _UserName ) == true )
    	{
			postIdentity = evaluatePublicIdentity( request ) ;
			// TO-DO: This function ought to be returning the Identity;
			loginIdentified = this.interactiveIdAccess.matchUserCredentials( 
				postIdentity.getCodename(), 
				postIdentity.getPassword() 
				);

	    	forward = USER_MENU +"?rWho=" +postIdentity.getCodename() ;

			jotted( "Forward: " + forward );	
     	}

		if(loginIdentified) {
			request.getSession().setAttribute("PUBLIC_IDENTITY", postIdentity );
			dpcsCookie.setMaxAge( 30 * 60 );
			response.addCookie(dpcsCookie);
			cookieDrop( request );
        }
		else{
			jotted( "PUBLIC_IDENTITY is not identified" );
			forward = "/";
		}

		RequestDispatcher requestDispatcher = request .getRequestDispatcher("/"+forward);
		jotted( "<doPost Session Attribute, PUBLIC_IDENTITY, "+ postIdentity +">");
		jotted( "<doPost forward to "+forward+" >" );
     	//requestDispatcher.forward(request, response); 
		 response.sendRedirect(APP_ROOT+forward);
        return;
    }


    
	private boolean hasValidFormName( String userNameField )
	{
		boolean validStringFlag = true;

		if(userNameField == null || userNameField.equals(""))
		return false;

		jotted( "hasValidFormName: "+userNameField );

		if(userNameField==null||userNameField.equals("")||userNameField.trim().equals("")||userNameField.equals("username"))
    	{
			validStringFlag = false;

			jotted( "validFormName: "+validStringFlag );
    	}
    	else if(userNameField!=null)
    	{
	    	validStringFlag = true;

			jotted( "validFormName: "+validStringFlag );
    	}
    	
		return validStringFlag;		
	}


//PRE: There are no matching identities in the database table;
//OPERATE: Find the user and test the credentials;
//POST: no harm - no foul;
private boolean theUserMatches(final java.lang.String uName, final java.lang.String pWord) {
  boolean theUserMatch = false;  
  jotted("theUserMatches, " + uName);   
  mod.ValueObject.Identity iMatched = null;
  iMatched = interactiveIdAccess.getUserByUserName(uName);
  jotted("Identity, " + iMatched);  

  if(iMatched.getPassword().
  equals(pWord)) 
  return true;

  return theUserMatch;
}


//PRE: There are no matching identities in the database table; 
//OPERATE:
//POST:
private mod.ValueObject.Identity evaluatePublicIdentity( HttpServletRequest request ){

mod.ValueObject.Identity publicID = 
	new mod.ValueObject.Identity();

publicID.setColor("#000000") ;
String F_Profile_Passcode = (String)request.
	getParameter(Form_Profile_PWD);	
String F_Profile_UserName = (String)request.
	getParameter(Form_Profile_UserName);

publicID.setPassword(F_Profile_Passcode.trim());
publicID.setCodename(F_Profile_UserName.trim());
publicID.setCreateDate(new java.sql.Date(getLocalSystemTime())) ;
request.getSession().setAttribute("PUBLIC_IDENTITY",publicID.toString());
return publicID;
}
      
    
private String getRequestedContext( HttpServletRequest req ){
String theRequestedContext = "" ;
String serverName = req.getServerName();
int portNumber = req.getServerPort();
String contextPath = req.getContextPath();
theRequestedContext = serverName + ":" +portNumber + contextPath;
return theRequestedContext ;
}


private long getLocalSystemTime(){	
long tranxDateTime = 0 ;
GregorianCalendar currentCalendar = new java.util.GregorianCalendar();
tranxDateTime = currentCalendar .getTime().getTime();
return tranxDateTime;
}


private javax.servlet.http.Cookie cookieDrop( HttpServletRequest reqDough )
{
	//"CookieColor"
java.lang.String cookieDough = "";
javax.servlet.http.Cookie chip = null;

long cookieTimer = getLocalSystemTime();
reqDough.getSession().setAttribute("PUBLIC_COLORS", "#00EE00");

System.out.println(" Color for " + reqDough.getSession().getId() + ", " +
	reqDough.getSession().getAttribute("PUBLIC_COLORS"));

cookieDough = (String)reqDough.getParameter(Form_Profile_UserName);
chip = new javax.servlet.http.Cookie(cookieDough.trim(), new Long(cookieTimer).toString() );
return chip;
}


};