<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %> 
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<sb:head />
<sj:head jqueryui="true"/>
</head>

<body>

	<s:actionerror theme="bootstrap"/>
    <s:actionmessage theme="bootstrap"/>
    <s:fielderror theme="bootstrap"/>
	
	<s:form action="listarxFil">
		 <s:url id="idCategoria" action="cargarCombo" />
			<sj:select 	href="%{idCategoria}" 
					label="Categoría"
					name="cat"
					list="lstCategoria" 
					listKey="descripcion" 
					listValue="descripcion" 
					headerKey="-1" 
					headerValue=" [Seleccione] "/>
		<s:submit value="Consultar" />
	</s:form>

	<div  class="container">
		<table class="table">
			<tr>
				<th>Código</th>
				<th>Producto</th>
				<th>Precio</th>
				<th>Stock</th>
				<th>Categoria</th>
				<th>Fecha</th>
			</tr>
			<s:iterator value="lstProductos">
				<tr class="grilla_campo">
					<td><s:property value="codigo" /></td>
					<td><s:property value="nombre" /></td>
					<td><s:property value="precio" /></td>
					<td><s:property value="stock" /></td>
					<td><s:property value="categoria" /></td>
					<td><s:property value="fechareg" /></td>
				</tr>
			</s:iterator>
		</table>
	</div>
	

</body>
</html>