<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"  %>

<html >
	<head>
		<title >Willkommen Admin</title>
	</head>
	
	<body bgcolor="white">
	
		<font color="red">
			<s:actionmessage />
		</font>

		Sie sind eingeloggt als <s:property value="username"/>
		
		<br/>
		<br/>
		
		<font color="red">
		 	<s:actionerror label="label" />
		 </font>
		 
		
	</body>
</html>
