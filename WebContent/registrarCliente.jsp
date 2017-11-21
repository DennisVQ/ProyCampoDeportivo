<%@taglib prefix="libreria" uri="WEB-INF/libreria.tld"%>
<!DOCTYPE html >
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel=StyleSheet href="css/forms.css">
<title>Insert title here</title>
</head>
<body background="images/slider/img-04.jpg" >
<header>
<table>

<tr bgcolor="#27AE60">
	<td width="90%">
	<marquee><h2>Registro de Clientes</h2></marquee>
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
<fieldset style="width: 250px;">
<legend>Datos de cliente</legend>
<table>
	<tr>
		<td>DNI:</td>
		<td><input type="text" name="txtDni" placeholder="Ingrese DNI" required maxlength="8"></td>
	</tr>
	
	<tr>
		<td>Nombre:</td>
		<td><input type="text" name="txtNombre" placeholder="Ingrese Nombre" required maxlength="50"></td>
	</tr>
	
	<tr>
		<td>Apellido:</td>
		<td><input type="text" name="txtApellido" placeholder="Ingrese Apellido" required maxlength="50"></td>
	</tr>
	
	<tr>
		<td>Direccion</td>
		<td><input type="text" name="txtDireccion" placeholder="Ingrese direccion" required maxlength="50"></td>
	</tr>
	
	
	<tr>
		<td>Telefono</td>
		<td><input type="number" name="txtTelefono" placeholder="Ingrese Telefono" required maxlength="10"></td>
	</tr>
	
	<tr>
		<td>Correo</td>
		<td><input type="email" name="txtCorreo" placeholder="Ingrese Correo" required></td>
	</tr>
	
	<tr>
		<td>Contraseña</td>
		<td><input type="password" name="txtContrasenia" placeholder="Ingrese la contraseña" required></td>
	</tr>
 </table>
<input type="submit" value="Registrar">
<input type="button" value="Cancelar">
</fieldset>
</center>
</form>
</section>

</body>
</html>