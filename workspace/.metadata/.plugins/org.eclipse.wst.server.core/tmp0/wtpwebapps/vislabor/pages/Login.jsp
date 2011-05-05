<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"  %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Beispiel Login Seite</title>
	<s:head/>
</head>
<body>

	<s:text name="welcome.title" />
	 
	<s:form action="User_login" focusElement="username" >
		<s:textfield name="username" key="prompt.username" size="20" required="true"/>
		<s:password name="password" key="prompt.password" size="20" required="true"/><br>
		
		<s:submit method="execute" value="login" align="center"/>
	</s:form>
	 
	 <font color="red">
	 	<s:actionerror label="label" />
	 </font>
	 
 </body>
</html>