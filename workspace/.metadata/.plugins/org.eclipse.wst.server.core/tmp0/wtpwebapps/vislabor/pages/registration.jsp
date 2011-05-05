<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"  %>

<html>
	<head>
		<title><s:text name="welcome.title"/></title>
	</head>
	
	<body bgcolor="white">
		<p><s:text name="registration.message"/></p>
		<s:property value="username"/>
		
		<font color="red">
	 		<s:actionerror label="label" />
	 	</font>
	
	</body>
</html>
