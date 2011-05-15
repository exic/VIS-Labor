<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"  %>

<html >
	<head>
		<title >Produktdetails</title>
	</head>
	
	<body bgcolor="white">
	
		<a href="<s:url action="forward_to_product_search"/>">Produkt suchen</a>	
		<br /><br />
		<table>
		<tr>
			<td>
				Produktnummer:
			</td>
			<td>
				<s:property value="product.id"/>
			</td>
		</tr>
		<tr>
			<td>
				Produktbezeichnung:
			</td>
			<td>
				<s:property value="product.label"/>
			</td>
		</tr>
		<tr>
			<td>
				Produktbeschreibung:
			</td>
			<td>
				<s:property value="product.description"/>
			</td>
		</tr>
		<tr>
			<td>
				Kategorie:
			</td>
			<td>
				<s:property value="product.category.label"/>
			</td>
		</tr>
		<tr>
			<td>
				Preis:
			</td>
			<td>
				<s:property value="product.price"/>
			</td>
		</tr>		
		</table>
	</body>
</html>
