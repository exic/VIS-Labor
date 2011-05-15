<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"  %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Produkt erstellen</title>
	<s:head/>
</head>
<body>
	<a href="<s:url action="forward_to_admin_start"/>">Admin Startseite</a>
	<br /><br />
	
	<s:text name="Bitte füllen Sie folgende Felder aus, um ein Produkt zu erstellen:" />
	 
	<s:form action="create_product">
		<s:textfield name="id" label="Produktnummer" size="20" required="true"/>
		<s:textfield name="label" label="Bezeichnung" size="20" required="true"/>
		<s:textfield name="description" label="Beschreibung" size="20" required="true"/>
		<s:textfield name="price" label="Preis" size="20" required="true"/>
		<s:textfield name="category" label="Kategorie" size="20" required="true"/>
		
		<s:submit value="Produkt erstellen"/>
	</s:form>
	 
	 <font color="red">
	 	<s:actionerror label="label" />
	 </font>
 
 </body>
</html>