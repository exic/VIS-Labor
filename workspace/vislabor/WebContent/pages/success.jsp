<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"  %>


<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title><s:text name="welcome.title"/></title>
	</head>
	<body bgcolor="white">
		
		<p><s:text name="welcome.message"/></p>
		<p><s:text name="welcome.address"/>
		<s:property value="username"/> </p>
		
		<p><s:property value="lastname"/>
		<s:property value="firstname"/></p>
		
		<p><s:text name="welcome.success"/>
	</body>
</html>
