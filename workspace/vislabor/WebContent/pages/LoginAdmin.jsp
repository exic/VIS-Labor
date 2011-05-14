<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"  %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Admin</title>
	<s:head/>
</head>
<body>
	<a href="<s:url action="forward_to_home"/>">Startseite</a>
	<br /><br />
	
	<s:text name="Bitte melden Sie sich mit Ihrem Benutzernamen und Ihrem Passwort an:" />
	 
	<s:form action="admin_login">
		<s:textfield name="username" label="Benutzername" size="20" required="true"/>
		<s:password name="password" label="Passwort" size="20" required="true"/>
		
		<s:submit value="Login"/>
	</s:form>
	 
	 <font color="red">
	 	<s:actionerror label="label" />
	 </font>
 
 </body>
</html>