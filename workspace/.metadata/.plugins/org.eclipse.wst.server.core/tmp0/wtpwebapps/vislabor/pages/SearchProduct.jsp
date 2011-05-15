<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"  %>

<html >
	<head>
		<title >Produkt suchen</title>
	</head>
	
	<body bgcolor="white">
	
		<a href="<s:url action="forward_to_user_start"/>">User Startseite</a>	
		<br /><br />
	
		Bitte geben Sie in EINEM Feld einen Suchbegriff ein.<br />
		z.B. in Preis: <br/>
		unter 100 (für alle Produkte unter 100 Euro)<br />
		ueber 100 (für alle Produkte über 100 Euro)<br />
		zwischen 100 und 2000 (für alle Produkte zwischen 100 und 2000 Euro)<br />
	 
		<s:form action="search_product">
			<s:textfield name="category" label="Kategorie" size="20" />
			<s:textfield name="label" label="Bezeichnung" size="20" />
			<s:textfield name="description" label="Beschreibung" size="20" />
			<s:textfield name="price" label="Preis" size="20" />
			
			<s:submit value="Suchen"/>
		</s:form>
		
		<h2>Produkte</h2>
		<table>
		<tr>
		    <th>Produktnummer</th>
		    <th>Kategorie</th>
		    <th>Bezeichnung</th>
		    <th>Preis in Euro</th>
		    <th></th>
		</tr>
		<s:form action="view">
		<s:iterator value="productList" var="product">
		    <tr>
		        <td><s:property value="id"/></td>
		        <td><s:property value="category.label"/></td>
		        <td><s:property value="label"/></td>
		        <td><s:property value="price"/></td>
		        <td><a href="view?id=<s:property value="id"/>">Detailansicht</a></td>
		    </tr>
		</s:iterator>
		</s:form>
		</table>
	 
		 <font color="red">
		 	<s:actionerror label="label" />
		 </font>
	</body>
</html>
