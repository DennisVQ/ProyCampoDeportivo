<%@taglib prefix="libreria" uri="WEB-INF/libreria.tld"%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %> 
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<!DOCTYPE html >
<html>
<head>



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel=StyleSheet href="css/forms.css">
<title>Insert title here</title>
</head>
<body  background="images/slider/img-04.jpg">
<header>
<table>
<tr bgcolor="#27AE60">
	<td width="90%">
	<marquee><h2>Generar Alquiler</h2></marquee>
	</td>
	<td width="10%">
		<img src="images/logo.png" width="130px" height="100px" align="right">
	</td>
</tr>
</table>
</header>
<hr>
<section>
<form action="RegistrarCliente" method="post">
<center>
<fieldset style="width: 500px;">
<legend>Datos de Alquiler</legend>
<table>
	<tr>
		<td>Codigo de Reserva:</td>
		<td><input type="text" name="txtDni" placeholder="Ingrese Codigo" required maxlength="8"></td>
	 	
	  
	</tr>
	  <td ><input type="submit" value="Buscar"></td>
	<tr>
		<td>Cliente:</td>
		<td><input type="text" name="txtNombre" placeholder="Cliente" required maxlength="50"></td>
	</tr>
	
	<tr>
		<td>Fecha de Reserva:</td>
		<td><input type="text" name="txtApellido" placeholder="Fecha de Reserva" required maxlength="50"></td>
	</tr>
	
	<tr>
		<td>Horario de Reserva</td>
		<td><input type="text" name="txtDireccion" placeholder="Ingrese direccion" required maxlength="50"></td>
	</tr>
	
	
	<tr>
		<td>N° de Campo Deportivo</td>
		<td><input type="number" name="txtTelefono" placeholder="Ingrese Telefono" required maxlength="10"></td>
	</tr>
	 </table>
<input type="submit" value="Generar Alquiler">
<input type="button" value="Cancelar">
</fieldset>	
	
<fieldset style="width: 500px;">
<legend>Datos de Accesorio</legend>
<div class="container">
		<table class="table">
		
		<tr>
		<td>Accesorio:</td>
		<td><input type="text" name="txtDni" placeholder="" required maxlength="8"></td>

		 	
		<td>Cantidad:</td>
		<td><input type="text" name="txtNombre" placeholder="ingrese cantidad" required maxlength="50"></td>
	</tr>
	
	<tr>
		<td>Observacion:</td>
		<td><input type="text" name="txtApellido" placeholder="observacion" required maxlength="50"></td>
	</tr>
			<tr>
				<th>Código</th>
				<th>Descripcion</th>
				<th>Cantidad</th>
				<th>Observacion</th>
				<th></th>
				<th></th>
			</tr>
		</table>
	</div>
</fieldset>
</center>

</form>
</section>

</body>
</html>