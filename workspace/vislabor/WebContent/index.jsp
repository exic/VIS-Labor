<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"  %>

<html>
	<head>
	    <title >Shop der Gruppe 22</title>
	</head>
	<body>
		<a href="<s:url action="forward_to_login"/>">Login</a> -
		<a href="<s:url action="forward_to_register"/>">Registrieren</a> -
		<a href="<s:url action="forward_to_admin"/>">Admin</a>
		<br /><br />
		Willkommen im Shop der Gruppe 22
	</body>
</html>
