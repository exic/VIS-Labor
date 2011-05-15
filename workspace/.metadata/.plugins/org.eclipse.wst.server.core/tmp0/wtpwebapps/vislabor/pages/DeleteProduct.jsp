<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"  %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Produkt löschen</title>
	<s:head/>
</head>
<body>
	<a href="<s:url action="forward_to_admin_start"/>">Admin Startseite</a>
	<br /><br />
	
	<s:text name="Bitte geben Sie die Produktnummer an, um das Produkt zu löschen:" />
	 
	<s:form action="delete_product">
		<s:textfield name="id" label="Produktnummer" size="20" required="true"/>
		
		<s:submit value="Produkt löschen"/>
	</s:form>
	 
	 <font color="red">
	 	<s:actionerror label="label" />
	 </font>
 
 </body>
</html>