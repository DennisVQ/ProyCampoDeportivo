<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<sb:head/>
</head>
<body>
	<s:actionerror theme="bootstrap"/>
    <s:actionmessage theme="bootstrap"/>
    <s:fielderror theme="bootstrap"/>
    
    
    
    
     <s:form action="compra" enctype="multipart/form-data" theme="bootstrap" cssClass="form-horizontal"
            label="Venta Producto"> 
            
         <div align="left">
         <img alt="" src="img/<s:property value="codigo"/>.png" width="200px" height="250px">
         </div>
         <hr>
        <s:textfield
                label="Código"
                name="producto.codigo"
                tooltip="Codigo del Producto"
                readonly="true"/>
        
        <s:textfield
                label="Nombre"
                name="producto.nombre"/>
 
		 <s:textfield type="number"
		 label="Cantidad"
		 name="prodVendido.cantidad"
		 tooltip="Cantidad a comprar"/>

        <s:submit cssClass="btn" value="Comprar" />
    </s:form>
</body>
</html>